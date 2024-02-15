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
 * Servlet implementation class UpdateProductServlet3
 */
@WebServlet("/UpdateProductServlet3")
public class UpdateProductServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProductServlet3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
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
		System.out.println(Imagepath);
		String Imagepath1 = request.getParameter("ImagePath1");
		String Imagepath2 = request.getParameter("ImagePath2");
		System.out.println(Imagepath);
		
		response.setContentType("text/html;charset=UTF-8");
		
		
		PrintWriter out = response.getWriter();
		
		try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection conn_mysql = DriverManager.getConnection(SharVar.url_mysql, SharVar.id_mysql, SharVar.pw_mysql);
	        Statement stmt_mysql = conn_mysql.createStatement();
	        
	        PreparedStatement ps = null;
	        String query = "UPDATE product SET proName=?, procolor=?, proCategory=?, proGender=?, proQty=?, proPrice=?";
	        
	        // Imagepath가 null이 아닐 때만 쿼리에 추가
	        if (!Imagepath.equals("")&&!Imagepath.equals("null")) {
	            query += ", proImage1=?";
	            System.out.println("0");
	        }
	        if (!Imagepath1.equals("")&&!Imagepath1.equals("null")) {
	            query += ", proImage2=?";
	            System.out.println("2");
	        }
	        if (!Imagepath2.equals("")&&!Imagepath2.equals("null")) {
	            query += ", proImage3=?";
	            System.out.println("3");
	        }
	        
	        query += ", proDate=now() WHERE proSeq=?";
	        
	        ps = conn_mysql.prepareStatement(query);
	        
	        int parameterIndex = 1;
	        ps.setString(parameterIndex++, Name);
	        ps.setString(parameterIndex++, Color);
	        ps.setString(parameterIndex++, Category);
	        ps.setString(parameterIndex++, Gender);
	        ps.setInt(parameterIndex++, Qty);
	        ps.setInt(parameterIndex++, price);
	        
	        // Imagepath가 null이 아닐 때만 파라미터 설정
	        if (!Imagepath.equals("")&&!Imagepath.equals("null")) {
	            ps.setString(parameterIndex++, Imagepath);
	        }
	        if (!Imagepath1.equals("")&&!Imagepath1.equals("null")) {
	            ps.setString(parameterIndex++, Imagepath1);
	        }
	        if (!Imagepath2.equals("")&&!Imagepath2.equals("null")) {
	            ps.setString(parameterIndex++, Imagepath2);
	        }
	        
	        ps.setInt(parameterIndex, Seq);
	        
	        ps.executeUpdate();
	        conn_mysql.close();
	        
	        out.print("success");
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	        out.print("failure");
	    }
	}
}
