<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String username=request.getParameter("username");
	String age=request.getParameter("userage");
	int checkAge;
	if(username != "" && age != ""){
		try{
			checkAge=Integer.parseInt(age);
		}catch(NumberFormatException e){
			out.println("<h1>Invalid Age</h1>");
			return;
		}
        if (checkAge < 18) {
            out.println("<h1>Hello " + username + ", you are not authorized to visit the site.</h1> <br><br>");
        } else {
            out.println("<h1>Welcome " + username + " to this site.</h1> <br><br>");
        }
	}else{
		out.println("<h1>Required all fields</h1>");
	}
%>
<a href="index.html">Back</a>
</body>
</html>