<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tags:template titulo="Cadastro"
	subtitulo="Cadastro de candidatos do nosso Brasil">

	<c:url value="/candidato/cadastrar" var="a" />
	<form method="post" action="${a}">
		<div class="form-group">
			<label for="exampleFormControlInput1">Nome</label> <input name="nome"
				type="text" class="form-control" id="exampleFormControlInput1">
		</div>
		<div class="form-group">
			<label for="exampleFormControlTextarea1">Proposta</label>
			<textarea name="proposta" class="form-control"
				id="exampleFormControlTextarea1" rows="3"></textarea>
		</div>
		<div class="form-group">
			<input type="checkbox" name="corrupto" id="id-corrupto"> <label
				for="id-corrupto">Corrupto</label>
		</div>
		<div>
			<button type="submit" class="btn btn-outline-success my-2 my-sm-0"
				type="submit">CADASTRAR</button>
		</div>
	</form>

	<br>
	<c:if test="${not empty msg }">
		<div class="alert alert-success">${msg }</div>
	</c:if>

</tags:template>