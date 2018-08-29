<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<c:url var="actionAdicionar" value="/corretores/adicionar"></c:url>
<div class="logincorretor-box">

<h1>Corretor</h1>
<br />
<form:form action="${actionAdicionar}" method="post" modelAttribute="corretor">
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label>Código:</label>
				<form:input path="codigo" cssClass="form-control" />
				<form:errors path="codigo" cssStyle="color: red;"></form:errors>
			</div>
		</div>
	</div>
	<input type="submit" value="Confirmar!" class="btn btn-default" />
<a href="/projetomodelo/home/principal">Principal</a>
</form:form>
</div>