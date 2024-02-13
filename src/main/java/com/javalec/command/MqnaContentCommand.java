package com.javalec.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.dao.FaqDao;
import com.javalec.dao.QnaContentDao;
import com.javalec.dao.QnaDao;
import com.javalec.dto.FaqDto;
import com.javalec.dto.QnaDto;

public class MqnaContentCommand implements MCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		QnaContentDao dao = new QnaContentDao();
		// DAO 메서드 호출하여 데이터 가져오기
		ArrayList<QnaDto> dtos =  dao.list();// 1개의 값을 가져온다
		
		request.setAttribute("list", dtos);
	}

}
