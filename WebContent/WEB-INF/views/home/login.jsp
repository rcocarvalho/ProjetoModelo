<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
<head>
<title>Projeto Modelo MVC</title>
</head>
<body>
	<div class="login-box">

		<h1>Login</h1>
		<form action="/projetomodelo/login" method="post">
			<p>Usuário</p>
			<input type="text" name="username"
				placeholder="Digite aqui seu Usuário">
			<p>Senha</p>
			<input type="password" name="password"
				placeholder="Digite aqui sua Senha"> <input type="submit"
				value="Fazer login" class="btn btn-default" /> <a href="#">Esqueci
				Senha</a>
		</form>
	</div>
</body>
</html>