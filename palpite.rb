numeros_sorteados = []

6.times do
    numero = rand(1..60)
    while numeros_sorteados.include?(numero)
        numero = rand(1..60)
    end
    numeros_sorteados << numero
end
numeros_ordenados = numeros_sorteados.sort
puts "Palpite para Mega-Sena\n"
puts ""
print "As dezenas sorteadas são: "
numeros_sorteados.each_with_index do |num, i|
    print "#{num}"
    if i < numeros_sorteados.length-1
        print " - "
    end
end
puts ""
print "As dezenas na ordem são: "
numeros_ordenados.each_with_index do |num, i|
    print "#{num}"
    if i < numeros_ordenados.length-1
        print " - "
    end
end
puts ""
