package main

import (
	"fmt"
	"math/rand"
	"sort"
	"time"
)

func main() {
	rand.Seed(time.Now().UnixNano())
	var dezenasSorteadas [6]int
	var dezenasNaOrdem [6]int
	var existe bool

	// gerando as dezenas sorteadas
	for i := 0; i < 6; i++ {
		dezenasSorteadas[i] = rand.Intn(60) + 1
		for {
			existe = false
			for j := 0; j < i; j++ {
				if dezenasSorteadas[i] == dezenasSorteadas[j] {
					existe = true
					dezenasSorteadas[i] = rand.Intn(60) + 1
					break
				}
			}
			if !existe {
				break
			}
		}
	}

	// ordenando as dezenas
	copy(dezenasNaOrdem[:], dezenasSorteadas[:])
	sort.Ints(dezenasNaOrdem[:])

	// imprimindo as dezenas sorteadas
	fmt.Print("Palpite para Mega-Sena\n\nAs dezenas sorteadas são: ")
	for i := 0; i < len(dezenasSorteadas); i++ {
		if i == len(dezenasSorteadas)-1 {
			fmt.Print(dezenasSorteadas[i])
		} else {
			fmt.Print(dezenasSorteadas[i], " - ")
		}
	}
	fmt.Print("\n")

	// imprimindo as dezenas ordenadas
	fmt.Print("As dezenas na ordem são: ")
	for i := 0; i < len(dezenasNaOrdem); i++ {
		if i == len(dezenasNaOrdem)-1 {
			fmt.Print(dezenasNaOrdem[i])
		} else {
			fmt.Print(dezenasNaOrdem[i], " - ")
		}
	}
	fmt.Print("\n")
}
