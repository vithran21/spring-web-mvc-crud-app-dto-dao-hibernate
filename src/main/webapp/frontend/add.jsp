<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>
</head>
<body>
	<div>
		<form action="add" method="post" align="center"
			style="background-color: yellow; border-bottom-width: 2px; border-color: green;">
			<label for="ename">Emp Name: </label> <input id="ename" name="name">
			<br>
			<br>
			<br> <label for="mob">Mobile: </label> <input id="mob"
				type="tel" name="mobile"> <br>
			<br>
			<br> <label for="dom">Domain: </label> <input id="dom"
				name="domain"> <br>
			<br>
			<br> <label for="email">Email: </label> <input id="email"
				type="email" name="email"> <br>
			<br>
			<br> <label for="sal">Salary: </label> <input id="sal"
				name="salary"> <br>
			<br>
			<br>
			<button>Add</button>
		</form>
	</div>
</body>
</html>