<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assignment 2 Question 7</title>
</head>
<body>
<%
	int empID = Integer.parseInt(request.getParameter("empid"));
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String desg = request.getParameter("desg");
	double salary =Double.parseDouble(request.getParameter("salary"));
		
    String DBUrl = "jdbc:oracle:thin:@localhost:1521:xe"; 
    String DBUser = "ROOT";
    String DBPassword = "1234";
    
    Connection conn = null;
    Boolean message = false;
	
	try{
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(DBUrl, DBUser, DBPassword);
		PreparedStatement pstmt=conn.prepareStatement("insert into employees values (?,?,?,?,?)");
        pstmt.setInt(1,empID);
		pstmt.setString(2, name);
        pstmt.setInt(3, age);
        pstmt.setString(4, desg);
        pstmt.setDouble(5, salary);
        
        int rowsAffected = pstmt.executeUpdate();
		 
       	if(rowsAffected > 0){
       		message=true;
       	}
        
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		 conn.close();
	}
%>
<% if(message){ %>
	<h1>Updating Success</h1>
<% }else{ %>
	<h1>Updating Error</h1>
<%} %>
</body>
</html>