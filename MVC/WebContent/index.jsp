<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>홈페이지</h1>

	<p><a href="<%=request.getContextPath() %>/Controller?action=login">Login 페이지로</a>
	<p><a href="/MVC/Controller?action=about">About 페이지로</a>

</body>
</html>