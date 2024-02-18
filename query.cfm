

<!--- Como não tenho um endpoint, estarei simulando a consulta de dados --->
<cfset clientes = queryNew("codigo,nome,dataNascimento","Integer,Varchar,Date")>

<!--- Adicionando dados à consulta simulada --->
<cfset queryAddRow(clientes)>
<cfset querySetCell(clientes, "codigo", 1)>
<cfset querySetCell(clientes, "nome", "João Silva")>
<cfset querySetCell(clientes, "dataNascimento", createDate(1985,4,12))>

<cfset queryAddRow(clientes)>
<cfset querySetCell(clientes, "codigo", 2)>
<cfset querySetCell(clientes, "nome", "Maria Oliveira")>
<cfset querySetCell(clientes, "dataNascimento", createDate(1992,2,25))>

<cfset queryAddRow(clientes)>
<cfset querySetCell(clientes, "codigo", 3)>
<cfset querySetCell(clientes, "nome", "Carlos Andrade")>
<cfset querySetCell(clientes, "dataNascimento", createDate(1990,1,6))>

<cfset queryAddRow(clientes)>
<cfset querySetCell(clientes, "codigo", 4)>
<cfset querySetCell(clientes, "nome", "Mateus Henrique")>
<cfset querySetCell(clientes, "dataNascimento", createDate(1999,4,14))>

<cfset queryAddRow(clientes)>
<cfset querySetCell(clientes, "codigo", 5)>
<cfset querySetCell(clientes, "nome", "Ismael Souza")>
<cfset querySetCell(clientes, "dataNascimento", createDate(1991,4,7))>

<cfset queryAddRow(clientes)>
<cfset querySetCell(clientes, "codigo", 6)>
<cfset querySetCell(clientes, "nome", "Raphael Nogueira Campos")>
<cfset querySetCell(clientes, "dataNascimento", createDate(1987,5,21))>

<cfset queryAddRow(clientes)>
<cfset querySetCell(clientes, "codigo", 7)>
<cfset querySetCell(clientes, "nome", "Thayaná Gonçalves da Cunha")>
<cfset querySetCell(clientes, "dataNascimento", createDate(1991,2,07))>.

<cfset queryAddRow(clientes)>
<cfset querySetCell(clientes, "codigo", 8)>
<cfset querySetCell(clientes, "nome", "Matheus Correia Bentes")>
<cfset querySetCell(clientes, "dataNascimento", createDate(1991,3,11))>


