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
			<div class="config-content">
				<div class="rules">
					  <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Rules</button>
					  <div id="demo" class="collapse">
					    Правила в розробці )
					  </div>
				</div>
				<div class="form-group">
				  	<label class="lable" for="sel1">Select language:</label>
				  	<select class="form-control" id="language">
					    <option>uk</option>
					    <option>en</option>
			  		</select>
				</div>
				<div class="form-group">
				  	<label class="lable" for="sel1">Select level:</label>
				  	<select class="form-control" id="level">
					    <option>1</option>
					    <option>2</option>
					    <option>3</option>
			  		</select>
				</div>
			</div>
			<div class="game-content">
				<form id="form">
					<input type=text class="form-control" id="user">
					<input type=text class="form-control" id="tel">
					<!--  <input class="btn-lg" type="submit" id="btn-newWord" value="New Word"/> -->
					<button class="btn-lg" type="submit" id="btn">New Word</button>
				</form>
				<div class="panel panel-default">
 					<div class="panel-body" id="word">Трамбон</div>
				</div>
				<input class="btn-lg" type="submit" id="test" value="Test Ajax"/>
			</div>			
		</div>
		<script type="text/javascript">
		$("#form").submit(function(event){
			event.preventDefault();
			var formaData = "language:" + $("#language").val() + "," +
							"level:" + $("#level").val();
			//var formaData = "\"language:\"" + $("#language").val() + "," +
			//				"\"level:\"" + $("#level").val();
			//var form = $(this);
			//var formData = form.serialize();
			
			$.ajax({
				type : "POST",
				url : "${home}api/word",
				data : formaData,
				dataType : "String",
				success : function(data){
					console.log("SUCCESS: ", data);
					$("#word").text(data);
				},
				error : function(e) {
					console.log("ERROR: ", e);
					display(e);
				},
				done : function(e) {
					console.log("DONE");
				}
			});
		});
			$("#test").click(function(){
				data = {};
				data["a1"] = "3";			
				$.ajax({
					type : "POST",
					url : "${home}api/word",
					data : "level:1",
					dataType : 'text',
					success : function(data){
						console.log("SUCCESS: ", data);
						$("#word").text(data);
					},
					error : function(e) {
						console.log("ERROR: ", e);
						display(e);
					},
					done : function(e) {
						console.log("DONE");
					}
				});
			});
			
		</script>
	</body>
</html>