#!/bin/bash

#
# Ejemplo 1 de automatización de ediciones de wikis Moodle
#

source comun.sh

if [[ "$#" != 1 ]]; then
  echo "Uso: $0 (id subwiki)"
  exit 1
fi

# ID_SUBWIKI es utilizado en las funciones de arriba para saber a qué wiki nos referimos
ID_SUBWIKI="$1"

# Un par de usuarios que hemos creado con anterioridad
ID_USER1="$(obtenerIdUsuario usuario1)"
ID_USER2="$(obtenerIdUsuario usuario2)"
ID_USER3="$(obtenerIdUsuario usuario3)"

limpiarWiki

editarPagina "$ID_USER3" "Wiki" <<EOF
<h1>Página principal.</h1>

<p>¡Bienvenido!</p>
EOF

editarPagina "$ID_USER1" "Página automática" "last Monday" <<EOF
Primera versión.
EOF

editarPagina "$ID_USER2" "Página automática" "last Tuesday" <<EOF
<p>Primera versión.</p>

<p>Y aquí añado algo.</p>
EOF

visitarPaginasWiki
