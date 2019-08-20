
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>

<%@ page isELIgnored="false"%>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>Add-todo</title>

</head>

<body bgcolor="white">

<div class="container">

	<h1>Hello todo</h1>

	<form:form action="/todoresp" method="post" modelAttribute="todo">
		<table style="with: 50%">

			<tr>
			
				<td>Desc</td>
				<td><form:input path="desc" name="name" /></td>
			</tr>
			<tr>
				<td>isDone</td>
				<td><form:input path="isDone" /></td>
			</tr>
			<tr>
				<td>Date</td>
				<td><form:input path="targetedDate" /></td>
			</tr>
			<tr>
				<td>id</td>
				<td><form:input path="id" /></td>
			</tr>
		</table>
		<input class="btn btn-success"  type="submit" value="Add" />
	</form:form>
	</div>

</body>
</html>