<?php

header ("Pragma: no-cache");

echo "<html>\n";

echo "<title>Palpite para Mega Sena</title>

<body bgcolor=\"white\">

<font face=\"Arial, helvetica\"><h1>Palpite para Mega Sena</h1>\n\n";

$numero[0] = 0;

$numero[1] = rand(01,60);

$numero[2] = rand(01,60);

while ($numero[2] == $numero[1])

{

  $numero[2] = rand(01,60);

}

$numero[3] = rand(01,60);

while ($numero[3] == $numero[1] || $numero[3] == $numero[2])

{

   $numero[3] = rand(01,60);

}

$numero[4] = rand(01,60);

while($numero[4] == $numero[3] || $numero[4] == $numero[2] || $numero[4] == $numero[1])

{

   $numero[4] = rand(01,60);

}

$numero[5] = rand(01,60);

while($numero[5] == $numero[4] || $numero[5] == $numero[3] || $numero[5] == $numero[2] || $numero[5] == $numero[1])

{

  $numero[5] = rand(01,60);

}

$numero[6] = rand(01,60);

while($numero[6] == $numero[5] || $numero[6] == $numero[4] || $numero[6] == $numero[3] || $numero[6] == $numero[2] || $numero[6] == $numero[1])

{

  $numero[6] = rand(01,60);

}

$resultado = "As dezenas sorteadas s&atilde;o: $numero[1] - $numero[2] - $numero[3] - $numero[4] - $numero[5] - $numero[6]";

sort($numero);

$resultado1 = "As dezenas na ordem s&atilde;o: $numero[1] - $numero[2] - $numero[3] - $numero[4] - $numero[5] - $numero[6]";

echo "$resultado<br><br>\n\n";

echo "$resultado1\n\n";

?>

<p>

D&uacute;vidas: <a href="http://wiki.adilson.net.br/diversos/mega-sena">Documenta&ccedil;&atilde;o</a><br>

Contato: <a href="mailto:adilson@adilson.net.br">adilson@adilson.net.br</a>

</p>

</body>

</html>
