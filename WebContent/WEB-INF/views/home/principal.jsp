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

				<h2>Sistema de Correção</h2>
				Sistema exclusivo para correção de provas discursivas e redação dos
				eletivos de.... ashington, 20 - Após a cúpula entre Estados Unidos e
				Rússia, em Helsinque, o presidente americano, Donald Trump, passou a
				semana dando declarações contraditórias sobre o que aconteceu em sua
				reunião privada com o presidente russo, Vladimir Putin, e gerando
				curiosidade sobre o que os dois líderes de fato conversaram a sós.<p>

				Em meio às especulações, o registro da história mundial poderia se
				beneficiar das únicas testemunhas que presenciaram a conversa: os
				intérpretes, uma para Trump e um para Putin. Neste sentido, alguns
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