<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assignment 2 Question 6</title>
</head>
<body>
	<h1>Use of Intrinsic Objects in JSP</h1>
	<div>
		<h3>Request Object</h3>
		<p>Query String: <%= request.getQueryString() %></p>
		<p>Context Path: <%= request.getContextPath() %></p>
		<p>Remote Host: <%= request.getRemoteAddr() %></p>
	</div>
	<div>
		<h3>Response Object</h3>
		<p>Character Encoding: <%= pageContext.getResponse().getCharacterEncoding() %></p>
		<p>Content Type: <%= response.getContentType() %></p>
	</div>
	<div>
		<h3>Session Object</h3>
		<p>ID: <%= session.getId() %></p>
    	<p>Creation Time: <%= new java.util.Date(session.getCreationTime()) %></p>
    	<p>Last Access Time: <%= new java.util.Date(session.getLastAccessedTime()) %></p>
	</div>
</body>
</html>