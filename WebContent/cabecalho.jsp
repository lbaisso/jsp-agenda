<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<%-- Usando a tag <c:url> ficamos livres para utilizar caminhos absolutos --%>
<c:url value="/images/ironman.png" var="imagem"/>
<img src="${imagem}" height="100"/>

<!-- Outra forma -->
<%-- <img src="<c:url value="/imagens/caelum.png" />" width="200" height="100"/> --%>

<!-- Caminho relativo -->
<!-- <img src="imagens/caelum.png" width="200" height="100"/> -->

<h2>Agenda de Contatos de Tassio Pinheiro</h2>
<hr />