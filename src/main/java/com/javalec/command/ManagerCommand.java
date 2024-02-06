package com.javalec.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.dao.Managerdao;

import com.javalec.dto.Managerdto;

public class ManagerCommand implements MCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub''
		
		 HttpSession session = request.getSession();

	        Managerdao managerdao = new Managerdao();
	        Managerdto dto = managerdao.view();

	        // Managerdto에서 데이터를 가져와서 세션에 저장
	        ArrayList<String> labels = dto.getLabels();
	        ArrayList<Integer> data = dto.getData();
	        System.out.println(dto.getLabels());
	        System.out.println(dto.getData());
	        session.setAttribute("labels", labels);
	        session.setAttribute("data", data);
	    }

	}
