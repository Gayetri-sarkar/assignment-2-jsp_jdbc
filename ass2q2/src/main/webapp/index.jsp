<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th,td{
	padding:1rem;
}
th{
	background-color: skyblue;
}
</style>
<title>Assignment 2 Question 2</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies !=null){
		out.println("<h1>Cookies List</h1>");
		out.println("<table>");
		out.println("<tr><th>Name</th><th>Value</th></tr>");
		for(Cookie cookie : cookies){
            out.println("<tr>");
            out.println("<td>" + cookie.getName() + "</td>");
            out.println("<td>" + cookie.getValue() + "</td>");
            out.println("</tr>");
		}
		out.println("</table>");
%>
<% }else{%>
	<h1>NO Cookies Found!</h1>
<% }%>
</body>
</html>