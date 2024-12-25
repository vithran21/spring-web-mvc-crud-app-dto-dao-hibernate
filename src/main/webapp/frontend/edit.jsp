<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Employee Detail</title>
</head>
<body>
	<h2></h2>
	<div>
		<form action="editSave" method="post" align="center"
			style="background-color: yellow; border-bottom-width: 2px; border-color: green;">
			<input type="hidden" name="id" value="${emp.id}">
			<label for="ename">Emp Name: </label> <input id="ename" name="name" value="${emp.name}">
			<br>
			<br>
			<br> <label for="mob">Mobile: </label> <input id="mob"
				type="tel" name="mobile" value="${emp.mobile}"> <br>
			<br>
			<br> <label for="dom">Domain: </label> <input id="dom"
				name="domain" value="${emp.domain}"> <br>
			<br>
			<br> <label for="email">Email: </label> <input id="email"
				type="email" name="email" value="${emp.email}"> <br>
			<br>
			<br> <label for="sal">Salary: </label> <input id="sal"
				name="salary" value="${emp.salary}"> <br>
			<br>
			<br>
			<button>Save</button>
		</form>
	</div>
</body>
</html>