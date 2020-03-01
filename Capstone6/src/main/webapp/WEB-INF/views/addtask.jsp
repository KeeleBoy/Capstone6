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
<title>Add new task!</title>
</head>
<body>
<h1></h1>

	<form action="/accept" method="post">
		<input type="hidden" name="id" value="${task.id}" />

		<div class="form-group">
			<label for="name">Name</label> <input class="form-control" id="name"
				name="name" value="${task.name}" required minlength="2"
				autocomplete="off">
		</div>

		<div class="form-group">
			<label for="description">Description</label> <input
				class="form-control" id="description" name="description"
				value="${task.description}" required minlength="3">
		</div>

		<div class="form-group">
			<label for="duedate">Due Date</label> <input class="form-control"
				id="duedate" type="date" name="dueDate" value="${task.dueDate}" required>
		</div>

		<div class="form-group">
			<label for="complete">Complete</label> <input class="form-control"
				id="complete" type="checkbox" name="complete" value="true">
		</div>
		
		<input type="hidden" name="user" value="${user.id}">

		<button type="submit" class="btn btn-primary">Submit</button>
		<a href="/" class="btn btn-link">Back home</a>
	</form>


</body>
</html>