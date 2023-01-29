#!/bin/bash

echo "Palpite para Mega Sena"
echo ""
echo -n "As dezenas sorteadas são: "

# Gerando e imprimindo números aleatórios
for i in {1..6}
do
    num=$(( ( RANDOM % 60 )  + 1 ))
    for j in "${numeros[@]}"
    do
        while [ $num == $j ]
        do
            num=$(( ( RANDOM % 60 )  + 1 ))
        done
    done
    numeros[i]=$num
    if [ $i -eq 6 ];then
        echo -n "$num "
    else
        echo -n "$num - "
    fi
done

echo ""
echo -n "As dezenas na ordem são: "

#função para ordenar os números
function sortdezena { for i in ${numeros[@]}; do echo "$i"; done | sort -n; }

# array numerosordenados recebe a ordenação dos números
numerosordenados=( $(sortdezena) )

#imprime os números ordenados
for i in ${numerosordenados[@]}; do
    if [ $i -eq ${numerosordenados[-1]} ];then
        echo -n "$i "
    else
        echo -n "$i - "
    fi
done
echo ""
