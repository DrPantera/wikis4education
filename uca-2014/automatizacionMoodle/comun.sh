#
# Experimento de automatización de ediciones de wikis Moodle (funciones comunes)
# Copyright (C) 2014 Antonio García-Domínguez
# Licenciado bajo la GPLv3 o superior
#
# NOTA: para que funcione mejor, es recomendable que se permita el acceso
# por invitado a esos wikis, de forma que el guión pueda visitar todas las
# páginas y así dejar que Moodle recalcule ciertos valores derivados.
#

MYSQL_USER=root
MYSQL_PASSWORD=root
MOODLE_DB=moodle
MOODLE_BASEURL=http://192.168.2.109/moodle

moodlesql() {
  # -r: raw
  # -N: no nombrar columnas
  mysql -N -r -u "$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MOODLE_DB" $@
}

obtenerIdPagina() {
  T_PAGINA="$1"

  moodlesql <<EOF
select id
from mdl_wiki_pages
where subwikiid = $ID_SUBWIKI and title = '$T_PAGINA';
EOF
}

obtenerVersionPagina() {
  ID_PAGINA=$1

  moodlesql <<EOF
select max(version)
from mdl_wiki_versions
where pageid = $ID_PAGINA;
EOF
}

listarPaginasWiki() {
  moodlesql <<EOF
select id
from mdl_wiki_pages
where subwikiid = $ID_SUBWIKI
EOF
}

paginaExiste() {
  EXISTE=$(moodlesql <<EOF
SELECT 1
FROM mdl_wiki_pages
WHERE subwikiid = $ID_SUBWIKI AND title = '$1'
EOF
)
  [[ "$EXISTE" == 1 ]]
}

crearPagina() {
  ID_USER="$1"
  T_PAGINA="$2"
  FECHA="$3"

  moodlesql <<EOF
INSERT INTO mdl_wiki_pages
  (subwikiid, title, cachedcontent, timecreated, timemodified, timerendered, userid)
VALUES
  ($ID_SUBWIKI, '$T_PAGINA', '', $FECHA, $FECHA, $FECHA, $ID_USER)
;

SELECT last_insert_id();

INSERT INTO mdl_wiki_versions
  (pageid, content, contentformat, version, timecreated, userid)
VALUES
  (last_insert_id(), '', 'html', 0, $FECHA, $ID_USER)
;
EOF
}

obtenerIdUsuario() {
  moodlesql <<EOF
select id from mdl_user where username = '$1';
EOF
}

#### FUNCIONES DE ALTO NIVEL #################################

limpiarWiki() {
  for p in $(listarPaginasWiki "$ID_SUBWIKI"); do
    moodlesql <<EOF
DELETE FROM mdl_wiki_pages WHERE id = $p;
DELETE FROM mdl_wiki_versions WHERE pageid = $p;
DELETE FROM mdl_wiki_links WHERE frompageid = $p OR topageid = $p;
EOF
  done
}

visitarPaginasWiki() {
  for p in $(listarPaginasWiki "$ID_SUBWIKI"); do
    curl -s -L "$MOODLE_BASEURL/mod/wiki/view.php?pageid=$p" >/dev/null
  done
}

editarPagina() {
  ID_USER="$1"
  T_PAGINA="$2"

  if [[ "$#" -ge 3 ]]; then
    # Permite usar cosas como "tomorrow" o "last week" como fecha
    FECHA=$(date --date="$3" +%s)
  else
    FECHA=$(date +%s)
  fi

  if [[ "$#" -ge 4 ]]; then
    CONTENIDO="$4"
  else
    # Permite pasar documentos largos mediante heredocs
    CONTENIDO=$(cat)
  fi

  if paginaExiste "$T_PAGINA"; then
    ID_PAGINA=$(obtenerIdPagina "$T_PAGINA")
  else
    ID_PAGINA=$(crearPagina "$ID_USER" "$T_PAGINA" "$FECHA")
  fi

  VERSION_ACTUAL=$(obtenerVersionPagina $ID_PAGINA)
  VERSION_SIG=$((VERSION_ACTUAL + 1))

  moodlesql <<EOF
INSERT INTO mdl_wiki_versions
  (pageid, content, contentformat, version, timecreated, userid)
VALUES
  ($ID_PAGINA, '$CONTENIDO', 'html', $VERSION_SIG, $FECHA, $ID_USER)
;

UPDATE mdl_wiki_pages
SET cachedcontent = '$CONTENIDO'
WHERE id = $ID_PAGINA;
EOF
}
