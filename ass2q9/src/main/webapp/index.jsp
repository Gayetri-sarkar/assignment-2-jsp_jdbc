<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assignment 2 question 9</title>
<style type="text/css">
div{
	border-bottom:1px solid black;
}
</style>
</head>
<body>
<h1>JSTL Core tag library</h1>
	<div>
		<h3>Catch</h3>
		<p>
			<c:catch var ="exception">
         		<% int x = 1/0;%>
      		</c:catch>
      		<c:if test = "${exception != null}">
      			There is an exception: ${exception.message}
      		</c:if>
		</p>
	</div>
	<div>
		<h3>Choose</h3>
		<p>
			<c:set var = "day"  value = "March"/>
		  	<p>Today is : <c:out value = "${day}"/></p>
		      <c:choose>
		         <c:when test = "${day == 'sunday'}">
		            Today is a holiday
		         </c:when>
		         <c:otherwise>
		            Invalid day....
		         </c:otherwise>
		      </c:choose>
		</p>
	</div>
	<div>
		<h3>If</h3>
		<p>
			<c:set var = "day"  value = "Sunday"/>
		  	<c:if test = "${day=='Sunday'}">
		  		<c:out value="Today is Sunday"/>
      		</c:if>
		</p>
	</div>
	<div>
		<h3>Import</h3>
		<span>import HTML tag</span>
		<p>
			<c:import url="demo.jsp"/>
		</p>
		<span>import data from url</span>
		<pre>
			<c:import var="data" url="https://guthib.com/"/>
			<c:out value="${data}" />
		</pre>
	</div>
	<div>
		<h3>forEach</h3>
		<p>
		    <c:forEach var="i" begin="1" end="10">
		        ${i}
		    </c:forEach>
		</p>
	</div>
	<div>
		<h3>ForToken</h3>
		<p>
	      <c:forTokens items = "java,python,javascript,ruby,c++" delims = "," var = "name">
	         <p>${name}</p>
	      </c:forTokens>
		</p>
	</div>
	<div>
		<h3>Out</h3>
		<p>
		<c:out value="Hello world"></c:out>
		</p>
	</div>
	<div>
		<h3>Param</h3>
		<p>
			<c:url var="myUrl" value="http://hello.com/">
				<c:param name="username" value="admin" />
			    <c:param name="password" value="1234" />
		   	</c:url>
		   	<c:out value="${myUrl}"></c:out>
		</p>
	</div>
	<div>
		<h3>URL</h3>
		<p>
		 <a href = "<c:url value = "https://guthib.com/"/>">GitHub</a>
		</p>
	</div>
</body>
</html>