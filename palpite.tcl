set dezenasSorteadas [list]
while {[llength $dezenasSorteadas] < 6} {
    set numeroAleatorio [expr {int(rand()*60+1)}]
    if {[lsearch -exact $dezenasSorteadas $numeroAleatorio] == -1} {
        lappend dezenasSorteadas $numeroAleatorio
    }
}
puts "Palpite para Mega Sena\n\nAs dezenas sorteadas são: [join $dezenasSorteadas " - "]"
set dezenasNaOrdem [lsort $dezenasSorteadas]
puts "As dezenas na ordem são: [join $dezenasNaOrdem " - "]"
