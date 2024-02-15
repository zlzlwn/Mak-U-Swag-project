package com.javalec.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.dao.QnaDeleteDao;
import com.javalec.dto.QnaDeleteDto;
import com.javalec.dto.QnaDto;

public class QnaDeleteCommand {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		QnaDeleteDao dao = new QnaDeleteDao();
		QnaDeleteDto view = dao.DeleteAction(request.getParameter("qnaSeq"));
		
		System.out.println(view);
		
	}

}
