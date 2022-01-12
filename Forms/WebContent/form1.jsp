<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- action의 주소로 form 안의 입력 창에 입력한 데이터와 함께 요청 -->
<!-- action 주소는 domain 주소 포트번호 뒤부터 입력(서블릿 실행하여 확인) -->
<form action="/Forms/Controller" method="post">

<input type="text" name="user">
<input type="submit" value="전송">

</form>

</body>
</html>