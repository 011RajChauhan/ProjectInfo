<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resource</title>

	<link rel="stylesheet" href="<spring:url value="/resources/css/home.css" />" type="text/css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="<spring:url value="/resources/js/request.js"/>"></script>
	
	<script type="text/javascript">
		var contextPath = "${pageContext.request.contextPath}";
	</script>
	
</head>
<body>
	<!-- implementing form tags from spring in resources page -->
	<jsp:include page="../views/fragments/header.jsp"></jsp:include>
	
		<div class="container">
			<div class="row">
			<!-- spring from tag doesn't allow to embade url tag in action, so taking url in variable -->
				<spring:url value="/resource/review" var="resourceUrl"/>
				
				<form:form action="${resourceUrl}" method="post" cssClass="col-md-8 col-md-offset-2" modelAttribute="resource" >
				
					<div class="form-group">
						<label for="name">Name</label>
						<form:input path="name" class="form-control"></form:input> 
					</div>
					
					<div class="form-group">
						<label for="type">Type</label>
						<form:select path="type" items="${typeList}" cssClass="selectpicker form-control" />
					</div>
					
					<div class="form-group">
						<label for="cost">Cost</label>
						<form:input path="cost" class="form-control"></form:input>
					</div>
					
					<div class="form-group ">
						<label for="unitOfMeasure">Unit of Measure</label>
						<form:radiobuttons path="unitOfMeasure" items="${units}"></form:radiobuttons>
					</div>
					
					<div class="form-group">
						<label for="indicators">Indicators</label>
						<form:checkboxes path="indicators" cssClass="radForm" items="${indicators}"></form:checkboxes>
						<a id="request-link" href="<spring:url value="/resource/request"/>">Request Email</a>
					</div>
					
					<div class="form-group">
						<label for="notes">Notes</label>
						<form:textarea path="notes" class="form-control" rows="3"></form:textarea>
					</div>
					
					<button type="submit" class="btn btn-default">Submit</button>
				</form:form>
			</div>
		</div>
</body>
</html>