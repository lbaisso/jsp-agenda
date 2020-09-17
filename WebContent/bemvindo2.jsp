<%@ page import="br.com.aula.dao.*, br.com.aula.modelo.*, java.util.*, java.text.SimpleDateFormat"
	language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Projeto Agenda</title>
</head>
<body>
	<%-- comentário em JSP aqui: nossa primeira página JSP --%>
	<%
		String mensagem = "Bem vindo ao sistema JSP Agenda!<br>";
		out.println(mensagem);
		out.println("<br>LISTA DE CONTATOS:");
	%>
	<br />
	<table>
		<%
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();
			for (Contato contato : contatos) {
		%>
		<tr>
			<td><%=contato.getNome()%></td>
			<td><%=contato.getEmail()%></td>
			<td><%=contato.getEndereco()%></td>
			<td><%=new SimpleDateFormat("dd/MM/yyyy").format(contato.getDataNascimento().getTime())%></td>
		</tr>
		<%
			}
		%>
	</table>
	<br />
	<%
		String desenvolvido = "Desenvolvido por Tassio Pinheiro";
	%>
	<%=desenvolvido%>
	<br />
	<%System.out.println("Tudo foi executado!");%>
</body>
</html>