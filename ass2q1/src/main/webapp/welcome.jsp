<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.time.LocalDateTime, java.time.Duration " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
   .time { 
   	float: right;
    }
</style>
<title>Assignment 2 Question 1</title>
</head>
<body>
<%
	String username=request.getParameter("username");
	if(session.getAttribute("username") == null){
		session.setAttribute("username", username);
		session.setAttribute("time",LocalDateTime.now());
	}
	username=(String) session.getAttribute("username");
	LocalDateTime time=(LocalDateTime) session.getAttribute("time");
	LocalDateTime now= LocalDateTime.now();
	Duration duration=Duration.between(time,now);

%>
	<div class="time">Start Time : <%= time %></div>
	<h1>Hello, <%=username %>!</h1>
	<form action="logout.jsp" method="post">
        <button type="submit">Logout</button>
    </form>
</body>
</html>