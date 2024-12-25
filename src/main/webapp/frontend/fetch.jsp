<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Employee Details</title>
<style type="text/css">
	body{
		background-color: black;
		align-content: center;
	}
	table {
		background-color: lime;
		border-collapse: collapse;
	}
	th {
		color: purple;
		background-color: yellow;
	}
	tr {
		color: blue;
	}
</style>
</head>
<body>
<div align="center">
	<h2>${success}</h2>
	<h2>${nodata}</h2>
	<br>
	<br>
	<table>
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Mobile</th>
				<th>Email</th>
				<th>Salary</th>
				<th>Domain</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="emp" items="${allEmployees}">
				<tr>
					<td>${emp.id}</td>
					<td>${emp.name}</td>
					<td>${emp.mobile}</td>
					<td>${emp.email}</td>
					<td>${emp.salary}</td>
					<td>${emp.domain}</td>
					<td><a href="edit?id=${emp.id}"><button>Edit</button></a></td>
					<td><a href="deleteById?id=${emp.id}"><button >Delete</button></a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br><br>
	<a href="/spring-mvc.CRUDapp/"><button>Back</button></a>
</div>
</body>
</html>