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
	
		<div class="container">
			<div class="row">
				<spring:url value="/project/add" var="formUrl"/>
				<form:form id="email_form" method="post" class="col-md-8 col-md-offset-2" modelAttribute="project" onsubmit="check();">
				
					<div class="form-group">
						<label for="project-name">Name</label>
						<form:input path="name" class="form-control"/>
					</div>
					
					<div class="form-group">
						<label for="type">Type</label>
						<form:select path="type" items="${type}" cssClass="selectpicker form-control" multiple="false"/>
					</div>
					
					<div class="form-group">
						<label for="sponsor">Sponsor Name</label>
						<form:input  path="sponsor.name"
								class="form-control"/>
					</div>
					
					<div class="form-group">
						<label for="sponsor">Sponsor Email</label>
						<form:input path="sponsor.email" id="email"
								class="form-control"/>
					</div>
					
					<div class="form-group">
						<label for="sponsor">Sponsor Contact</label>
						<form:input path="sponsor.contact"
								class="form-control"/>
					</div>
					
					<div class="form-group">
						<label for="poc1">Point of Contact 1</label>
						<form:input path="pointOfContact[0]"
								class="form-control"/>
					</div>
					
					<div class="form-group">
						<label for="poc2">Sponsor Contact</label>
						<form:input path="pointOfContact[1]"
								class="form-control"/>
					</div>
					
					<div class="form-group">
						<label for="funds">Authorized Funds</label>
						<form:input path="authorizedFunds"
									class="form-control"/>
					</div>
					
					<div class="form-group">
						<label for="hours">Authorized Hours</label>
						<form:input path="authorizedHours"
									class="form-control"/>
					</div>
					
					<div class="form-group">
						<label for="hours">Year</label>
						<form:input path="year"
									class="form-control"/>
					</div>
					
					<div class="form-group">
						<label for="project-name">Description</label>
						<form:textarea class="form-control" rows="3" path="description"></form:textarea>
					</div>
					
					<div class="form-group">
						<label for="special">special</label>
						<form:checkbox path="special" ></form:checkbox>
					</div>
					
					<button type="submit" class="btn btn-default">Submit</button>
				</form:form>
			</div>
		</div>
		
		<script>
			function validate(form_id,email){
				var reg = "/^([A-Za-z0-9_\-\.]){1,}\@([A-Za-z0-9_\-\.]){1,}\.([A-Za-z]{2,4})$/";
				var address = document.forms[form_id].elements[email].value;
				
				if(reg.test(address)==false){
					alert('error');
					document.forms[form_id].elements[email].focus;
					
					return false;
				}
				
				function check(){
					alert('ccccc');
				}
			}
			
			function ValidateEmail(email) {
		        var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		        return expr.test(email);
		    };
			
			$('#email').onblur(function() {
			    alert('ok')
			    /* check with two conditions
			    and for events try with onchange and blur */
			    if (!ValidateEmail($("#email").val())) {
			    	  $(":submit").attr("disabled", true);
           	 alert("Invalid email address.");
       			 }
			    else {
			    	alert('valid');
			        $(":submit").removeAttr("disabled");
			      }
			});
		</script>
</body>
</html>