function contains(table, element)
    for _, value in pairs(table) do
        if value == element then
            return true
        end
    end
    return false
end

numeros_sorteados = {}

for i = 1, 6 do
    numero = math.random(1, 60)
    while contains(numeros_sorteados, numero) do
        numero = math.random(1, 60)
    end
    table.insert(numeros_sorteados, numero)
end

print("Palpite para Mega-Sena\n")
io.write("As dezenas sorteadas são: ")
for i, numero in ipairs(numeros_sorteados) do
    io.write(numero)
    if i < #numeros_sorteados then
        io.write(" - ")
    end
end
io.write("\nAs dezenas na ordem são: ")
table.sort(numeros_sorteados)
for i, numero in ipairs(numeros_sorteados) do
    io.write(numero)
    if i < #numeros_sorteados then
        io.write(" - ")
    end
end
print("\n")
