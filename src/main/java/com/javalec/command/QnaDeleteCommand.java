package com.javalec.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.dao.QnaDeleteDao;


public class QnaDeleteCommand implements MCommand {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		QnaDeleteDao dao = new QnaDeleteDao();
		String qnaSeq = request.getParameter("qnaSeq");
		
		
		dao.DeleteAction(qnaSeq);
		
		
	}
}
