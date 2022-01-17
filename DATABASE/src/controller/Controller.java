package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import beans.User;


@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Resource(name = "jdbc/webshop")
	private DataSource ds; // 데이터소스 ds로 DB 연결
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String action = request.getParameter("action");
		
		if(action == null) {
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
		else if(action.equals("login")) {
			request.setAttribute("email", "");
			request.setAttribute("password", "");
			request.setAttribute("message", "");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
		else if(action.equals("createaccount")) {
			request.setAttribute("message", "");
			request.getRequestDispatcher("/createaccount.jsp").forward(request, response);
		}
		else {
			out.println("없는 액션입니다.");
			return;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.setContentType("text/html; charset=UTF-8"); // 한글 설정
		
		PrintWriter out = response.getWriter();
		
		String action = request.getParameter("action");
		
		if(action == null) {
			out.println("잘못된 요청입니다.");
			return;
		}
		
		Connection conn = null;
		
		try {
			conn = ds.getConnection();
		} catch (SQLException e) {
			out.println("DB 연결 실패");
			return;
		} 
		// out.println("DB 연결 완료");
		Account account = new Account(conn); // Account 클래스 생성
		
		if(action.equals("dologin")) {
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			request.setAttribute("email", email);
			request.setAttribute("password", "");
			
			try {
				if(account.login(email, password)) {
					request.getRequestDispatcher("/loginsuccess.jsp").forward(request, response);
				} else {
					request.setAttribute("message", "이메일 또는 패스워드가 맞지 않습니다.");
					request.getRequestDispatcher("/login.jsp").forward(request, response);
				}
			} catch (SQLException e) {
					e.printStackTrace();
					request.setAttribute("message", "DB 에러 발생");
					request.getRequestDispatcher("/login.jsp").forward(request, response);
			}
		}
		else if(action.equals("createaccount")) { // 가입하기 페이지에서 작성 후 가입하기 버튼 클릭시!
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String repeatPassword = request.getParameter("repeatpassword");
			request.setAttribute("email", email); // 이메일 주소를 request에 저장
			
			// 패스워드를 두번 적을때 같지 않을 경우
			if(!password.equals(repeatPassword)) {
				request.setAttribute("message", "패스워드가 틀립니다.");
				request.getRequestDispatcher("/createaccount.jsp").forward(request, response);
			} else {
				User user = new User(email, password);
				
				// 유효성 검사 불합격 했을 경우
				if(!user.validate()) {
					request.setAttribute("message", user.getMessage());
					request.getRequestDispatcher("/createaccount.jsp").forward(request, response);
				}
				else { // 합격했을경우 email 중복 확인 후 새 계정 생성
					try {
						if(account.exists(email)) { // 이메일 중복일 경우
							request.setAttribute("message", "이미 가입된 계정이 있습니다.");
							request.getRequestDispatcher("/createaccount.jsp").forward(request, response);
						} else {
							// 새 계정을 만들기
							account.create(email, password);
							request.getRequestDispatcher("/createsuccess.jsp").forward(request, response);
							}
					} catch (SQLException e) { // sql 에러 발생
						request.setAttribute("message", "SQL에러발생");
						request.getRequestDispatcher("/error.jsp").forward(request, response);
					}
				}
			}
		}
		
		try {
			conn.close(); // 실제로는 커넥션을 커넥션 풀로 보냄
		} catch (SQLException e) {
			out.println("DB 연결 닫는 에러");
		}
	}

}
