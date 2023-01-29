<?php
    // Gerado pelo ChatGPT de acordo com a descrição fornecida por Adilson dos Santos Dantas.
    header("Pragma: no-cache");
    echo "<html>\n";
    echo "<head>\n";
    echo "<title>Palpite para Mega Sena</title>\n";
    echo "<style>\n";
    echo "body { font-family: Arial, Helvetica; }\n";
    echo "</style>\n";
    echo "</head>\n";
    echo "<body>\n";
    echo "<h1>Palpite para Mega Sena</h1>\n";
    echo "<br>\n";
    echo "<p>As dezenas sorteadas são: ";
    $numeros = array();
    for ($i = 0; $i < 6; $i++) {
        $novoNumero = rand(1, 60);
        while (in_array($novoNumero, $numeros)) {
            $novoNumero = rand(1, 60);
        }
        $numeros[$i] = $novoNumero;
        if ($i == 5) {
            echo $numeros[$i];
        } else {
            echo $numeros[$i] . " - ";
        }
    }
    echo "</p>\n";
    echo "<p>As dezenas na ordem são: ";
    sort($numeros);
    for ($i = 0; $i < 6; $i++) {
        if ($i == 5) {
            echo $numeros[$i];
        } else {
            echo $numeros[$i] . " - ";
        }
    }
    echo "</p>\n";
    echo "</body>\n";
    echo "</html>\n";
?>
