<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
private String getInfo(){
	return "디클레이션 태그 메소드 리턴";
}
%>

<%=getInfo() %>
</body>
</html>
