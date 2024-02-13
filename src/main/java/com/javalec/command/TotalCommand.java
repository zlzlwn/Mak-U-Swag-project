package com.javalec.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.dao.Managerdao;
import com.javalec.dao.Totaldao;
import com.javalec.dto.ManagerDaydto;
import com.javalec.dto.TotalDaydto;
import com.javalec.dto.TotalMonthdto;
import com.javalec.dto.TotalYeardto;
import com.javalec.dto.Totaldto;

public class TotalCommand implements MCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		
		HttpSession session = request.getSession();
		
		Totaldao dao = new Totaldao();
        TotalDaydto dto = dao.view();

        // Managerdto에서 데이터를 가져와서 세션에 저장
        ArrayList<String> labels = dto.getLabels();
        ArrayList<Integer> data = dto.getData();
        session.setAttribute("labels", labels);
        session.setAttribute("data", data);
        
        Totaldao dao1 = new Totaldao();
        TotalMonthdto dto1 = dao1.view2();
        
        ArrayList<String> labels2 = dto1.getLabels2();
        ArrayList<Integer> data3 = dto1.getData3();
        System.out.println(dto1.getData3());
        System.out.println(dto1.getLabels2());
        session.setAttribute("labels2", labels2);
        session.setAttribute("data3", data3);
		
        Totaldao dao2 = new Totaldao();
        TotalYeardto dto2 = dao2.view3();
        
        ArrayList<String> labels3 = dto2.getLabels3();
        ArrayList<Integer> data4 = dto2.getData4();
     
        session.setAttribute("labels3", labels3);
        session.setAttribute("data4", data4);
        
        Totaldao dao3 = new Totaldao();
        Totaldto dto3 = dao3.view4();
        
        ArrayList<String> labels1 = dto3.getLabels1();
        ArrayList<Integer> data1 = dto3.getData1();
		
        session.setAttribute("labels1", labels1);
        session.setAttribute("data1", data1);
		
		

	}

}
