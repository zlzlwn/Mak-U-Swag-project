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
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.javalec.dto.PurchaesDto;
import com.javalec.util.SharVar;
import com.mysql.cj.Session;

/**
 * Servlet implementation class QueryServlet
 */
@WebServlet("/MypageServlet")
public class MypageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MypageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("마이페이지 서블릿1");
		// AJAX에서 전달한 데이터 받기
		response.setContentType("text/html;charset=UTF-8");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		System.out.println(startDate+endDate);
		System.out.println("서블릿 실행됨");
		//박스에 여러개의 데이터 담기
		ArrayList<PurchaesDto> purchaseList = new ArrayList<PurchaesDto>();
		
		
		String query = "SELECT p.purSeq, p.pQty, p.pPrice, p.pStackPoint, p.pDate, pr.proName\n"
		        + "FROM purchase as p\n"
		        + "JOIN product as pr ON p.proSeq = pr.proSeq";

		// startDate와 endDate가 null이 아닌 경우에만 BETWEEN 절 추가
		if (startDate != null && endDate != null) {
		    query += " WHERE p.pDate BETWEEN '"+startDate+"' AND '"+endDate+"'";
		    System.out.println("이프쿼리 실행");
		}
		// userId가 null이 아닌 경우에만 userId 조건 추가
		if (userId != null) {
		    query += (startDate != null && endDate != null) ? " AND p.userId = '"+userId+"'" : " WHERE p.userId = '"+userId+"'";
		}
		try {

			System.out.println(userId+"유저아이디");
			System.out.println(startDate+endDate);
			System.out.println("마이페이지 서블릿2");
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("마이페이지 서블릿3");
			Connection conn_mysql = DriverManager.getConnection(SharVar.url_mysql,SharVar.id_mysql,SharVar.pw_mysql);
			System.out.println("마이페이지 서블릿4");
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
			System.out.println("마이페이지 서블릿4");
		}
	}
	
	
	
	
	
	

}