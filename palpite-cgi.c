#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int compare(const void* a, const void* b) {
    return (*(int*)a - *(int*)b);
}

int main() {
    // Gerado pelo ChatGPT de acordo com a descrição fornecida por Adilson dos Santos Dantas.
    int numeros[6];
    srand(time(0));
    printf("Content-type: text/html\n\n");
    printf("Pragma: no-cache\n\n");
    printf("<html>\n");
    printf("<head>\n");
    printf("<title>Palpite para Mega Sena</title>\n");
    printf("<style>\n");
    printf("body { font-family: Arial, Helvetica; }\n");
    printf("</style>\n");
    printf("</head>\n");
    printf("<body>\n");
    printf("<h1>Palpite para Mega Sena</h1>\n");
    printf("<br>\n");
    printf("<p>As dezenas sorteadas são: ");
    for (int i = 0; i < 6; i++) {
        int novoNumero = rand() % 60 + 1;
        while (numeros[i] == novoNumero) {
            novoNumero = rand() % 60 + 1;
        }
        numeros[i] = novoNumero;
        if (i == 5) {
            printf("%d", numeros[i]);
        } else {
            printf("%d - ", numeros[i]);
        }
    }
    printf("</p>\n");
    printf("<p>As dezenas na ordem são: ");
    qsort(numeros, 6, sizeof(int), compare);
    for (int i = 0; i < 6; i++) {
        if (i == 5) {
            printf("%d", numeros[i]);
        } else {
            printf("%d - ", numeros[i]);
        }
    }
    printf("</p>\n");
    printf("</body>\n");
    printf("</html>\n");
    return 0;
}
