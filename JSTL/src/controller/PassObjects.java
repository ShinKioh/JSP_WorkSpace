package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.User;

/**
 * Servlet implementation class PassObjects
 */
@WebServlet("/pass")
public class PassObjects extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 각각의 다른 객체들을 다른 scope로 전달
		User user1 = new User("Bob", 1);
		User user2 = new User("Mike", 2);
		User user3 = new User("Sue", 3);
		
		// request scope
		request.setAttribute("user1", user1);
		
		// session scope
		HttpSession session = request.getSession();
		session.setAttribute("user2", user2);
		
		// context scope
		ServletContext context = getServletContext();
		context.setAttribute("user3", user3);
		
		// map 리스트 보내기
		Map<String, String> map = new HashMap<>();
		map.put("Fruit1", "Apple");
		map.put("Fruit2", "Orange");
		
		request.setAttribute("mapList", map);
		
		// array 리스트
		List<User> list = new ArrayList<User>();
		list.add(new User("dog", 1));
		list.add(new User("cat", 2));
		list.add(new User("cow", 3));
		
		session.setAttribute("list", list);
		
		request.getRequestDispatcher("/receiveObjects.jsp").forward(request, response);
		
	}
}
