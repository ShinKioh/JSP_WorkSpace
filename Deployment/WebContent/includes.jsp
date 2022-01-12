<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- ctrl+shift+/ -->
<!-- 정적 include : 미리 컴파일해둠, 자주 바꾸지 않을때 -->
<%@ include file="copyright.txt" %>
<br>
<!-- 동적 include : 페이지를 요청할때마다 새로고침 , 자주 수정하는 파일 -->
<jsp:include page="update.txt" />

<!-- 자바 변수등을 넣을려면 정적 include 해야 된다 -->
<%@ include file="variables.jsp" %>
<%= name %>

<!-- 실행시(runtime)에 두개의 html중에 id가 있을 경우 login.html, 없을 경우 fail.html -->
<% String id = request.getParameter("id"); %>

<!-- 동적 include시 html 한글이 안깨짐  -->
<% if(id==null) { %>
	<jsp:include page="fail.html" />
<% } else { %>
	<jsp:include page="login.html" />
<% } %>

</body>
</html>