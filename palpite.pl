use warnings;
use strict;

my @numeros;

print "Palpite para Mega Sena\n\n";
print "As dezenas sorteadas são: ";

# Gerando e imprimindo números aleatórios
for (my $i = 0; $i < 6; $i++) {
    $numeros[$i] = int(rand(60)) + 1;
    if ($i == 5) {
        print "$numeros[$i] ";
    } else {
        print "$numeros[$i] - ";
    }
}

print "\nAs dezenas na ordem são: ";

# Ordenando números
@numeros = sort {$a <=> $b} @numeros;

# Imprimindo números ordenados
for (my $i = 0; $i < 6; $i++) {
    if ($i == 5) {
        print "$numeros[$i]";
    } else {
        print "$numeros[$i] - ";
    }
}

print "\n";
