<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p><c:out value="${user1.name}"></c:out>
<p><c:out value="${user2.name}"></c:out>
<p><c:out value="${user3.name}"></c:out>
<br>
<!-- map list -->
<p><c:out value="${mapList.Fruit1}"></c:out>
<p><c:out value="${mapList.Fruit2}"></c:out>
<p><c:out value="${mapList['Fruit1']}"></c:out>
<p><c:out value="${mapList['Fruit2']}"></c:out>
<br><br>
<!-- list -->
<c:forEach var="item" items="${list}">
	${item.id} : ${item.name}<br>
</c:forEach>

<!-- table 안에 입력 -->
<table border="1">
<tr>
<th>ID</th><th>이름</th>
</tr>
<tr>
<c:forEach var="item" items="${list}">
<tr>
	<td>${item.id}</td><td>${item.name}</td>
</tr>
</c:forEach>
</table>
</body>
</html>