<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />
<meta charset="ISO-8859-1">
<title>Show user</title>
</head>
<body>

	<%@ include file="partials/header.jsp"%>

	<main>

		<section class="container-fluid">
			<p class="lead">Hello User!</p>
		</section>
		<section class="jumbotron">
			<h2>${user.username}</h2>



		</section>
		<section class="container">

			<%-- 	<c:forEach var="pokemon" items="${trainer.pokemons}">

				<p class="lead">name:${pokemon.name} level: ${pokemon.level}</p>


			</c:forEach> --%>


		</section>



	</main>

</body>
</html>