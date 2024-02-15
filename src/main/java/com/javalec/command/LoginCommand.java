package com.javalec.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.dao.UserDao;
import com.javalec.dto.UserDto;

public class LoginCommand implements MCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String userId = request.getParameter("userId");
		String userPasswd = request.getParameter("userPasswd");
		System.out.println(userId);
		System.out.println(userPasswd);
		
		HttpSession session = request.getSession();
		session.setAttribute("userId", userId);
		
		if (userId.isEmpty() || userPasswd.isEmpty()) {
			// ID or PW is empty, set an attribute for error handling
			request.setAttribute("redirectURL", "./status/error.jsp");
		}
		
		System.out.println(1);
		System.out.println(userId);
		System.out.println(userPasswd);
		
		UserDao userdao = new UserDao();
		System.out.println(2);
		System.out.println(userId);
		System.out.println(userPasswd);

		UserDto user = userdao.view(userId, userPasswd);
		System.out.println(3);
		System.out.println(userId);
		System.out.println(userPasswd);

		if (user != null && user.getUserPw().equals(userPasswd)) {
//			session.setAttribute("user", user);

			request.setAttribute("redirectURL", "loginSuccess.jsp");
			System.out.println(user.getName());
//		} else if (admin != null && admin.getPassword().equals(pw)) {

			request.setAttribute("redirectURL", "adminSuccess.jsp");
		}else {
			// 로그인 에러시
			request.setAttribute("redirectURL", "./status/error.jsp");

		}
	}
}