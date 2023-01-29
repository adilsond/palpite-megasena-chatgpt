$random = New-Object System.Random
$dezenasSorteadas = @()

#gerando as dezenas sorteadas
for ($i = 0; $i -lt 6; $i++) {
    $dezena = $random.Next(1, 61)
    while ($dezenasSorteadas -contains $dezena) {
      $dezena = $random.Next(1, 61)
    }
    $dezenasSorteadas += $dezena
}

#ordenando as dezenas
$dezenasNaOrdem = $dezenasSorteadas | Sort-Object

Write-Host "Palpite para Mega-Sena"
Write-Host
Write-Host "As dezenas sorteadas são: " -NoNewline
Write-Host ($dezenasSorteadas -join " - ")
Write-Host
Write-Host "As dezenas na ordem são: " -NoNewline
Write-Host ($dezenasNaOrdem -join " - ")
