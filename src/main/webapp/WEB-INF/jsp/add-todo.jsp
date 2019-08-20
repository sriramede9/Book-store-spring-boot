
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>

<%@ page isELIgnored="false"%>

<title>Add-todo</title>

</head>

<body bgcolor="white">

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
		<input type="submit" value="Login" />
	</form:form>

</body>
</html>