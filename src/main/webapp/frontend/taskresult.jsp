<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Generated Color Boxes</title>
    <style>
        .box {
            display: inline-block;
            margin: 10px;
        }
    </style>
</head>
<body>
    <h1>Generated Color Boxes</h1>
    <div>
        <c:forEach var="i" begin="1" end="${count}" >
            <div class="box" style="width: ${size}px; height: ${size}px; background-color: ${color};"></div>
        </c:forEach>
    </div>
    <a href="/spring-mvc.CRUDapp/">Back</a>
</body>
</html>
