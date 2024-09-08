<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.time.LocalDateTime, java.time.Duration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assignment 2 Question 1</title>
</head>
<body>
<%
	if(session.getAttribute("username") !=null){
		String user = (String) session.getAttribute("username");
		LocalDateTime time = (LocalDateTime) session.getAttribute("time");
		
		LocalDateTime now= LocalDateTime.now();
		Duration duration=Duration.between(time,now);
%>
		<h1>Thank You, <%= user %>!</h1>
     	<p>You used the application for: <%= duration.toMinutes() %> minutes and <%= duration.getSeconds() %> seconds</p>
<%
	
	}
	else
	{
%>
 		<h1>No active session found.</h1>
<%
	}
%>
<% 	session.invalidate(); %>

<a href="index.jsp">Back to home</a>
</body>
</html>