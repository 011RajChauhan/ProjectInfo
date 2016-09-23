<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Projects</title>

	<link rel="stylesheet" href="<spring:url value="/resources/css/home.css"/>" type="text/css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.
	7/js/bootstrap.min.js"></script>
	
</head>
<body>
		<jsp:include page="../views/fragments/header.jsp"/>
		
		<div class="container">
			<h2>Projects</h2>
			<table class="table table-hover">
				<tbody>
					<tr>
						<th>Name</th><th>Sponsor</th><th>Description</th>
					</tr>
					<c:forEach items="${projects }" var="project">
					<tr>
						<td><a href="<spring:url
						 value="/project/${project.projectId }"/>">${project.name}</a></td>
						<td>${project.sponsor}</td>
						<td>${project.description}</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
</body>
</html>