<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
	<head>
		<title>Home</title>
	</head>
	
	<body>
		<h1>
			${lableGameName}  
		</h1>
		
		<form action="game" method="post">
				<input type="submit" name="startButton" value="Start game"/>
		</form>
	</body>
</html>
