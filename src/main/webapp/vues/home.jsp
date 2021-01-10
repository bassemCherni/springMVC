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
				Shipment list:
			</div>
		</div>
		
		<br>
		
		<table class="table table-dark">
			<thead>
				<tr>
					<th>ID</th>
					<th>DESCRIPTION</th>
					<th>WEIGHT</th>
					<th>LIST OF BOXES</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list_ship}" var="ls">
					<tr>
						<th>${ls.id}</th>
						<th>${ls.description}</th>
						<th>${ls.weight}</th>
						<th><a href="${cxt}/box-list/${ls.id}">box-list</a> </th>
					</tr>				
				</c:forEach>
			</tbody>
		</table>
		<br>
		<a href="${cxt}/add-shipment">add new shipment</a>
	</div>
</body>
</html>