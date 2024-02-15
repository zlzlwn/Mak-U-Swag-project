package com.javalec.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.dao.Allinone;
import com.javalec.dao.NoticeDao;
import com.javalec.dto.Allinonedto;
import com.javalec.dto.NoticeDtoPJH;

public class AllinoneCommand implements MCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	    Allinone dao = new Allinone();
	    HttpSession session = request.getSession();
		
		
		ArrayList<Allinonedto> dtos = dao.list(); 
		
	    session.setAttribute("productImages", dtos);

        // request 객체에 이미지 경로를 직접 저장
        request.setAttribute("productImages", dtos);

	}

}
