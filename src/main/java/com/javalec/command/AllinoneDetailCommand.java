package com.javalec.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.dao.AllinoneDetailDao;
import com.javalec.dto.Allinonedto;

public class AllinoneDetailCommand implements MCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String proName = request.getParameter("product");
		
		AllinoneDetailDao detail = new AllinoneDetailDao();
		Allinonedto dto = detail.getDetail(proName);

		request.setAttribute("detailDto", dto);
	}

}
