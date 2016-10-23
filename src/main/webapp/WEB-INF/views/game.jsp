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
				  	<select class="form-control" id="sel1">
					    <option>uk</option>
					    <option>en</option>
			  		</select>
				</div>
				<div class="form-group">
				  	<label class="lable" for="sel1">Select level:</label>
				  	<select class="form-control" id="sel1">
					    <option>1</option>
					    <option>2</option>
					    <option>3</option>
			  		</select>
				</div>
			</div>
			<div class="game-content">
				<form action="game" method="post">
					<input class="btn-lg" type="submit" name="newWord" value="New Word"/>
				</form>
				<div class="panel panel-default">
 					<div class="panel-body">Трамбон</div>
				</div>
			</div>			
		</div>

	</body>
</html>