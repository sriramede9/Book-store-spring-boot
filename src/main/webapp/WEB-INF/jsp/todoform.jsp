
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>

<%@ page isELIgnored="false"%>

<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<title>Login Form</title>
</head>
<body bgcolor="white">

	<nav role="navigation" class="navbar navbar-default">
		<div class="">
			<a href="#" class="navbar-brand">To-Do</a>
		</div>
		<div class="navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="/login">Home</a></li>
				<li><a href="/list-todos">Todos</a></li>

			</ul>
				<ul class="nav navbar-nav navbar-right">
				<li><a href="/logout">Logout</a></li>

			</ul>
		</div>
	</nav>

	<h2>Hello Mr:User ${user.uname}</h2>

	<table id="customers" class="table table-striped">
		<tr>
			<th>desc</th>
			<th>Datee</th>
			<th>status</th>
			<th>Delete</th>
			<th>Update</th>
		</tr>
		<c:forEach items="${todo}" var="item">
			<tr>
				<td>${item.desc}</td>
				<td><fmt:formatDate value="${item.targetedDate}"
						pattern="dd/mm/yyyy" /></td>
				<td>${item.isDone}</td>
				<td><a type="button" class="btn btn-warning"
					href="/delete-todo?id=${item.id }">Delete</a></td>
				<td><a type="button" class="btn btn-success"
					href="/update-todo/${item.id }">update</a></td>

			</tr>
		</c:forEach>
	</table>
	<div>

		<a class="button" href="add-todo">Add to-do</a>


	</div>


	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script
		src="webjars/bootstrap-datepicker/1.0.1/js/bootstrap-datepicker.js"></script>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	

</body>
</html>