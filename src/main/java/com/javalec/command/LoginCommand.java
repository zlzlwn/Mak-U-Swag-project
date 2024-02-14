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
		HttpSession session = request.getSession();
		session.setAttribute("userid", userId);

		if (userId.isEmpty() || userPasswd.isEmpty()) {
			// ID or PW is empty, set an attribute for error handling
			request.setAttribute("redirectURL", "loginerror.jsp");
		}

		UserDao userdao = new UserDao();

//		UserDto user = userdao.view(userId, userPasswd);
//
//		if (user != null && user.getUserPw().equals(userPasswd)) {
//			// Login successful
//
//			session.setAttribute("user", user);
//			// You can set additional attributes or redirect to a specific page
//			request.setAttribute("redirectURL", "loginSuccess.jsp");
//			System.out.println(user.getName());
//		} else if (admin != null && admin.getPassword().equals(pw)) {
//			// Administrator login successful
//
//			session.setAttribute("admin", admin);
//			System.out.println(admin.getName());
//
//			// You can set additional attributes or redirect to a specific admin page
//			request.setAttribute("redirectURL", "adminSuccess.jsp");
//		}
//		// Display a success message using JavaScript alert
//
//		else {
//			// Login failed
//			request.setAttribute("redirectURL", "loginerror.jsp");
//
//			// Forward back to the login page with an error message
//		}
	}
}