<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.flex{
	display:flex;
	align-items: center;
	gap:1rem;
	border-bottom:1px solid black;
}
h2{
	line-height: 0;
}
p{
	font-size:1.25em;
}


</style>
<title>Assignment 2 question 8</title>
</head>
<body>
	<c:set var="demoStr" value="  Hello world! user  "/>
	
	<div class="flex">
		<h2>Boolean contains(String, String): </h2>
		<p><c:out value="${fn:contains(demoStr, 'Hello')}"/></p>
	</div>
	<div class="flex">
		<h2>Boolean containsIgnoreCase(String, String): </h2>
		<p><c:out value="${fn:containsIgnoreCase(demoStr,'world')}" /> </p>
	</div>
	<div class="flex">
		<h2>Boolean endsWith(String, String): </h2>
		<p><c:out value="${fn:endsWith(demoStr,'world')}" /> </p>
	</div>
	<div class="flex">
		<h2>String escapeXml(String, String): </h2>
		<p><c:out value="${fn:escapeXml('<Hello & World>')}" /> </p>
	</div>
	<div class="flex">
		<h2>Int indexOf(String, String): </h2>
		<p><c:out value="${fn:indexOf(demoStr,'Hello')}"/> </p>
	</div>	
	<div class="flex">
		<h2>Int length(Object): </h2>
		<p><c:out value="${fn:length(demoStr)}"/> </p>
	</div>
	<div class="flex">
		<h2>String replace(String, String, String): </h2>
		<p><c:out value="${fn:replace(demoStr,'world!','Java')}"/> </p>
	</div>
	<div class="flex">
		<h2>Boolean startsWith(String, String): </h2>
		<p><c:out value="${fn:startsWith(demoStr,'world')}" /> </p>
	</div>
	<div class="flex">
		<h2>String substring(String, int, int): </h2>
		<p><c:out value="${fn:substring(demoStr, 6, 12)}" /> </p>
	</div>
	<div class="flex">
		<h2>String substringAfter(String, String): </h2>
		<p><c:out value="${fn:substringAfter(demoStr, 'Hello')}" /> </p>
	</div>
	<div class="flex">
		<h2>String substringAfter(String, String): </h2>
		<p><c:out value="${fn:substringBefore(demoStr, 'user')}" /> </p>
	</div>
	<div class="flex">
		<h2>String toLowerCase(String): </h2>
		<p><c:out value="${fn:toLowerCase(demoStr)}" /> </p>
	</div>
	<div class="flex">
		<h2>String toLowerCase(String): </h2>
		<p><c:out value="${fn:toUpperCase(demoStr)}" /> </p>
	</div>
	<div class="flex">
		<h2>String trim (String): </h2>
		<p><c:out value="${fn:trim(demoStr)}" /> </p>
	</div>
</body>
</html>