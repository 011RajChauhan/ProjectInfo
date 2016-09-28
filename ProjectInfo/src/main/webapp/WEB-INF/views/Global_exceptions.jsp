<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project Manager</title>

	<%-- <link rel="stylesheet" href="<spring:url value="/resources/css/home.css" />" type="text/css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> --%>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="<spring:url value="/resources/css/home.css" />" type="text/css" >
	<link rel="stylesheet" href="<spring:url value="resources/css/boostrap-select.select.min.css"/>" type="text/css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="<spring:url value="resource/js/bootstrap-select.min.js"/>"></script>
	<script src="<spring:url value="resource/js/loginValidation.js"/>"></script>
	
	
		
</head>
<body>
	<!-- simple page with html tags -->
	
	<jsp:include page="../views/fragments/header.jsp"></jsp:include>
	
	<!-- changed simple html form to use spring form tag library -->
	
		<h1>Global Exception Handled by HandlerExceptionResolver interface</h1>
</body>
</html>