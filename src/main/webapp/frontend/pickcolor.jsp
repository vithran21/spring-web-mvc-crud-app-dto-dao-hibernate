<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Task</title>
</head>
<body>
<div align="center">
		<form action="generatetaskwithusercolor" method="post">
			<label for="count">Enter the Count:</label>
			<input id="count" type="number" name="count" value="${count}">
			<br><br>
			<label for="size">Enter the Size:</label>
			<input id="size" type="number" name="size" value="${size}">
			<br><br>
			<label for="color">Pick your Color: </label>
			<input id="color" type="color" name="color">
			<br><br>
			<button>Generate</button>
		</form>

	</div>
</body>
</html>