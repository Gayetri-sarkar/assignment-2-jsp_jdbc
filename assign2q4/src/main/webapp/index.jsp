<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assignment 2 Question 4</title>
</head>
<body>
	<h1>Credentials</h1>
	<form action="Checker.jsp" method="POST">
		<div>
			<label for"username">Username:</label>
			<input type="text" name="username" id="username" placeholder="Username"/>
		</div>
		<br>
		<div>
			<label for"password">Password:</label>
			<input type="password" name="password" id="password" placeholder="Password"/>
		</div>
		<br/>
		<br>
		<div>
			<button type="submit">Login</button>
		</div>
	</form>
</body>
</html>