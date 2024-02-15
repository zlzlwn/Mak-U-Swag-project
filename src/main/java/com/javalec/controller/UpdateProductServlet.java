package com.javalec.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.dto.Productdto4;
import com.javalec.util.SharVar;

@WebServlet("/UpdateProductServlet")
public class UpdateProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 클라이언트로부터 전달된 파라미터 받기
    	
    	int Seq = Integer.parseInt(request.getParameter("Seq"));
    	String Category = request.getParameter("Category");
		String Name = request.getParameter("Name");
		String Gender = request.getParameter("Gender");
		String Color = request.getParameter("Color");
		int Qty = Integer.parseInt(request.getParameter("Qty"));
		String price1 = request.getParameter("Price");
		String priceWithoutComma = price1.replaceAll(",", "");
		int price = Integer.parseInt(priceWithoutComma);
		
		
		response.setContentType("text/html;charset=UTF-8");
		
		
		PrintWriter out = response.getWriter();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn_mysql = DriverManager.getConnection(SharVar.url_mysql,SharVar.id_mysql,SharVar.pw_mysql);
			Statement stmt_mysql = conn_mysql.createStatement();
			
			PreparedStatement ps = null;
			String query = "update product set proName=?,proColor=?,proCategory=?,proGender=?,proQty=?,proPrice=?,proDate=now() where proSeq=?";
			ps=conn_mysql.prepareStatement(query);
			
			ps.setString(1, Name);
			ps.setString(2, Color);
			ps.setString(3, Category);
			ps.setString(4, Gender);
			ps.setInt(5, Qty);
			ps.setInt(6, price);
			ps.setInt(7, Seq);
			
			ps.executeUpdate();
			conn_mysql.close();
					
			out.print("success");
			
		
		}catch(Exception e) {
			e.printStackTrace();
			out.print("failure");
		
	}
	}
}
