<!DOCTYPE html>
<html lang="pt">
<head>
  <meta charset="UTF-8">
  <title>Tabela de Clientes</title>
  <link rel="stylesheet" href="estilos.css">
</head>
<body>
<h1>Tabela de Clientes</h1>

<!---importando a query para gerar a tabela--->
<cfinclude template="query.cfm">

<div>
  <select id="filtroAniversariante">
    <option value="todos">Exibir todos</option>
    <option value="aniversariantes">Exibir somente os aniversariantes do mês</option>
  </select>
</div>
<table id="tabelaClientes">
  <thead>
  <tr>
    <th>Código</th>
    <th>Nome</th>
    <th>Data de Nascimento</th>
    <th>Dia da Semana do Nascimento</th>
  </tr>
  </thead>
  <tbody>

  </tbody>
</table>

<script>
var clientesJson = [

<cfloop query="clientes">
  <cfoutput>
    {
      codigo: #clientes.codigo#,
      nome: "#clientes.nome#",
      dataNascimento: "#dateFormat(clientes.dataNascimento, 'yyyy-mm-dd')#"
    }<cfif clientes.currentRow lt clientes.recordCount>,</cfif>
  </cfoutput>
</cfloop>

];

function popularTabela(clientesParaExibir) {
  var tabela = document.getElementById('tabelaClientes').getElementsByTagName('tbody')[0];
  tabela.innerHTML = '';
  clientesParaExibir.forEach(function(cliente) {
    var partesData = cliente.dataNascimento.split('-');
    var dataNasc = new Date(partesData[0], partesData[1] - 1, partesData[2]);

    var opcoes = {
      weekday: 'long',
      timeZone: 'America/Sao_Paulo'
    };
    var diaSemana = dataNasc.toLocaleString('pt-BR', opcoes);
    var ehFimDeSemana = dataNasc.getDay() === 0 || dataNasc.getDay() === 6;

    var linha = document.createElement('tr');
    linha.innerHTML = `<td>${cliente.codigo}</td>
                       <td>${cliente.nome}</td>
                       <td>${cliente.dataNascimento}</td>
                       <td class="${ehFimDeSemana ? 'negrito' : ''}">${diaSemana}</td>`;
    tabela.appendChild(linha);
  });
}


function filtrarClientes() {
  var filtroSelecionado = document.getElementById('filtroAniversariante').value;
  var mesAtual = new Date().getMonth() + 1;

  var clientesFiltrados = clientesJson.filter(function(clientesJson) {
    var mesNascimento = new Date(clientesJson.dataNascimento).getMonth() + 1;
    return filtroSelecionado === 'todos' || mesNascimento === mesAtual;
  });

  popularTabela(clientesFiltrados);
}

document.getElementById('filtroAniversariante').addEventListener('change', filtrarClientes);

document.addEventListener('DOMContentLoaded', function() {
  popularTabela(clientesJson);
});

</script>

</body>
</html>
