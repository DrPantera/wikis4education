LEEME
=====

Esta es una pequeña utilidad hecha con Bash y el cliente de consola de MySQL
que permite rellenar wikis de Moodle automáticamnete, o volcarlos.

Preliminares
------------

Los usuarios y los wikis tienen que haber sido creados por adelantado, y `comun.sh`
tiene que tener las credenciales a la base de datos de Moodle y la URL base del
servidor. A la hora de rellenar wikis, el curso sobre el que se trabaja debería tener
habilitado el acceso por invitados sin tener que iniciar sesión.

Funciones para rellenar wikis
-----------------------------

Las funciones para rellenar wikis están definidas en comun.sh. Requieren definir
la variable de entorno ID_SUBWIKI al subwiki de mdl_wiki_subwikis con el id
apropiado. Son éstas:

- `limpiarWiki` retira todas las páginas y versiones del wiki.

- `visitarPaginasWiki` visita mediante curl a todas las páginas del wiki, para
  que Moodle rellene un par de tablas auxiliares sobre la marcha.

- `editarPagina` es la función principal: añade una edición a una página, creándola
  si no existía de antes. Tiene tres posibles usos (el más normal es el segundo):

  - `editarPagina id_usuario titulo < contenido` añade una edición con la fecha y hora
    actuales y el contenido leído por stdin a la página con título `titulo` de parte
    del usuario con ID `id_usuario`.

  - `editarPagina id_usuario titulo fecha < contenido` es como el anterior, pero permite
    personalizar la fecha. La sintaxis de las fechas es la de la sección "Date input
    formats" del manual Info de date(1). Por ejemplo, valen fechas como "now",
    "yesterday", "last Monday", "last Wed -1 week" o "2014-06-16T23:45:03+0200".

  - `editarPagina id_usuario titulo fecha contenido` permite poner el contenido como
    un argumento en vez de por stdin.

Guión para volcar wikis
-----------------------

En vez de escribir el código a mano, otra opción es usar el guión `volcarWiki.sh` para
volcar un wiki. Una vez se sabe el id de mdl_wiki_subwikis, sólo hay que ejecutar esto:

  ./volcarWiki.sh id_subwiki > wikiVolcado.sh
  chmod +x wikiVolcado.sh
  ./wikiVolcado.sh otro_id_subwiki

El guión generado tiene los mismos requisitos que en Preliminares. Lo bueno es que este
guión se puede pasar entre servidores, mantener bajo control de versiones y demás.
