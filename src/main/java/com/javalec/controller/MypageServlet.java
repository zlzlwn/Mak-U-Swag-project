package com.javalec.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.javalec.dto.PurchaesDto;
import com.javalec.util.SharVar;

/**
 * Servlet implementation class QueryServlet
 */
@WebServlet("/MypageServlet")
public class MypageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MypageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// AJAX에서 전달한 데이터 받기
		String name = request.getParameter("name");
		response.setContentType("text/html;charset=UTF-8");
		
		//박스에 여러개의 데이터 담기
		ArrayList<PurchaesDto> purchaseList = new ArrayList<PurchaesDto>();
		
		
		String query = "SELECT p.purSeq, p.pQty, p.pPrice, p.pStackPoint, p.pDate, pr.proName\n"
				+ "FROM purchase as p\n"
				+ "JOIN product as pr ON p.proSeq = pr.proSeq;";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn_mysql = DriverManager.getConnection(SharVar.url_mysql,SharVar.id_mysql,SharVar.pw_mysql);
			Statement stmt_mysql = conn_mysql.createStatement();
			
			ResultSet rs = stmt_mysql.executeQuery(query);
			
			while(rs.next()) {
				PurchaesDto purchase = new PurchaesDto();
				purchase.setPurSeq(rs.getInt("purSeq"));
				purchase.setpQty(rs.getInt("pQty"));
				purchase.setpPrice(rs.getInt("pPrice"));
				purchase.setpStackPoint(rs.getInt("pStackPoint"));
				purchase.setpDate(rs.getString("pDate"));
				purchase.setProName(rs.getString("proName"));
				
				purchaseList.add(purchase); // 이거하나면 하나씩 한줄로 계단식이됨.
				
			}
			
			//ArrayList에 담겨잇는 데이터를 json으로 변경하여 넘김'
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			
			PrintWriter out = response.getWriter();
			out.print(new Gson().toJson(purchaseList));
			out.flush();
			System.out.println(purchaseList);
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	

}