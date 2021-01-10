<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<spring:url value="/resources/bootstrap" var="bt"/>
<link href="${bt}/css/bootstrap.min.css" rel="stylesheet">
<c:set value="${pageContext.request.contextPath}" var="cxt"/>
</head>
<body>
	<div class="container">
		<div class="alert alert-danger">
			<div class="panel-body">
				<h3>Add New Box:</h3>
			</div>
		</div>
	
		<br>
	
		<form:form action="save-box" method="POST" modelAttribute="box" class="form-group">
			
			<p>description: <form:input path="description" class="form-control"/></p>
			<p>shipment: <form:select path="shipment.id" 
									  items="${list_ship}" 
									  itemLabel="description" 
									  itemValue="id" 
									  class="form-control"></form:select> </p>
			<p> <input type="submit" value="save"/> </p>
		</form:form>
	</div>
</body>
</html>