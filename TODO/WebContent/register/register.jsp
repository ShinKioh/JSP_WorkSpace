<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css" />
    <title>유저 등록</title>
  </head>
  <body>
    <!-- navbar 시작 -->
    <jsp:include page="../common/header.jsp" />
    <!-- navbar 끝 -->
    <!-- 본문 -->
    <div class="container">
      <div class="row mt-5">
        <div class="col-md-6 mx-auto">
          <h2>유저 등록</h2>
          <div class="alert alert-success center" role="alert">
            <p>${MESSAGE}</p>
          </div>
          <form action="<%=request.getContextPath() %>/register" method="post">
            <div class="form-group">
              <label for="fisrtName">성 :</label>
              <input type="text" class="form-control" name="firstName" required />
            </div>
            <div class="form-group">
              <label for="lastName">이름 :</label>
              <input type="text" class="form-control" name="lastName" required />
            </div>
            <div class="form-group">
              <label for="userName">아이디 :</label>
              <input type="text" class="form-control" name="userName" required />
            </div>
            <div class="form-group">
              <label for="password">비밀번호 :</label>
              <input type="text" class="form-control" name="password" required />
            </div>
            <div class="form-group mt-3">
              <button type="summit" class="btn btn-outline-success">가입하기</button>
            </div>
          </form>
        </div>
      </div>
    </div>
    <!-- 본문 끝 -->
    <!-- footer 시작 -->
    <jsp:include page="../common/footer.jsp" />
    <!-- footer 끝 -->
    <script src="<%=request.getContextPath() %>/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
