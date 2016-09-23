$(document).ready(function(){
	$("#request-link").click(function(e){
		e.preventDefault();
		$.post(contextPath+"/resource/request",$("form").serialize(),function(data){
			alert(data);
		});
		return false;
	});
});