package com.javalec.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.javalec.dao.Allinone;
import com.javalec.dto.Allinonedto;

public class AllinoneCommand implements MCommand {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        Allinone dao = new Allinone();
        ArrayList<Allinonedto> dtos = dao.list();

        int productsPerPage = 9; // 페이지당 상품 수 설정
        int totalProducts = dtos.size();
        int totalPages = (int) Math.ceil((double) totalProducts / productsPerPage);
        int currentPage = 1;
        String pageParam = request.getParameter("page");

        if (pageParam != null && !pageParam.isEmpty()) {
            currentPage = Integer.parseInt(pageParam);
        }

        int startIndex = (currentPage - 1) * productsPerPage;
        int endIndex = Math.min(startIndex + productsPerPage, totalProducts);

        // 현재 페이지에 표시할 상품 목록 추출
        List<Allinonedto> listPerPage = dtos.subList(startIndex, endIndex);

        request.setAttribute("totalPages", totalPages);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("productsPerPage", productsPerPage);
        request.setAttribute("listPerPage", listPerPage);

        // 버튼 스타일을 생성하여 JSP로 전달
        String buttonStyle = "background-color: white; border: 1px solid black; padding: 5px 10px; margin: 0 5px;";
        request.setAttribute("buttonStyle", buttonStyle);

        // Gson을 사용하여 listPerPage를 JSON 문자열로 변환하여 request 속성으로 전달
        Gson gson = new Gson();
        String jsonList = gson.toJson(listPerPage);
        request.setAttribute("jsonList", jsonList);
    }
}
