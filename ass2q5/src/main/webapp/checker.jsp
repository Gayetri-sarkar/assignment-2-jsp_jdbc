<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.regex.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Email Validation</title>
</head>
<body>

<%
    String email = request.getParameter("email");

    // Define the regex pattern for a valid email address
    String emailRegex = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$";

    // Compile the pattern and match against the input
    Pattern pattern = Pattern.compile(emailRegex);
    Matcher matcher = pattern.matcher(email);

    if (matcher.matches()) {
%>		
        <h1><%= email %> is a valid email</h1>
        <a href="index.jsp">Back</a>
<%
    } else {
%>
        <h1><%= email %> is an invalid email</h1>
        <p>Please enter a valid email address in the format: example@example.com</p>
        <a href="index.jsp">Back</a>
<%
    }
%>

</body>
</html>
