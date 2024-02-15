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
 * Servlet implementation class DelProductServlet
 */
@WebServlet("/DelProductServlet")
public class DelProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelProductServlet() {
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
		// TODO Auto-generated method stub
		int Seq = Integer.parseInt(request.getParameter("Seq"));
		
		
		response.setContentType("text/html;charset=UTF-8");
		
		
		PrintWriter out = response.getWriter();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn_mysql = DriverManager.getConnection(SharVar.url_mysql,SharVar.id_mysql,SharVar.pw_mysql);
			Statement stmt_mysql = conn_mysql.createStatement();
			
			PreparedStatement ps = null;
			String query = "update product set prodelDate=now() where proSeq=?";
			ps=conn_mysql.prepareStatement(query);
			
			ps.setInt(1, Seq);
			
			ps.executeUpdate();
			conn_mysql.close();
					
			out.print("success");
			
		
		}catch(Exception e) {
			e.printStackTrace();
			out.print("failure");
		
	}
	}
}
