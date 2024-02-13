package com.javalec.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.dao.QnaContentDao;
import com.javalec.dto.QnaDto;

public class MqnaContentCommand implements MCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		QnaContentDao dao = new QnaContentDao();
		QnaDto view = dao.infomation(request.getParameter("qnaSeq"));
		String qnaTitle = view.getQnaTitle();
		String qnaContent = view.getQnaContent();
		String qnaDate = view.getQnaDate();
		
		
		request.setAttribute("qnaTitle", qnaTitle);
		request.setAttribute("qnaContent", qnaContent);
		request.setAttribute("qnaDate", qnaDate);
		System.out.println(qnaContent);
		System.out.println(qnaDate);
		System.out.println(qnaTitle);
		 
	}

}
