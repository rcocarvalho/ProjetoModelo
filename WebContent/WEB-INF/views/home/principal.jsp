<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
	<h1>
		<center>Bem-vindo, ${principal.username }</center>
	</h1>
</sec:authorize>

<div class="container">
	<div class="row">
		<div class="col col-content">
			<div class="centro">

				<h2>Sistema de Corre��o</h2>
				Sistema exclusivo para corre��o de provas discursivas e reda��o dos
				eletivos de.... ashington, 20 - Ap�s a c�pula entre Estados Unidos e
				R�ssia, em Helsinque, o presidente americano, Donald Trump, passou a
				semana dando declara��es contradit�rias sobre o que aconteceu em sua
				reuni�o privada com o presidente russo, Vladimir Putin, e gerando
				curiosidade sobre o que os dois l�deres de fato conversaram a s�s.<p>

				Em meio �s especula��es, o registro da hist�ria mundial poderia se
				beneficiar das �nicas testemunhas que presenciaram a conversa: os
				int�rpretes, uma para Trump e um para Putin. Neste sentido, alguns
				democratas querem que Marina Gross, a tradutora americana fale sobre
				o que aconteceu.


			</div>
		</div>
		<div class="col col-sidebar">
			<div class="esquerdo">
				<h3>CADASTRO</h3>
				<a href="/projetomodelo/corretores/adicionar">Corretor</a><br>
				<a href="xx1">Coordenador geral</a><br>
				<a href="xx2">Oridentador de grupo</a><br>
				<a href="xx3">Prova</a><br>
				<a href="xx4">Disciplina</a><br>		
			</div>
		</div>
	</div>
</div>