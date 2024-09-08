<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assignment 2 Question 4</title>
</head>
<body>
<%
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	
    String DBUrl = "jdbc:oracle:thin:@localhost:1521:xe"; 
    String DBUser = "ROOT";
    String DBPassword = "1234";
    
    Connection conn = null;
    String message = "Welcome, "+username;
    
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(DBUrl, DBUser, DBPassword);
		PreparedStatement pstmt=conn.prepareStatement("SELECT * FROM users WHERE username = ? AND password = ?");
        pstmt.setString(1,username);
		pstmt.setString(2,password);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()){
            request.setAttribute("message",message);
            request.getRequestDispatcher("success.jsp").forward(request, response);
		}else{
			request.setAttribute("message","Invalid Email or Password!");
            request.getRequestDispatcher("success.jsp").forward(request, response);
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		conn.close();
	}
%>

</body>
</html>