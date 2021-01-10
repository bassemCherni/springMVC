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
		<div class="panel panel-danger">
			<div class="panel-body">
				<p> Shipment ${sh.description} :</p>
			</div>
		</div>
		
		<br>
		
		<table class="table table-dark">
			<thead>
				<tr>
					<th>ID</th>
					<th>DESCRIPTION</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list_box}" var="lb">
					<tr>
						<th>${lb.id}</th>
						<th>${lb.description}</th>
						
					</tr>				
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>