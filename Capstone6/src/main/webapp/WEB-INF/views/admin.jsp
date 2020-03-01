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
<title>Fun administrator page</title>
</head>
<body>
	<table>
		<tr>
			<th>Name</th>
			<th>Description</th>
			<th>Due date</th>
			<th>Complete</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>

		<c:forEach var="task" items="${tasks}">
			<!-- Use bean map to map objects -->

			<tr>
				<td>${task.name}</td>
				<td>${task.description}</td>
				<td>${task.duedate}</td>
				<td>${task.complete}</td>
				<!-- <td><a href="/edit" class="btn btn-secondary">Edit item</a></td> -->

				<!-- BELOW IS HOW YOU FORCE ID INTO THE CONTROLLER -->
				<td><a href="/edit?id=${ task.id }" class="btn btn-secondary">Edit</a></td>

				<td><a href="/delete?id=${ task.id }" class="btn btn-secondary">Delete</a></td>
				<!-- onclick="return confirm('want to delete')" -->
			</tr>


		</c:forEach>

	</table>


</body>
</html>