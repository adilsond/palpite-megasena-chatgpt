import java.util.Arrays;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;

public class MegaSena {
    public static void main(String[] args) {
        Random rand = new Random();
        int[] numeros = new int[6];
        Set<Integer> dezenasGeradas = new HashSet<Integer>();
        
        System.out.println("Palpite para Mega Sena\n");
        System.out.print("As dezenas sorteadas são: ");

        // Gerando e imprimindo números aleatórios
        for (int i = 0; i < 6; i++) {
            int novaDezena;
            do {
                novaDezena = rand.nextInt(60) + 1;
            } while (dezenasGeradas.contains(novaDezena));
            dezenasGeradas.add(novaDezena);
            numeros[i] = novaDezena;
            if (i == 5) {
                System.out.print(numeros[i]);
            } else {
                System.out.print(numeros[i] + " - ");
            }
        }

        System.out.print("\nAs dezenas na ordem são: ");

        // Ordenando números
        Arrays.sort(numeros);

        // Imprimindo números ordenados
        for (int i = 0; i < 6; i++) {
            if (i == 5) {
                System.out.print(numeros[i]);
            } else {
                System.out.print(numeros[i] + " - ");
            }
        }

        System.out.println();
    }
}
