Instalación de MediaWiki
========================

La instalación de MediaWiki es un proceso relativamente sencillo, y con las instrucciones de la [web oficial](http://www.mediawiki.org/wiki/Installation) se puede hacer la mayor parte del proceso. De todos modos, hay unos cuantos detalles que conviene documentar.

Requisitos técnicos
-------------------

Para instalar MediaWiki tal y como lo tuvimos en el curso, necesitaremos un servidor con PHP y MySQL. El sistema operativo y el servidor web concretos no son tan importantes, pero en nuestro caso usamos Linux y Apache, en la configuración LAMP (Linux + Apache + MySQL + PHP) tradicional. En particular, disponíamos de PHP 5.2.17 y MySQL 5.0.95. PHP estaba compilado con soporte para ImageMagick (importante para thumbnails y otros aspectos de gestión de imágenes), y */usr/bin/diff3* estaba disponible para las comparaciones entre versiones del wiki.

Esta guía no cubre la instalación del servidor LAMP, ya que esa parte la cubren bien los gestores de paquetes y servicios de alojamiento disponibles. En caso de Windows y alojamiento propio lo más cómodo es usar un paquete como [XAMPP](http://www.apachefriends.org/en/xampp.html).

Preparación de la base de datos
-------------------------------

La creación de la base de datos depende del servicio de alojamiento. En el caso de TMDHosting, había que acceder al CPanel y seguir el _MySQL Database Wizard_ para crear la base de datos y un usuario asociado. Para la instalación hará falta que tenga permisos completos, pero tras la instalación sería recomendable reducirle los privilegios a los mínimos necesarios: *SELECT*, *UPDATE*, *INSERT* y *DELETE*. Por desgracia, la forma en que está configurado TMDHosting no permite hacer eso.

A continuación deberíamos lanzar la importación de la copia de seguridad que tuviéramos de la base de datos, asegurándonos que el nombre de la base de datos del volcado coincida con el de la que acabamos de crear. Si no tenemos una copia de seguridad, podemos seguir sin más.

Descarga y desempaquetado de MediaWiki
--------------------------------------

En este curso utilizamos [MediaWiki 1.19.1](http://download.wikimedia.org/mediawiki/1.19/mediawiki-1.19.1.tar.gz) y la instantánea correspondiente de la [extensión Cite](https://www.mediawiki.org/wiki/Extension:Cite/Cite.php). Hemos de descargar ambas distribuciones a nuestro disco duro, y ahora ejecutaremos estas órdenes:

    $ cd /tmp
    $ tar xzf ~/Downloads/mediawiki-1.19.1.tar.gz
    $ mv mediawiki-1.19.1 mediawiki
    $ cd mediawiki/extensions
    $ tar xzf ~/Downloads/Cite-MW1.19-110961.tar.gz

Con estas órdenes deberíamos tener en */tmp/mediawiki* todo lo que necesitamos. Tenemos que subirlo al servidor mediante un cliente FTP o rsync habitual, y asegurarnos que los permisos estén bien puestos (los ficheros deberían tener máscara 644, y los directorios máscara 755). Si el alojamiento nos lo permite, habría que comprobar si el usuario es el correcto. En TMDHosting no hizo falta, pero en un servidor casero basado en Debian deberían ser propiedad de *www-data*.

Instalación de MediaWiki
------------------------

Ahora tenemos que visitar nuestro wiki en un navegador. Suponiendo que transferimos */tmp/mediawiki* al directorio *mediawiki* de nuestro servicio de alojamiento, y que la web principal está disponible en *www.cursowikis2012.com*, habría que abrir esta URL:

    http://www.cursowikis2012.com/mediawiki/index.php

Si no hemos realizado la instalación previamente, MediaWiki nos mostrará un asistente en que iremos detallando la configuración del wiki y daremos algunos datos confidenciales (como la clave de la base de datos). También se generarán identificadores únicos para sus API.

Debería generar un fichero *LocalSettings.php* relativamente parecido al que hay en este mismo directorio. Algunos detalles:

* Deberíamos activar la subida de ficheros, para el ejercicio de subida de imágenes.
* Tenemos que indicar que MediaWiki está instalado en */mediawiki*, para que las URL generadas sean correctas.
* Hay que indicar que la extensión usada para los guiones PHP es *.phtml*.
* Hay que especificar que se usará MySQL (normalmente en *localhost*), dando el usuario y clave que creamos antes con *phpMySQLAdmin*. El motor InnoDB es el ideal, ya que evita problemas de consistencia.
* Se debe especificar castellano como idioma del wiki.
* Se debería activar la extensión *WikiEditor*, que es el que da la botonera nueva de MediaWiki.

Este fichero debería subirse al directorio donde está el *index.php* de MediaWiki, y su máscara debería ser 600, para evitar accesos indebidos. Una vez se suba, MediaWiki ya debería funcionar correctamente accediendo a la misma dirección que antes. Si se restauró la copia de seguridad de la base de datos, casi todo debería estar disponible de nuevo. Sólo faltan algunos retoques.

Retoques sobre configuración estándar
-------------------------------------

Hay unas cuantas cosas que tendremos que añadir manualmente al final de *LocalSettings.php*:

* Carga de la extensión *Cite*:

        # Load the Cite extension for footnotes
        require_once("$IP/extensions/Cite/Cite.php");

* Activar la botonera nueva por omisión:

        $wgDefaultUserOptions['usebetatoolbar'] = 1;
        $wgDefaultUserOptions['usebetatoolbar-cgd'] = 1;
        $wgDefaultUserOptions['wikieditor-preview'] = 1;

* Reorganizar los permisos de forma que sólo los usuarios añadidos manualmente al grupo de "Aprobados" puedan editar:

        # Only approved users and sysops can edit pages and create content
        $wgGroupPermissions['*']['read']       = true;
        $wgGroupPermissions['*']['edit']       = false;
        $wgGroupPermissions['*']['createtalk'] = false;
        $wgGroupPermissions['*']['createpage'] = false;
        $wgGroupPermissions['*']['writeapi']   = false;
        
        $wgGroupPermissions['user']['read']       = false;
        $wgGroupPermissions['user']['edit']       = false;
        $wgGroupPermissions['user']['createtalk'] = false;
        $wgGroupPermissions['user']['createpage'] = false;
        $wgGroupPermissions['user']['writeapi']   = false;
        $wgGroupPermissions['user']['sendemail']  = false;
        $wgGroupPermissions['user']['minoredit']  = false;
        $wgGroupPermissions['user']['movefile']   = false;
        $wgGroupPermissions['user']['move-rootuserpages'] = false;
        $wgGroupPermissions['user']['purge']           = false;
        $wgGroupPermissions['user']['reupload-shared'] = false;
        $wgGroupPermissions['user']['upload']          = false;
        $wgGroupPermissions['user']['reupload']        = false;
        $wgGroupPermissions['user']['move']            = false;
        $wgGroupPermissions['user']['move-subpages']   = false;
        
        $wgGroupPermissions['autoconfirmed']['autoconfirmed'] = false;
        
        $wgGroupPermissions['sysop']['edit']       = true;
        $wgGroupPermissions['sysop']['createtalk'] = true;
        $wgGroupPermissions['sysop']['createpage'] = true;
        $wgGroupPermissions['sysop']['writeapi']   = true;
        $wgGroupPermissions['sysop']['sendemail']  = true;
        $wgGroupPermissions['sysop']['minoredit']  = true;
        $wgGroupPermissions['sysop']['movefile']   = true;
        $wgGroupPermissions['sysop']['move-rootuserpages'] = true;
        $wgGroupPermissions['sysop']['purge']           = true;
        $wgGroupPermissions['sysop']['reupload-shared'] = true;
        $wgGroupPermissions['sysop']['upload']          = true;
        $wgGroupPermissions['sysop']['reupload']        = true;
        $wgGroupPermissions['sysop']['move']            = true;
        $wgGroupPermissions['sysop']['move-subpages']   = true;
        
        $wgGroupPermissions['Aprobados']['edit']       = true;
        $wgGroupPermissions['Aprobados']['createtalk'] = true;
        $wgGroupPermissions['Aprobados']['createpage'] = true;
        $wgGroupPermissions['Aprobados']['writeapi']   = true;
        $wgGroupPermissions['Aprobados']['sendemail']  = true;
        $wgGroupPermissions['Aprobados']['minoredit']  = true;
        $wgGroupPermissions['Aprobados']['movefile']   = true;
        $wgGroupPermissions['Aprobados']['move-rootuserpages'] = true;
        $wgGroupPermissions['Aprobados']['purge']           = true;
        $wgGroupPermissions['Aprobados']['reupload-shared'] = true;
        $wgGroupPermissions['Aprobados']['upload']          = true;
        $wgGroupPermissions['Aprobados']['reupload']        = true;
        $wgGroupPermissions['Aprobados']['move']            = true;
        $wgGroupPermissions['Aprobados']['move-subpages']   = true;

* Cambiar la zona horaria por omisión a "Europa/Madrid":

        # Set Default Timezone
        $wgLocaltimezone = "Europe/Madrid";
        $oldtz = getenv("TZ");
        putenv("TZ=$wgLocaltimezone");
        # Versions before 1.7.0 used $wgLocalTZoffset as hours.
        # After 1.7.0 offset as minutes
        $wgLocalTZoffset = date("Z") / 60;
        putenv("TZ=$oldtz");

Gestión de usuarios
-------------------

Para añadir usuarios, sólo tenemos que usar el formulario de registro habitual.

Para aprobarlos, es necesario acceder a "Páginas especiales → Configuración de permisos de usuarios", buscar al usuario en cuestión y añadirle al grupo "Aprobados".
