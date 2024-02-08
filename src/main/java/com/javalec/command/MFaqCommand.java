package com.javalec.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.dao.FaqDao;
import com.javalec.dao.NoticeDao;
import com.javalec.dto.FaqDto;
import com.javalec.dto.NoticeDtoPJH;

public class MFaqCommand implements MCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		FaqDao dao = new FaqDao();
		// DAO 메서드 호출하여 데이터 가져오기
		ArrayList<FaqDto> dtos =  dao.FaqList(); // 1개의 값을 가져온다
		
		request.setAttribute("FaqList", dtos);
	}

}
