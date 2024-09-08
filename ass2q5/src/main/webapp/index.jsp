<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assignment 2 Question 5</title>
</head>
<body>
	<h1>Check whether given mail ID is valid or not</h1>
	<form action="checker.jsp" method="POST">
		<label for="email">Email : </label>
		<input type="text" name="email" id="email" placeholder="Email" />
		<br>
		<br>
		<div>
			<button type="submit">Check</button>
		</div>
	</form>
</body>
</html>