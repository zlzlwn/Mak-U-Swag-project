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
		int qnaSeq = view.getQnaSeq();
		String qnaTitle = view.getQnaTitle();
		String qnaContent = view.getQnaContent();
		String qnaImage = view.getQnaImage();
		String qnaDate = view.getQnaDate();
		
		
		System.out.println("------------------------");
		System.out.println(view);
		System.out.println("------------------------");
		
		request.setAttribute("qnaSeq", qnaSeq);
		request.setAttribute("qnaTitle", qnaTitle);
		request.setAttribute("qnaContent", qnaContent);
		request.setAttribute("qnaImage", qnaImage);
		request.setAttribute("qnaDate", qnaDate);
	}

}
