<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
	<head>
		<title>Crocodile</title>		
		<spring:url value="/resources/core/css/game.css" var="gameCss"/> 
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">		
		<link rel="stylesheet" href="${gameCss}">		
	 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
	 	<c:url var="home" value="/" scope="request" />	
	</head>
	
	<body>
		<div class="content">	
			<form id="form">
			<div class="config-content">
				<div class="rules">
					  <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Rules</button>
					  <div id="demo" class="collapse">
					    Правила в розробці )
					  </div>
				</div>
				
				<div class="form-group">
				  	<label class="lable" for="language">Select language:</label>
				  	<select class="form-control" name="language" id="language">
					    <option>uk</option>
					    <option>en</option>
			  		</select>
				</div>
				<div class="form-group">
				  	<label class="lable" for="level">Select level:</label>
				  	<select class="form-control" name="level" id="level">
					    <option>1</option>
					    <option>2</option>
					    <option>3</option>
			  		</select>
				</div>
			</div>
			<div class="game-content">
				<button class="btn-lg" type="submit" id="btn">New Word</button>
				<div class="panel panel-default">
 					<div class="panel-body" id="word">Click button "New Word"</div>
				</div>
			</div>	
			</form>		
		</div>
		
		<script type="text/javascript">
		$("#form").submit(function(event){
			event.preventDefault();
			var form = $(this);
			var formData = form.serialize();
			console.log( "formData = "+ formData  );
			
			$.ajax({
				type : "POST",
				url : "${home}api/word",
				data : formData,
				dataType : "text",
				success : function(data){
					console.log("SUCCESS: ", data);
					$("#word").text(data);
				},
				error : function(e) {
					console.log("ERROR: ", e);
				},
				done : function(e) {
					console.log("DONE");
				}
			});
		});
		</script>
	</body>
</html>