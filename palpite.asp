<%
    ' Gerado pelo ChatGPT de acordo com a descrição fornecida por Adilson dos Santos Dantas.
    Response.Expires = 0
    Response.Buffer = true
    Response.Clear
    Response.Write("<html>")
    Response.Write("<head>")
    Response.Write("<title>Palpite para Mega Sena</title>")
    Response.Write("<style>")
    Response.Write("body { font-family: Arial, Helvetica; }")
    Response.Write("</style>")
    Response.Write("</head>")
    Response.Write("<body>")
    Response.Write("<h1>Palpite para Mega Sena</h1>")
    Response.Write("<br>")
    Response.Write("<p>As dezenas sorteadas são: ")
    dim numeros()
    for i = 0 to 5
        novoNumero = Int((60 - 1 + 1) * Rnd + 1)
        while InStr(join(numeros, " - "), Cstr(novoNumero)) > 0
            novoNumero = Int((60 - 1 + 1) * Rnd + 1)
        end while
        redim preserve numeros(i)
        numeros(i) = novoNumero
        if i = 5 Then
            Response.Write(numeros(i))
        Else
            Response.Write(numeros(i) & " - ")
        end if
    next
    Response.Write("</p>")
    Response.Write("<p>As dezenas na ordem são: ")
    numeros = sortArray(numeros)
    for i = 0 to 5
        if i = 5 Then
            Response.Write(numeros(i))
        Else
            Response.Write(numeros(i) & " - ")
        end if
    next
    Response.Write("</p>")
    Response.Write("</body>")
    Response.Write("</html>")
    Response.End
%>
