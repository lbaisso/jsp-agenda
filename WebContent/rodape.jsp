<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- Usando a tag <c:url> ficamos livres para utilizar caminhos absolutos --%>
<c:url value="/images/ironman.png" var="imagem"/>
<img src="${imagem}" height="100"/>

<!-- Outra forma -->
<%-- <img src="<c:url value="/imagens/caelum.png" />" width="200" height="100"/> --%>

<!-- Caminho relativo -->
<!-- <img src="imagens/caelum.png" width="200" height="100"/> -->

<h2>Agenda de Contatos de Tassio Pinheiro</h2>
<hr />

-----------------------------
<hr />
Copyright 2020 - Todos os direitos reservados
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
	crossorigin="anonymous"></script>