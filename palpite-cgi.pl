#!/usr/bin/perl
use strict;
use warnings;

# Gerado pelo ChatGPT de acordo com a descrição fornecida por Adilson dos Santos Dantas.

print "Content-type: text/html\n\n";
print "Pragma: no-cache\n\n";
print "<html>\n";
print "<head>\n";
print "<title>Palpite para Mega Sena</title>\n";
print "<style>\n";
print "body { font-family: Arial, Helvetica; }\n";
print "</style>\n";
print "</head>\n";
print "<body>\n";
print "<h1>Palpite para Mega Sena</h1>\n";
print "<br>\n";
print "<p>As dezenas sorteadas são: ";
my @numeros;
for (my $i = 0; $i < 6; $i++) {
    my $novoNumero = int(rand(60)) + 1;
    while (grep {$_ == $novoNumero} @numeros) {
        $novoNumero = int(rand(60)) + 1;
    }
    push @numeros, $novoNumero;
    if ($i == 5) {
        print "$numeros[$i]";
    } else {
        print "$numeros[$i] - ";
    }
}
print "</p>\n";
print "<p>As dezenas na ordem são: ";
my @sorted = sort {$a <=> $b} @numeros;
for (my $i = 0; $i < 6; $i++) {
    if ($i == 5) {
        print "$sorted[$i]";
    } else {
        print "$sorted[$i] - ";
    }
}
print "</p>\n";
print "</body>\n";
print "</html>\n";
