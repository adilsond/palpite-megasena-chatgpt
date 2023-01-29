10 RANDOMIZE TIMER
20 DIM num(6)
30 FOR i = 1 TO 6
40 num(i) = INT(RND(1) * 60) + 1
50 NEXT i
60 PRINT "Palpite para Mega Sena"
70 PRINT "As dezenas sorteadas são:"
80 FOR i = 1 TO 6
90 PRINT num(i); " - ";
100 NEXT i
110 PRINT
120 PRINT "As dezenas na ordem são:"
130 SORT num()
140 FOR i = 1 TO 6
150 PRINT num(i); " - ";
160 NEXT i
170 PRINT
