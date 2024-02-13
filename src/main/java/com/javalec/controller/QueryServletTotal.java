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
import com.javalec.dto.Productdto3;
import com.javalec.dto.Productdto4;
import com.javalec.util.SharVar;

/**
 * Servlet implementation class QueryServletTotal
 */
@WebServlet("/QueryServletTotal")
public class QueryServletTotal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QueryServletTotal() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		response.setContentType("text/html;charset=UTF-8");
		
		//박스에 여러개의 데이터 담기
		ArrayList<Productdto4> studentList = new ArrayList<Productdto4>();
		
		
		String query = "SELECT product.proCategory,product.proName,product.proGender,product.proColor,purchase.pQty, purchase.pPrice, purchase.pMethod,purchase.pSpendPoint,pStackPoint,pDate FROM purchase"; 
		String query1 = " INNER JOIN product ON purchase.proseq = product.proseq where proName like '%" + name + "%' ORDER BY purchase.pDate ASC";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn_mysql = DriverManager.getConnection(SharVar.url_mysql,SharVar.id_mysql,SharVar.pw_mysql);
			Statement stmt_mysql = conn_mysql.createStatement();
			
			ResultSet rs = stmt_mysql.executeQuery(query+query1);
			
			while(rs.next()) {
			    Productdto4 product = new Productdto4();
			    product.setProCategory(rs.getString("proCategory"));
			    product.setProName(rs.getString("proName"));
			    product.setProGender(rs.getString("proGender"));
			    product.setProColor(rs.getString("proColor"));
			    product.setpQty(rs.getInt("pQty"));
			    product.setpPrice(rs.getString("pPrice"));
			    product.setpMethod(rs.getString("pMethod"));
			    product.setpSpendPoint(rs.getInt("pSpendPoint"));
			    product.setpStackPoint(rs.getInt("pStackPoint"));
			    product.setpDate(rs.getTimestamp("pDate"));
			    studentList.add(product);
			}
			
			//ArrayList에 담겨잇는 데이터를 json으로 변경하여 넘김'
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			
			PrintWriter out = response.getWriter();
			out.print(new Gson().toJson(studentList));
			out.flush();
			
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}}