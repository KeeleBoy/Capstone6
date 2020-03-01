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
<title>Home</title>
<%@ include file="partials/header.jsp"%>
</head>
<body>
	<h1>HOME PAGE</h1>
	<ul>

		<li><a href="/user-add" class="btn btn-secondary">Add new user</a></li>
		<li><a href="/user-list" class="btn btn-secondary">List users</a></li>
		<li><a href="/login" class="btn btn-secondary">Log in :D</a></li>
	</ul>
	<!-- ON NUMBER 7 of the setup -->

</body>
</html>