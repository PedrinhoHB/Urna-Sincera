<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tags:template titulo="Candidatos"
	subtitulo="Lista dos candidatos para votação">


	<table class="table">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">NOME</th>
				<th scope="col">PROPOSTA</th>
				<th scope="col">CORRUPTO</th>
				<th scope="col"></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${candidatos}" var="can">
				<tr>
					<th scope="row">${can.id}</th>
					<td>${can.nome}</td>
					<td>${can.proposta}</td>
					<td>${can.corrupto}</td>
					<td><button onclick="codigoCandidatoExcluir.value = ${can.id}"
							type="button" class="btn btn-outline-danger my-2 my-sm-0"
							data-toggle="modal" data-target="#exampleModal">EXCLUIR</button></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<br>
	<c:if test="${not empty msg }">
		<div class="alert alert-success">${msg }</div>
	</c:if>

	<!-- Modal de Excluir -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Confirmação</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">Deseja realmente excluir o condidato?
				</div>
				<div class="modal-footer">
					<form action="<c:url value="/candidato/excluir"/>" method="post">
						<input type="hidden" id="codigoCandidatoExcluir" name="id">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Não</button>
						<button type="submit" class="btn btn-danger">Sim</button>
					</form>
				</div>
			</div>
		</div>
	</div>


</tags:template>