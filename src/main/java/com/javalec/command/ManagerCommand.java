package com.javalec.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.dao.Managerdao;
import com.javalec.dto.Manager2dto;
import com.javalec.dto.Manager3dto;
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
	        session.setAttribute("labels", labels);
	        session.setAttribute("data", data);
	        
	        
	        Managerdao managerdao2 = new Managerdao();
	        Managerdto dto2 = managerdao2.view1();
	        
	        ArrayList<String> labels1 = dto2.getLabels1();
	        ArrayList<Integer> data1 = dto2.getData1();
	        ArrayList<Integer> data2 = dto2.getData2();
	        session.setAttribute("labels1", labels1);
	        session.setAttribute("data1", data1);
	        session.setAttribute("data2", data2);
	        
	        Managerdao managerdao3 = new Managerdao();
	        Manager2dto dto3 = managerdao3.view2();
	    
	        ArrayList<String> labels2 = dto3.getLabels2();
	        ArrayList<Integer> data3 = dto3.getData3();
	        System.out.println(dto3.getData3());
	        System.out.println(dto3.getLabels2());
	        session.setAttribute("labels2", labels2);
	        session.setAttribute("data3", data3);
	        
	        Managerdao managerdao4 = new Managerdao();
	        Manager3dto dto4 = managerdao4.view3();
	        
	        ArrayList<String> labels3 = dto4.getLabels3();
	        ArrayList<Integer> data4 = dto4.getData4();
	        System.out.println(dto4.getData4());
	        System.out.println(dto4.getLabels3());
	        session.setAttribute("labels3", labels3);
	        session.setAttribute("data4", data4);
	        


	        
	        

	        // JSP 페이지로 포워딩
	        
	    }

	}
