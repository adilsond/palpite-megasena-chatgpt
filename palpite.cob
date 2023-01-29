   IDENTIFICATION DIVISION.
   PROGRAM-ID. MEGASENA.
   DATA DIVISION.
   WORKING-STORAGE SECTION.
   01 NUMEROS.
       05  NUM PIC 9(2) OCCURS 6 TIMES.
   01 I PIC 9(1) VALUE 0.
   PROCEDURE DIVISION.
   MAIN-LOGIC.
       DISPLAY "Palpite para Mega Sena"
       DISPLAY "As dezenas sorteadas são:"
       PERFORM VARYING I FROM 1 BY 1 UNTIL I > 6
           COMPUTE NUM(I) = (RANDOM NUMBER (60) + 1)
           DISPLAY NUM(I) "-"
       END-PERFORM
       DISPLAY "As dezenas na ordem são:"
       SORT NUMEROS ASCENDING KEY NUM
       PERFORM VARYING I FROM 1 BY 1 UNTIL I > 6
           DISPLAY NUM(I) "-"
       END-PERFORM
   GOBACK.
