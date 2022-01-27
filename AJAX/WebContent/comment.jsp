<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	String email = request.getParameter("email");
	String comment = request.getParameter("comment");

	if (comment.trim().equals("") || email.trim().equals("")) { // email에 @와 .이 있을 경우
		out.print("<p>댓글 내용과 이메일을 적어 주세요</p>");
	} else {
	
			try {
				String url = "jdbc:mysql://localhost:3306/demo?useSSL=false";
				Connection conn = DriverManager.getConnection(url, "root", "1234");

				PreparedStatement pstmt = conn.prepareStatement("INSERT INTO comment (comment,email) VALUES(?,?)");
				pstmt.setString(1, comment);
				pstmt.setString(2, email);
			
				int i = pstmt.executeUpdate(); // 결과는 숫자로 1일때 정상
			
				pstmt = conn.prepareStatement("SELECT * FROM comment ORDER BY id DESC");
				ResultSet rs = pstmt.executeQuery(); // sql실행 후 결과를 rs에 저장

				out.print("<hr>");
				out.print("<h2>Comments : </h2>");
			
			while (rs.next()) {
				out.print("<div class='box'>");  
				out.print("<p>"+rs.getString("comment")+"</p>");  
				out.print("<p><strong>글쓴이 : "+rs.getString("email")+"</strong></p>");  
				out.print("</div>"); 
			} 
		conn.close();

			} catch (Exception e) {
				e.printStackTrace(); // 예외출력
			}
	}
%>