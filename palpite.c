#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>

int main() {
    int i, j, temp, numeros[6];
    bool ja_sorteado;
    srand(time(0));

    printf("Palpite para Mega Sena\n\n");
    printf("As dezenas sorteadas são: ");

    // Gerando e imprimindo números aleatórios
    for (i = 0; i < 6; i++) {
        do {
            numeros[i] = rand() % 60 + 1;
            ja_sorteado = false;
            for (j = 0; j < i; j++) {
                if (numeros[i] == numeros[j]) {
                    ja_sorteado = true;
                    break;
                }
            }
        } while (ja_sorteado);
        if(i == 5)
           printf("%d", numeros[i]);
        else
           printf("%d - ", numeros[i]);
    }

    printf("\nAs dezenas na ordem são: ");

    // Ordenando números
    for (i = 0; i < 6; i++) {
        for (j = 0; j < 6; j++) {
            if (numeros[j] > numeros[i]) {
                temp = numeros[i];
                numeros[i] = numeros[j];
                numeros[j] = temp;
            }
        }
    }

    // Imprimindo números ordenados
    for (i = 0; i < 6; i++) {
        if(i == 5)
           printf("%d", numeros[i]);
        else
           printf("%d - ", numeros[i]);
    }
    printf("\n");
    return 0;
}
