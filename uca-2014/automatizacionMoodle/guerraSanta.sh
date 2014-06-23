#!/bin/bash

# Guión generado automáticamente por './volcarWiki.sh 1' por antonio@Antonio-mint, en Mon Jun 23 00:26:32 CEST 2014

source comun.sh

if [[ "$#" -ne 1 ]]; then
  echo "Uso: $0 (id subwiki)"
  exit 1
fi

ID_SUBWIKI=$1

ID_USER1="$(obtenerIdUsuario usuario1)"
ID_USER2="$(obtenerIdUsuario usuario2)"
ID_USER3="$(obtenerIdUsuario usuario3)"

limpiarWiki

editarPagina "$ID_USER1" "Guerra Santa" "2014-03-04T17:11:18+0100" <<CONTENIDO
<p>La guerra santa es una guerra que se hace por motivos religiosos.</p>
CONTENIDO

editarPagina "$ID_USER2" "Guerra Santa" "2014-03-07T17:12:11+0100" <<CONTENIDO
<p>La guerra santa es una guerra que se hace por motivos religiosos  y que con frecuencia supone una recompensa espiritual para quienes participan o mueren en ella.</p>
CONTENIDO

editarPagina "$ID_USER3" "Guerra Santa" "2014-03-08T17:12:29+0100" <<CONTENIDO
<p>La guerra santa es una guerra que se hace por motivos religiosos, y que con frecuencia supone una recompensa espiritual para quienes participan o mueren en ella.</p>
CONTENIDO

editarPagina "$ID_USER1" "Guerra Santa" "2014-03-20T17:13:09+0100" <<CONTENIDO
<p>La guerra santa es una guerra que se hace por motivos religiosos, y que con frecuencia supone una recompensa espiritual para quienes participan o mueren en ella. Las guerras de religión de Francia, las cruzadas y la yihad islámica suelen presentarse popularmente como ejemplos de guerra santa.</p>
CONTENIDO

editarPagina "$ID_USER1" "Guerra Santa" "2014-03-21T17:14:13+0100" <<CONTENIDO
<p>La guerra santa es una guerra que se hace por motivos religiosos, y que con frecuencia supone una recompensa espiritual para quienes participan o mueren en ella. Las guerras de religión de Francia, las cruzadas y la yihad islámica suelen presentarse popularmente como ejemplos de guerra santa.</p>
<p>En los tiempos modernos se ha usado también como un modo de definir diferencias culturales e históricas entre combatientes sin que sea la religión necesariamente la causa principal (un ejemplo es el conflicto del Ulster).</p>
CONTENIDO

editarPagina "$ID_USER3" "Guerra Santa" "2014-03-24T17:14:29+0100" <<CONTENIDO
<p>La guerra santa es una guerra que se hace por motivos religiosos, y que con frecuencia supone una recompensa espiritual para quienes participan o mueren en ella. Las guerras de religión de Francia, las cruzadas y la yihad islámica suelen presentarse popularmente como ejemplos de guerra santa.</p>
<p>En los tiempos modernos se ha usado también como un modo de definir diferencias culturales e históricas entre combatientes, sin que sea la religión necesariamente la causa principal (un ejemplo es el conflicto del Ulster).</p>
CONTENIDO

editarPagina "$ID_USER2" "Guerra Santa" "2014-04-12T18:15:33+0200" <<CONTENIDO
<p>La guerra santa es una guerra que se hace por motivos religiosos, y que con frecuencia supone una recompensa espiritual para quienes participan o mueren en ella. Las guerras de religión de Francia, las cruzadas y la yihad islámica suelen presentarse popularmente como ejemplos de guerra santa.</p>
<p>En los tiempos modernos se ha usado también como un modo de definir diferencias culturales e históricas entre combatientes, sin que sea la religión necesariamente la causa principal (un ejemplo es el conflicto del Ulster).</p>
<p>Se ha utilizado la idea de «guerra santa» en épocas diversas y en numerosos conflictos, religiosos o no, normalmente para legitimar intereses geopolíticos o económicos.</p>
CONTENIDO

editarPagina "$ID_USER2" "Guerra Santa" "2014-04-15T18:17:03+0200" <<CONTENIDO
<p>La guerra santa es una guerra que se hace por motivos religiosos, y que con frecuencia supone una recompensa espiritual para quienes participan o mueren en ella. Las guerras de religión de Francia, las <a href=&amp;quot;http://es.wikipedia.org/wiki/Cruzada&amp;quot;>cruzadas</a> y la <a href=&amp;quot;http://es.wikipedia.org/wiki/Yihad&amp;quot;>yihad</a> islámica suelen presentarse popularmente como ejemplos de guerra santa.</p>
<p>En los tiempos modernos se ha usado también como un modo de definir diferencias culturales e históricas entre combatientes, sin que sea la religión necesariamente la causa principal (un ejemplo es el conflicto del Ulster).</p>
<p>Se ha utilizado la idea de «guerra santa» en épocas diversas y en numerosos conflictos, religiosos o no, normalmente para legitimar intereses geopolíticos o económicos.</p>
CONTENIDO

editarPagina "$ID_USER3" "Guerra Santa" "2014-04-16T18:17:45+0200" <<CONTENIDO
<h1>Introducción</h1>
<p>La guerra santa es una guerra que se hace por motivos religiosos, y que con frecuencia supone una recompensa espiritual para quienes participan o mueren en ella. Las guerras de religión de Francia, las <a href=&amp;quot;http://es.wikipedia.org/wiki/Cruzada&amp;quot;>cruzadas</a> y la <a href=&amp;quot;http://es.wikipedia.org/wiki/Yihad&amp;quot;>yihad</a> islámica suelen presentarse popularmente como ejemplos de guerra santa.</p>
<p>En los tiempos modernos se ha usado también como un modo de definir diferencias culturales e históricas entre combatientes, sin que sea la religión necesariamente la causa principal (un ejemplo es el conflicto del Ulster).</p>
<h1>Cristianismo</h1>
<p>Se ha utilizado la idea de «guerra santa» en épocas diversas y en numerosos conflictos, religiosos o no, normalmente para legitimar intereses geopolíticos o económicos.</p>
CONTENIDO

editarPagina "$ID_USER1" "Guerra Santa" "2014-04-18T18:20:41+0200" <<CONTENIDO
<h1>Introducción</h1>
<p>La guerra santa es una guerra que se hace por motivos religiosos, y que con frecuencia supone una recompensa espiritual para quienes participan o mueren en ella. Las guerras de religión de Francia, las <a href=&amp;quot;http://es.wikipedia.org/wiki/Cruzada&amp;quot;>cruzadas</a> y la <a href=&amp;quot;http://es.wikipedia.org/wiki/Yihad&amp;quot;>yihad</a> islámica suelen presentarse popularmente como ejemplos de guerra santa.</p>
<p>En los tiempos modernos se ha usado también como un modo de definir diferencias culturales e históricas entre combatientes, sin que sea la religión necesariamente la causa principal (un ejemplo es el conflicto del Ulster).</p>
<h1>Cristianismo</h1>
<p>El concepto de guerra santa puede rastrearse en el cristianismo tras del concepto o doctrina de la guerra justa por Agustín de Hipona en su célebre obra Civitate Dei, que es continuada por otros autores a lo largo de la Edad Media, como Tomás de Aquino (Suma Teológica, II-II Qu. 40.)4 5 6 A propósito de la frase del Evangelio de Lucas «y dijo el amo al siervo: Sal a los caminos y a los cercados, y obliga a entrar, para que se llene mi casa» (Lucas, 14, 23).</p>
CONTENIDO

editarPagina "$ID_USER2" "Guerra Santa" "2014-04-20T18:21:55+0200" <<CONTENIDO
<h1>Introducción</h1>
<p>La guerra santa es una guerra que se hace por motivos religiosos, y que con frecuencia supone una recompensa espiritual para quienes participan o mueren en ella. Las guerras de religión de Francia, las <a href=&amp;quot;http://es.wikipedia.org/wiki/Cruzada&amp;quot;>cruzadas</a> y la <a href=&amp;quot;http://es.wikipedia.org/wiki/Yihad&amp;quot;>yihad</a> islámica suelen presentarse popularmente como ejemplos de guerra santa.</p>
<p>En los tiempos modernos se ha usado también como un modo de definir diferencias culturales e históricas entre combatientes, sin que sea la religión necesariamente la causa principal (un ejemplo es el conflicto del Ulster).</p>
<h1>Cristianismo</h1>
<p>El concepto de guerra santa puede rastrearse en el cristianismo tras del concepto o doctrina de la guerra justa por Agustín de Hipona en su célebre obra Civitate Dei, que es continuada por otros autores a lo largo de la Edad Media, como Tomás de Aquino (Suma Teológica, II-II Qu. 40.)4 5 6 A propósito de la frase del Evangelio de Lucas «y dijo el amo al siervo: Sal a los caminos y a los cercados, y obliga a entrar, para que se llene mi casa» (Lucas, 14, 23).</p>
<h1>Otras religiones</h1>
<h2>Judaísmo</h2>
<p>bla bla bla</p>
<h2>Islam</h2>
<p>bla bla bla</p>
CONTENIDO

editarPagina "$ID_USER1" "Guerra Santa" "2014-04-20T18:23:45+0200" <<CONTENIDO
<h1>Introducción</h1>
<p>La guerra santa es una guerra que se hace por motivos religiosos, y que con frecuencia supone una recompensa espiritual para quienes participan o mueren en ella. Las guerras de religión de Francia, las <a href=&amp;quot;http://es.wikipedia.org/wiki/Cruzada&amp;quot;>cruzadas</a> y la <a href=&amp;quot;http://es.wikipedia.org/wiki/Yihad&amp;quot;>yihad</a> islámica suelen presentarse popularmente como ejemplos de guerra santa.</p>
<p>En los tiempos modernos se ha usado también como un modo de definir diferencias culturales e históricas entre combatientes, sin que sea la religión necesariamente la causa principal (un ejemplo es el conflicto del Ulster).</p>
<h1>Cristianismo</h1>
<p>El concepto de guerra santa puede rastrearse en el cristianismo tras del concepto o doctrina de la guerra justa por Agustín de Hipona en su célebre obra Civitate Dei, que es continuada por otros autores a lo largo de la Edad Media, como Tomás de Aquino (Suma Teológica, II-II Qu. 40.)4 5 6 A propósito de la frase del Evangelio de Lucas «y dijo el amo al siervo: Sal a los caminos y a los cercados, y obliga a entrar, para que se llene mi casa» (Lucas, 14, 23).</p>
<h1>Otras religiones</h1>
<h2>Judaísmo</h2>
<p>En la religión judía, la expresión Milkhemet Mitzvah (hebreo: מלחמת מצווה, &amp;quot;la guerra por mandamiento&amp;quot;) se refiere a una guerra que es a la vez obligatorio para todos los Judios (hombres y mujeres) y se limita al territorio dentro de las fronteras de la tierra de Israel. Los límites geográficos de Israel y los conflictos con las naciones vecinas se detallan en el Tanaj, la Biblia hebrea, especialmente en Números 34:1-15 y Ezequiel 47:13-20.</p>
<h2>Islam</h2>
<p>En el islam la idea existe desde los primeros tiempos: en Medina, de los años 624-630, hay una glorificación de las razzias y, en paralelo, en la revelación coránica, su justificación y reglamentación. El Corán, aunque no lo formula de un modo específico, ya que el concepto de jihad, que suele traducirse (impropiamente, a juicio de algunos) como guerra santa, es en realidad mucho más amplio, incluyendo también a la acción violenta. De acuerdo con el Corán, la guerra es ante todo la guerra que se libra con la propia alm</p>
CONTENIDO

editarPagina "$ID_USER2" "Guerra Santa" "2014-05-02T18:24:05+0200" <<CONTENIDO
<h1>Introducción</h1>
<p>La guerra santa es una guerra que se hace por motivos religiosos, y que con frecuencia supone una recompensa espiritual para quienes participan o mueren en ella. Las guerras de religión de Francia, las <a href=&amp;quot;http://es.wikipedia.org/wiki/Cruzada&amp;quot;>cruzadas</a> y la <a href=&amp;quot;http://es.wikipedia.org/wiki/Yihad&amp;quot;>yihad</a> islámica suelen presentarse popularmente como ejemplos de guerra santa.</p>
<p>En los tiempos modernos se ha usado también como un modo de definir diferencias culturales e históricas entre combatientes, sin que sea la religión necesariamente la causa principal (un ejemplo es el conflicto del Ulster).</p>
<h1>Cristianismo</h1>
<p>El concepto de guerra santa puede rastrearse en el cristianismo tras del concepto o doctrina de la guerra justa por Agustín de Hipona en su célebre obra Civitate Dei, que es continuada por otros autores a lo largo de la Edad Media, como Tomás de Aquino (Suma Teológica, II-II Qu. 40.)4 5 6 A propósito de la frase del Evangelio de Lucas «y dijo el amo al siervo: Sal a los caminos y a los cercados, y obliga a entrar, para que se llene mi casa» (Lucas, 14, 23).</p>
<h1>Otras religiones</h1>
<h2>Judaísmo</h2>
<p>En la religión judía, la expresión Milkhemet Mitzvah (hebreo: מלחמת מצווה, &amp;quot;la guerra por mandamiento&amp;quot;) se refiere a una guerra que es a la vez obligatorio para todos los Judios (hombres y mujeres) y se limita al territorio dentro de las fronteras de la tierra de Israel. Los límites geográficos de Israel y los conflictos con las naciones vecinas se detallan en el Tanaj, la Biblia hebrea, especialmente en Números 34:1-15 y Ezequiel 47:13-20.</p>
<h2>Islam</h2>
<p>En el islam la idea existe desde los primeros tiempos: en Medina, de los años 624-630, hay una glorificación de las razzias y, en paralelo, en la revelación coránica, su justificación y reglamentación. El Corán, aunque no lo formula de un modo específico, ya que el concepto de jihad, que suele traducirse (impropiamente, a juicio de algunos) como guerra santa, es en realidad mucho más amplio, incluyendo también a la acción violenta. De acuerdo con el Corán, la guerra es ante todo la guerra que se libra con la propia alma.</p>
CONTENIDO

editarPagina "$ID_USER1" "Guerra Santa" "2014-05-03T18:25:36+0200" <<CONTENIDO
<h1>Introducción</h1>
<p>La guerra santa es una guerra que se hace por motivos religiosos, y que con frecuencia supone una recompensa espiritual para quienes participan o mueren en ella. Las guerras de religión de Francia, las <a href=&amp;quot;http://es.wikipedia.org/wiki/Cruzada&amp;quot;>cruzadas</a> y la <a href=&amp;quot;http://es.wikipedia.org/wiki/Yihad&amp;quot;>yihad</a> islámica suelen presentarse popularmente como ejemplos de guerra santa.</p>
<p>En los tiempos modernos se ha usado también como un modo de definir diferencias culturales e históricas entre combatientes, sin que sea la religión necesariamente la causa principal (un ejemplo es el conflicto del Ulster).</p>
<h1>Cristianismo</h1>
<p>El concepto de guerra santa puede rastrearse en el cristianismo tras del concepto o doctrina de la guerra justa por Agustín de Hipona en su célebre obra Civitate Dei, que es continuada por otros autores a lo largo de la Edad Media, como Tomás de Aquino (Suma Teológica, II-II Qu. 40.)4 5 6 A propósito de la frase del Evangelio de Lucas «y dijo el amo al siervo: Sal a los caminos y a los cercados, y obliga a entrar, para que se llene mi casa» (Lucas, 14, 23).</p>
<h2>El derecho a la legítima defensa</h2>
<p>El Catecismo de la Iglesia Católica considera como todo ciudadano y todo gobernante están obligados a empeñarse en evitar las guerras. Sin embargo, mientras exista el riesgo de guerra y falte una autoridad internacional competente y provista de la fuerza correspondiente, una vez agotados todos los medios de acuerdo pacífico , no se podrá negar a los gobiernos el derecho a la legítima defensa.11</p>
<h1>Otras religiones</h1>
<h2>Judaísmo</h2>
<p>En la religión judía, la expresión Milkhemet Mitzvah (hebreo: מלחמת מצווה, &amp;quot;la guerra por mandamiento&amp;quot;) se refiere a una guerra que es a la vez obligatorio para todos los Judios (hombres y mujeres) y se limita al territorio dentro de las fronteras de la tierra de Israel. Los límites geográficos de Israel y los conflictos con las naciones vecinas se detallan en el Tanaj, la Biblia hebrea, especialmente en Números 34:1-15 y Ezequiel 47:13-20.</p>
<h2>Islam</h2>
<p>En el islam la idea existe desde los primeros tiempos: en Medina, de los años 624-630, hay una glorificación de las razzias y, en paralelo, en la revelación coránica, su justificación y reglamentación. El Corán, aunque no lo formula de un modo específico, ya que el concepto de jihad, que suele traducirse (impropiamente, a juicio de algunos) como guerra santa, es en realidad mucho más amplio, incluyendo también a la acción violenta. De acuerdo con el Corán, la guerra es ante todo la guerra que se libra con la propia alma.</p>
CONTENIDO

editarPagina "$ID_USER2" "Guerra Santa" "2014-05-25T18:25:56+0200" <<CONTENIDO
<h1>Introducción</h1>
<p>La guerra santa es una guerra que se hace por motivos religiosos, y que con frecuencia supone una recompensa espiritual para quienes participan o mueren en ella. Las guerras de religión de Francia, las <a href=&amp;quot;http://es.wikipedia.org/wiki/Cruzada&amp;quot;>cruzadas</a> y la <a href=&amp;quot;http://es.wikipedia.org/wiki/Yihad&amp;quot;>yihad</a> islámica suelen presentarse popularmente como ejemplos de guerra santa.</p>
<p>En los tiempos modernos se ha usado también como un modo de definir diferencias culturales e históricas entre combatientes, sin que sea la religión necesariamente la causa principal (un ejemplo es el conflicto del Ulster).</p>
<h1>Cristianismo</h1>
<p>El concepto de guerra santa puede rastrearse en el cristianismo tras del concepto o doctrina de la guerra justa por Agustín de Hipona en su célebre obra Civitate Dei, que es continuada por otros autores a lo largo de la Edad Media, como Tomás de Aquino (Suma Teológica, II-II Qu. 40.)4 5 6 A propósito de la frase del Evangelio de Lucas «y dijo el amo al siervo: Sal a los caminos y a los cercados, y obliga a entrar, para que se llene mi casa» (Lucas, 14, 23).</p>
<h2>El derecho a la legítima defensa</h2>
<p>El Catecismo de la Iglesia Católica considera como todo ciudadano y todo gobernante están obligados a empeñarse en evitar las guerras. Sin embargo, mientras exista el riesgo de guerra y falte una autoridad internacional competente y provista de la fuerza correspondiente, una vez agotados todos los medios de acuerdo pacífico, no se podrá negar a los gobiernos el derecho a la legítima defensa.</p>
<h1>Otras religiones</h1>
<h2>Judaísmo</h2>
<p>En la religión judía, la expresión Milkhemet Mitzvah (hebreo: מלחמת מצווה, &amp;quot;la guerra por mandamiento&amp;quot;) se refiere a una guerra que es a la vez obligatorio para todos los Judios (hombres y mujeres) y se limita al territorio dentro de las fronteras de la tierra de Israel. Los límites geográficos de Israel y los conflictos con las naciones vecinas se detallan en el Tanaj, la Biblia hebrea, especialmente en Números 34:1-15 y Ezequiel 47:13-20.</p>
<h2>Islam</h2>
<p>En el islam la idea existe desde los primeros tiempos: en Medina, de los años 624-630, hay una glorificación de las razzias y, en paralelo, en la revelación coránica, su justificación y reglamentación. El Corán, aunque no lo formula de un modo específico, ya que el concepto de jihad, que suele traducirse (impropiamente, a juicio de algunos) como guerra santa, es en realidad mucho más amplio, incluyendo también a la acción violenta. De acuerdo con el Corán, la guerra es ante todo la guerra que se libra con la propia alma.</p>
CONTENIDO

editarPagina "$ID_USER1" "Guerra Santa" "2014-05-26T18:29:16+0200" <<CONTENIDO
<h1>Introducción</h1>
<p>La guerra santa es una guerra que se hace por motivos religiosos, y que con frecuencia supone una recompensa espiritual para quienes participan o mueren en ella. Las guerras de religión de Francia, las <a href=&amp;quot;http://es.wikipedia.org/wiki/Cruzada&amp;quot;>cruzadas</a> y la <a href=&amp;quot;http://es.wikipedia.org/wiki/Yihad&amp;quot;>yihad</a> islámica suelen presentarse popularmente como ejemplos de guerra santa.</p>
<p>En los tiempos modernos se ha usado también como un modo de definir diferencias culturales e históricas entre combatientes, sin que sea la religión necesariamente la causa principal (un ejemplo es el conflicto del Ulster).</p>
<h1>Cristianismo</h1>
<p>El concepto de guerra santa puede rastrearse en el cristianismo tras del concepto o doctrina de la guerra justa por Agustín de Hipona en su célebre obra Civitate Dei, que es continuada por otros autores a lo largo de la Edad Media, como Tomás de Aquino (Suma Teológica, II-II Qu. 40.)4 5 6 A propósito de la frase del Evangelio de Lucas «y dijo el amo al siervo: Sal a los caminos y a los cercados, y obliga a entrar, para que se llene mi casa» (Lucas, 14, 23).</p>
<h2>El derecho a la legítima defensa</h2>
<p>El Catecismo de la Iglesia Católica considera como todo ciudadano y todo gobernante están obligados a empeñarse en evitar las guerras. Sin embargo, mientras exista el riesgo de guerra y falte una autoridad internacional competente y provista de la fuerza correspondiente, una vez agotados todos los medios de acuerdo pacífico, no se podrá negar a los gobiernos el derecho a la legítima defensa.</p>
<h1>Otras religiones</h1>
<h2>Judaísmo</h2>
<p>En la religión judía, la expresión Milkhemet Mitzvah (hebreo: מלחמת מצווה, &amp;quot;la guerra por mandamiento&amp;quot;) se refiere a una guerra que es a la vez obligatorio para todos los Judios (hombres y mujeres) y se limita al territorio dentro de las fronteras de la tierra de Israel. Los límites geográficos de Israel y los conflictos con las naciones vecinas se detallan en el Tanaj, la Biblia hebrea, especialmente en Números 34:1-15 y Ezequiel 47:13-20.</p>
<h2>Islam</h2>
<p>En el islam la idea existe desde los primeros tiempos: en Medina, de los años 624-630, hay una glorificación de las razzias y, en paralelo, en la revelación coránica, su justificación y reglamentación. El Corán, aunque no lo formula de un modo específico, ya que el concepto de jihad, que suele traducirse (impropiamente, a juicio de algunos) como guerra santa, es en realidad mucho más amplio, incluyendo también a la acción violenta. De acuerdo con el <a href=&amp;quot;http://es.wikipedia.org/wiki/Cor%C3%A1n&amp;quot;>Corán</a>, la guerra es ante todo la guerra que se libra con la propia alma.</p>
<p><img src=&amp;quot;http://upload.wikimedia.org/wikipedia/commons/c/c4/AndalusQuran.JPG&amp;quot; alt=&amp;quot;El corán&amp;quot; width=&amp;quot;250&amp;quot; height=&amp;quot;292&amp;quot; /></p>
CONTENIDO


visitarPaginasWiki
