import random

print("Palpite para Mega Sena\n")
print("As dezenas sorteadas são: ", end="")

numeros = random.sample(range(1,61),6)

for i in range(len(numeros)):
    if i == 5:
        print(numeros[i], end="")
    else:
        print(numeros[i], end=" - ")

print("\nAs dezenas na ordem são: ", end="")
numeros.sort()
for i in range(len(numeros)):
    if i == 5:
        print(numeros[i], end="")
    else:
        print(numeros[i], end=" - ")
print()
