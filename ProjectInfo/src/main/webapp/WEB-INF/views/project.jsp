<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project Details</title>

	<link rel="stylesheet" href="<spring:url value="/resources/css/home.css"/>" type="text/css"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.
	7/js/bootstrap.min.js"></script>
	
</head>
<body>
		<jsp:include page="../views/fragments/header.jsp"/>
		
		<div class="container">
			<div class="row">
					
					<div class="form-group">
						<label for="project-name">Project ID</label>
						<span>${project.projectId }</span>
					</div>
					
					<div class="form-group">
						<label for="project-name">Name</label>
						<span>${project.name }</span>
					</div>
					
					<div class="form-group">
						<label for="project-type">Type</label>
						<span>${project.type }</span>
					</div>
					
					<div class="form-group">
						<label for="sponsor">Sponsor</label>
						<span>${project.sponsor }</span>
					</div>
					
					<div class="form-group">
						<label for="sponsor">Description</label>
						<span>${project.description }</span>
					</div>
					
					<div class="form-group">
						<label for="sponsor">Authorized Hours</label>
						<span>${project.authorizedHours }</span>
					</div>
					
					<div class="form-group">
						<label for="sponsor">Authorized Funds</label>
						<span>${project.authorizedFunds }</span>
					</div>
					
					<div class="form-group">
						<label for="sponsor">Year</label>
						<span>${project.year }</span>
					</div>
					
				</div>	
			</div>
		
</body>
</html>