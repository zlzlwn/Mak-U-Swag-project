package com.javalec.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.util.SharVar;

/**
 * Servlet implementation class UpdateProductServlet2
 */
@WebServlet("/UpdateProductServlet2")
public class UpdateProductServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int Seq = Integer.parseInt(request.getParameter("Seq"));
		String Category = request.getParameter("Category");
		String Name = request.getParameter("Name");
		String Gender = request.getParameter("Gender");
		String Color = request.getParameter("Color");
		int Qty = Integer.parseInt(request.getParameter("Qty"));
		String price1 = request.getParameter("Price");
		String priceWithoutComma = price1.replaceAll(",", "");
		int price = Integer.parseInt(priceWithoutComma);
		String Imagepath = request.getParameter("ImagePath");	
		String Imagepath1 = request.getParameter("ImagePath1");
		String Imagepath2 = request.getParameter("ImagePath2");
		System.out.println(Imagepath);
		
		response.setContentType("text/html;charset=UTF-8");
		
		
		PrintWriter out = response.getWriter();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn_mysql = DriverManager.getConnection(SharVar.url_mysql,SharVar.id_mysql,SharVar.pw_mysql);
			Statement stmt_mysql = conn_mysql.createStatement();
			
			PreparedStatement ps = null;
			String query = "update product set proName=?,procolor=?,proCategory=?,proGender=?,proQty=?,proPrice=?,proImage1=?,proImage2=?,proImage3=?,proDate=now() where proSeq=?";
			ps=conn_mysql.prepareStatement(query);
			
			ps.setString(1, Name);
			ps.setString(2, Color);
			ps.setString(3, Category);
			ps.setString(4, Gender);
			ps.setInt(5, Qty);
			ps.setInt(6, price);
			ps.setString(7, Imagepath);
			ps.setString(8, Imagepath1);
			ps.setString(9, Imagepath2);
			ps.setInt(10, Seq);
			
			ps.executeUpdate();
			conn_mysql.close();
					
			out.print("success");
			
		
		}catch(Exception e) {
			e.printStackTrace();
			out.print("failure");
		
	}
	}
}
