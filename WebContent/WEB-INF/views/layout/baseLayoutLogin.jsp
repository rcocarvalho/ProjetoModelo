<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<spring:url value="/resources/css/telalogin.css" var="telaloginCSS"></spring:url>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><tiles:insertAttribute name="title" ignore="true"></tiles:insertAttribute></title>

<script type="text/javascript" src="${jqueryJS}"></script>
<link href="${telaloginCSS}" rel="stylesheet" />
</head>
<body>

	<div style="width: 100%; margin: 2%;">
		<tiles:insertAttribute name="body" ignore="false"></tiles:insertAttribute>
	</div>

</body>
</html>