<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String user = request.getParameter("user");
	String id = request.getParameter("id");
	// jsp에는 이미 out 객체가 사용 가능
	out.println("유저 파라메타 : "+user);
	out.println("id 파라메타 : "+id);

	%>
</body>
</html>