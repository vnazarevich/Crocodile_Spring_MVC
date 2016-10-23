<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
	<head>
		<title>Home</title>
		<spring:url value="/resources/core/css/home.css" var="homeCss"/> 
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		
		<link rel="stylesheet" href="${homeCss}">
	 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	 	
	</head>
	
	<body>
		<div class="welcome-prop">		
		</div>

		<div class=btn-start-game-container>
			<h1 class="lable-game">
				${lableGameName}  
			</h1>
			<form action="game" method="post">
					<input class="btn-lg" type="submit" name="startButton" value="Start game"/>
			</form>
		</div>
	</body>
</html>
