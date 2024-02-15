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
		session.setAttribute("userId", userId);
		
		UserDao userdao = new UserDao();
		UserDto user = userdao.view(userId, userPasswd);
		
		if (user != null && user.getUserPw().equals(userPasswd)) {
			session.setAttribute("user", user);
			
			// userId가 "admin1"인 경우 관리자 페이지로 이동
	        if (user.getUserId().equals("admin1")) {
	            request.setAttribute("redirectURL", "./status/adminSuccess.jsp");
	        } else {
	            // 그 외의 경우 일반 회원 페이지로 이동
	            request.setAttribute("redirectURL", "./status/loginSuccess.jsp");
	        }
		}else {
			// 로그인 에러시
			session.invalidate();
			request.setAttribute("redirectURL", "./status/loginerror.jsp");
		}
	}
}