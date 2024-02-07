package com.javalec.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.dao.NoticeDao;
import com.javalec.dto.NoticeDtoPJH;

public class MNoticeCommand implements MCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		NoticeDao dao = new NoticeDao();
		// DAO 메서드 호출하여 데이터 가져오기
		ArrayList<NoticeDtoPJH> dtos =  dao.list(); // 1개의 값을 가져온다
		
		request.setAttribute("list", dtos);
	}

}
