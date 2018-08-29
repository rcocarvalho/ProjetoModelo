<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url var="actionAdicionar" value="/corretores/adicionarDados"></c:url>

<div class="logincorretor-box">
<h1>Corretor</h1>

<form:form action="${actionAdicionar}" method="post" modelAttribute="corretor">
	
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<form:input path="id" readonly="true" type="hidden"/>
				<label>Código: </label>
				<form:input path="codigo" cssClass="form-control" readonly="true" />
				<form:errors path="codigo" cssStyle="color: red;"></form:errors>				
			</div>
		</div>
	</div>	
	
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label>Nome: </label>
				<form:input path="nome" cssClass="form-control" placeholder="Digite seu nome" />
				<form:errors path="nome" cssStyle="color: red;"></form:errors>
			</div>
		</div>
	</div>	
	<input type="submit" value="Confirmar!" class="btn btn-default" />
		<a href="/projetomodelo/home/principal" class="btn btn-default">Principal</a>
</form:form>
</div>

