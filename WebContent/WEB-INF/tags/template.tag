<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="titulo" required="true"%>
<%@ attribute name="subtitulo" required="treu"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC | ${titulo }</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">Urna Sincera</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<c:url value="/candidato/cadastrar"/>">Cadastrar</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<c:url value="/candidato/listar"/>">Candidatos</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input name="id" class="form-control mr-sm-2" type="search"
					placeholder="Pesquise por ID" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Pesquisar</button>
			</form>
		</div>
	</nav>

	<h3>${subtitulo }</h3>

	<div class="container">

		<jsp:doBody />

		<p>Todos os direitos reservados &copy; - 2018</p>
	</div>
	<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>

</body>
</html>