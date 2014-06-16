#!/bin/bash

# Guión que vuelca un wiki en formato de un guión estilo comun.sh
# Copyright (C) 2014 Antonio García-Domínguez
# Licenciado bajo la GPLv3 o superior

source comun.sh

#### FUNCIONES UTILES ####################################


# En el contenido pueden venir saltos de línea y demás, por lo que hay que utilizar
# la salida XML de mysql.
edicionesWikiXML() {
  moodlesql -X <<SQL
SELECT p.title, v.version, v.timecreated, v.userid, v.content
FROM mdl_wiki_pages p
     JOIN mdl_wiki_versions v ON p.id = v.pageid
WHERE p.subwikiid = $ID_SUBWIKI AND v.version > 0
ORDER BY p.id, v.version
;
SQL
}

# Permite analizar código XML sencillo mediante magia negra de Bash :-). Cogido de:
# http://stackoverflow.com/questions/893585/how-to-parse-xml-in-bash
leerXML() {
  local IFS=\>
  read -d \< ENTITY CONTENT
  local ret=$?
  TAG_NAME=${ENTITY%% *}
  ATTRIBUTES=${ENTITY#* }
  return $ret
}

# Convierte los valores leídos a ejecuciones de editarPagina
generarEdiciones() {
  while leerXML; do
    case "$TAG_NAME" in
      field)
        eval local $ATTRIBUTES
        eval "$name=\"$CONTENT\""
        ;;
      /row)
        # Reinterpretamos las entidades XML que ha escapado mysql
        content=$(cat <<<"$content" | sed 's/&lt;/</g; s/&gt;/>/g;')

        # Generamos la llamada a editarPagina
        cat <<SH
editarPagina $userid "$title" "$(date --date=@$timecreated -Iseconds)" <<CONTENIDO
$content
CONTENIDO

SH
        ;;
    esac
  done
}

# Imprime la cabecera del guión
generarCabecera() {
  cat <<SH
#!/bin/bash

# Guión generado automáticamente por '$0 $ID_SUBWIKI' por $(whoami)@$(hostname), en $(date)

source comun.sh

if [[ "\$#" -ne 1 ]]; then
  echo "Uso: \$0 (id subwiki)"
  exit 1
fi

ID_SUBWIKI=\$1

limpiarWiki

SH
}

# Imprime el pie del guión
generarPie() {
cat <<SH

visitarPaginasWiki
SH
}

#### CUERPO PRINCIPAL ####################################

if [[ "$#" -ne 1 ]]; then
  echo "Uso: $0 (id en mdl_wiki_subwikis)"
  exit 1
fi

ID_SUBWIKI=$1

generarCabecera
edicionesWikiXML | generarEdiciones
generarPie
