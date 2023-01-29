# Palpite para Mega Sena reescrito pelo ChatGPT

Essa é uma reescrita, a partir do zero, do código usado no site https://palpite-megasena.adilson.net.br. Mas, para ser mais autêntico, usei o ChatGPT para que o mesmo faça a partir de uma descrição.

> Gere um programa em C que vai imprimir na tela "Palpite para Mega Sena".  Pule duas linhas e escreva "As dezenas sorteadas são:"  Do lado escolhe 6 números únicos de forma aleatória entre 01 e 60. Na linha seguinte escreve "As dezenas na ordem são:" Do lado pegue estes 6 números e coloque em ordem crescente.

A partir do código em C foram gerados diversas variações em outras linguagens de programação. Inclusive foi gerado uma versão em PHP.

Parte destes códigos foram testados localmente ou usado o site https://tio.run/, onde não tinha condições de rodar no computador.  Infelizmente alguns códigos não tenho condições de testar mas fique livre em pegar o código e rodar.

Os códigos gerados pelo ChatGPT foram esses.

|Código|Obs  |
|--|--|
| palpite-original-wiki.php | O código original que se encontra em wiki.adilson.net.br |
|palpite-original-appengine.php | O mesmo código original com a adição da verificação se está em http ou https no Google App Engine|
|palpite.c | Código em C - Funcional |
|palpite.sh | Código em Bash Script - Funcional. Parte do código tive que fornecer uma função de outro script para adaptar no código|
|palpite.pas | Código em Pascal - Testado no https://tio.run|
|palpite.pl | Código em Perl - Funcional |
|palpite.py | Código em Python - Funcional|
|palpite.cob| Código em Cobol - Não foi possível testar para a versão do Cobol usado|
|palpite.for| Código em FORTRAN - Não foi possível testar para a versão do Fortran usado|
|palpite.go| Código em Go - Testado no https://tio.run|
|palpite.rb| Código em Ruby - Funcional|
|palpite.rs|Código em Rust - Gerou diversos erros. Não foi possível fazer mais testes.|
|palpite.ps1 | Código em PowerShell - Testado no https://tio.run|
|palpite.lua| Código em Lua - Testado no https://tio.run|
|MegaSena.java| Código em Java - Funcional, tive que pedir para o ChatGPT corrigir um bug de repetição de dezena.|
|palpite.php|Código em PHP. Reescrito a partir do código em C. Funcional|
|palpite.asp|Código em ASP. Não foi possível testar|
|palpite.net.asp |Código em ASP.net. Não foi possível testar
|palpite.bas|BASIC. Não foi possível testar|
|palpite.lisp|Lisp. Falhou em algumas versõs do lisp usado no https://tio.run|
|palpite.html| HTML e JavaScript, Única versão que roda do lado do cliente.|
|palpite.cgi.c|Versão do código para uso do cgi-bin - Não foi testado|
|palpite.cgi.pl|Versão do código para uso do cgi-bin em Perl - Não foi testado|
|palpite.tcl|Versão do código em TCL. Testado no https://tio.run . Mas ordenou de forma errônea quando misturou números de 1 e 2 caracteres. |


Alguns destes códigos precisavam de ajustes, como dito anteriormente. Então pedia para o próprio ChatGPT para corrigir os erros.
O último foi o Java, que pedi uma correção de última hora. Então não tenho garantias de que o código, nos que não foram testados, funcionam corretamente ou não.

Como o código é simples vou deixar em domínio publico já que os códigos foram criados por uma IA. Fiquem a vontade em usar todos eles. Sendo que a autoria dos códigos originais são minha e do ChatGPT. A exceção são os códigos originais em php que são, exclusivamente, de minha autoria.

