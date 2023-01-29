using System;
using System.Linq;

Response.Expires = 0;
Response.Buffer = true;
Response.Clear();

Response.Write("<html>\n");
Response.Write("<head>\n");
Response.Write("<title>Palpite para Mega Sena</title>\n");
Response.Write("<style>\n");
Response.Write("body { font-family: Arial, Helvetica; }\n");
Response.Write("</style>\n");
Response.Write("</head>\n");
Response.Write("<body>\n");
Response.Write("<h1>Palpite para Mega Sena</h1>\n");
Response.Write("<br>\n");
Response.Write("<p>As dezenas sorteadas são: ");
int[] numeros = new int[6];
Random rand = new Random();
for (int i = 0; i < 6; i++)
{
    int novoNumero = rand.Next(1, 60);
    while (numeros.Contains(novoNumero))
    {
        novoNumero = rand.Next(1, 60);
    }
    numeros[i] = novoNumero;
    if (i == 5)
    {
        Response.Write(numeros[i]);
    }
    else
    {
        Response.Write(numeros[i] + " - ");
    }
}
Response.Write("</p>\n");
Response.Write("<p>As dezenas na ordem são: ");
Array.Sort(numeros);
for (int i = 0; i < 6; i++)
{
    if (i == 5)
    {
        Response.Write(numeros[i]);
    }
    else
    {
        Response.Write(numeros[i] + " - ");
    }
}
Response.Write("</p>\n");
Response.Write("</body>\n");
Response.Write("</html>\n");
Response.End();
