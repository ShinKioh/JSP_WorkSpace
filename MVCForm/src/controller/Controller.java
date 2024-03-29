package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.User;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		// 저장되어 있는 이메일/패스워드/메세지를 초기화 => 로그인 정보는 post로 가기 때문에 Get에서는 초기화
		request.setAttribute("email", "");
		request.setAttribute("password", "");
		request.setAttribute("valmessage", "");
		
		if(action == null) {
			// action값이 없을 경우 잘못된 경우로 다시 기본페이지로 보냄
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		} else if(action.equals("login")) {
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action == null) {  // 널값일때 index 페이지로
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
		else if(action.contentEquals("dologin")) {
			String email = request.getParameter("email");	
			String password = request.getParameter("password");	
			request.setAttribute("email", "");
			request.setAttribute("password", "");
			
			User user = new User(email, password);
			
			// 유효성 검사에서 합격하면 로그인 성공 페이지로 이동
			if(user.validate()) {
				request.getRequestDispatcher("/loginsuccess.jsp").forward(request, response);
			} else { // 유효성 검사에서 실패 (실패 메세지 request 객체에 parameter로 추가)
				request.setAttribute("valmessage", user.getMessage());
				// 유효성 실패로 다시 로그인 페이지로 이동(메세지를 추가)
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}
		}
	}

}
