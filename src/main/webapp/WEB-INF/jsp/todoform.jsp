
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>

<%@ page isELIgnored="false"%>

<title>Login Form</title>
</head>
<body bgcolor="white">

	<h2>Hello Mr:User ${user.uname}</h2>

	<table id="customers">
		<tr>
			<th>desc</th>
			<th>Datee</th>
			<th>status</th>
		</tr>
		<c:forEach items="${todo}" var="item">
			<tr>
				<td>${item.desc}</td>
				<td>${item.targetedDate}</td>
				<td>${item.isDone}</td>

			</tr>
		</c:forEach>
	</table>

	<a href="add-todo">Add to-do</a>
</body>
</html>