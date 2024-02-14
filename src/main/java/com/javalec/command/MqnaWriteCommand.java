package com.javalec.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.dao.WriteDao;

public class MqnaWriteCommand implements MCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// write_view.jsp의 request 를 받아서 Table에 insert 한다.
		 String qnaTitle = request.getParameter("qnaTitle");
		 String qnaCategory = request.getParameter("qnaCategory");
		 String qnaContent = request.getParameter("qnaContent");
		 String qnaImage = request.getParameter("qnaImage");
		 
		 System.out.println(qnaTitle);
		 System.out.println(qnaImage);
		 System.out.println(qnaContent);
		 System.out.println(qnaCategory);
		
		 WriteDao dao = new WriteDao();
		 dao.write(qnaTitle, qnaCategory,qnaContent , qnaImage);
		 

	}

}
