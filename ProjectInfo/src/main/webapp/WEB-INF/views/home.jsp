<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Project Manager</title>

	<link rel="stylesheet" href="<spring:url value="/resources/css/home.css"/>" type="text/css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
</head>
<body>
	<jsp:include page="../views/fragments/header.jsp"></jsp:include>
	
	<div class="container">
	
		<h1>Current Project</h1>
		
		 <ul class="list-group">
			<li class="list-group-item"><label>Project Name:</label><span>${currentProject.name }</span></li>
			<li class="list-group-item"><label>Sponsar Name:</label><span>${currentProject.sponsor.name }</span></li>
			<li class="list-group-item"><label>Sponsar Email:</label><span>${currentProject.sponsor.email }</span></li>
			<li class="list-group-item"><label>Sponsar Contact:</label><span>${currentProject.sponsor.contact }</span></li>
			<li class="list-group-item"><label>Project Description:</label><span>${currentProject.description }</span></li>
		</ul> 
		
	</div>
</body>
</html>