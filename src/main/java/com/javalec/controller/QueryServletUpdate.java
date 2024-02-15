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
import com.javalec.dto.Productdto2;
import com.javalec.dto.Productdto3;
import com.javalec.util.SharVar;

/**
 * Servlet implementation class QueryServletUpdate
 */
@WebServlet("/QueryServletUpdate")
public class QueryServletUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QueryServletUpdate() {
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
		// AJAX에서 전달한 데이터 받기
				String name = request.getParameter("name");
				response.setContentType("text/html;charset=UTF-8");
				
				//박스에 여러개의 데이터 담기
				ArrayList<Productdto3> studentList = new ArrayList<Productdto3>();
				
				
				String query = "SELECT proSeq,proCategory, proName, proGender, proColor, proQty, proPrice, proImage1,proImage2,proImage3,proDate from product   where proName like '%" + name + "%' and prodelDate is null";
				try {
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection conn_mysql = DriverManager.getConnection(SharVar.url_mysql,SharVar.id_mysql,SharVar.pw_mysql);
					Statement stmt_mysql = conn_mysql.createStatement();
					
					ResultSet rs = stmt_mysql.executeQuery(query);
					
					while(rs.next()) {
						Productdto3 student = new Productdto3();
						student.setProSeq(rs.getInt("proSeq"));
						student.setProCategory(rs.getString("proCategory"));
						student.setProName(rs.getString("proName"));
						student.setProGender(rs.getString("proGender"));
						student.setProColor(rs.getString("proColor"));
						student.setProQty(rs.getInt("proQty"));
						student.setProPrice(rs.getInt("proPrice"));
						student.setProImage1(rs.getString("proImage1"));
						student.setProImage2(rs.getString("proImage2"));
						student.setProImage3(rs.getString("proImage3"));
						student.setProDate(rs.getString("proDate"));
						
						studentList.add(student); // 이거하나면 하나씩 한줄로 계단식이됨.
						
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