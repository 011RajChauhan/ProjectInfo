<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> --%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	header
</body>
</html> -->

<nav class="navbar navbar default">
	<div class="container-fluid">
		
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Project Management</a>
		</div>
		
		<ul class="nav navbar-nav">
		
			<li><a href="#">Home</a></li>
			
			<li class="dropdown">
			
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-expanded="false">Projects<span class="caret"></span></a>
						
				<ul class="dropdown-menu" role="menu">
					<li><a href="<spring:url value="/project/add"/>">Add</a></li>
					<li><a href="<spring:url value="/project/find"/>">Find</a></li>
				</ul>
				
			</li>
			
			<li class="dropdown">
			
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-expanded="false">Resources<span class="caret"></span></a>
						
				<ul class="dropdown-menu" role="menu">
					<li><a href="<spring:url value="/resource/add"/>">Add</a></li>
					<li><a href="<spring:url value="/project/find"/>">Find</a></li>
				</ul>
				
			</li>
			
			</ul>
	</div>
</nav>