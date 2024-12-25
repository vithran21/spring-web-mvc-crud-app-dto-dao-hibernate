<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Task</title>
</head>
<body>
	<div align="center">
		<form action="executeTask" method="post">
			<label for="count">Enter the Count:</label>
			<input id="count" type="number" name="count" value="1">
			<br><br>
			<label for="size">Enter the Size:</label>
			<input id="size" type="number" name="size" value="1" min="10px">
			<br><br>
			<label>Do you want random colors?</label>
			<input type="radio" name="israndomcolor" value="true">Yes</input>
			<input type="radio" name="israndomcolor" value="false">No</input>
			<br><br>
			<button>Generate</button>
		</form>

	</div>
</body>
</html>