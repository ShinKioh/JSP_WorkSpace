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
<!-- 출력 태그 -->
<c:out value ="JSTL 안녕!"></c:out>

<jsp:useBean id="test" class="beans.TestBean" />
<!-- JSTL로 bean 객체 사용 -->
<p> get Info 메소드 : <c:out value="${test.info}" />

<!-- parameter 가져오기 param.이름 -->
<p> parameter : <c:out value="${param.name}" />
<br><br>

<!-- IF문 -->
<c:if test="${param.name == 'bob'}">Hello bob</c:if>
<c:if test="${param.name != 'bob'}">You aren't bob</c:if>
<br><br>

<!-- Switch문 JSTL choose, when : 케이스, otherwise : default -->
<c:choose>
	<c:when test="${param.id == 1}">
		<b>아이디는 1이다.</b>
	</c:when>
	<c:when test="${param.id == 2}">
		<b>아이디는 2이다.</b>
	</c:when>
	<c:otherwise>
		<b>아이디는 1 또는 2가 아니다.</b>
	</c:otherwise>
</c:choose>
<br><br>
<!-- 반복문 -->
<c:forEach var="i" begin="0" end="10" step="2">
	i의 값 : <c:out value="${i}" /><br>
</c:forEach>
</body>
</html>