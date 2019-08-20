
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>

<%@ page isELIgnored="false"%>

<title>Login Form</title>
</head>
<body bgcolor="white">

	<h1>Hello login </h1>

	<form:form action="/resp" method="post" modelAttribute="user">
		<table style="with: 50%">

			<tr>
				<td>UserName</td>
				<td><form:input path="uname"  name="name"/></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><form:input type="password" path="pwrd" /></td>
			</tr>
		</table>
		<input type="submit" value="Login" />
	</form:form>

</body>
</html>