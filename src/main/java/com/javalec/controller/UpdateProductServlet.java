package com.javalec.controller;
import java.io.IOException;
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
        String category = request.getParameter("Category");
        String name = request.getParameter("Name");
        String gender = request.getParameter("Gender");
        String color = request.getParameter("Color");
        int qty = Integer.parseInt(request.getParameter("Qty"));
        String price = request.getParameter("Price");
        String imagePath = request.getParameter("ImagePath");

        // 데이터베이스에 연결하고 product 테이블 업데이트
        updateProduct(category, name, gender, color, qty, price, imagePath);

        // 성공 메시지를 클라이언트에게 전송
        response.getWriter().write("Product updated successfully.");
    }

    private void updateProduct(String category, String name, String gender, String color, int qty, String price, String imagePath) {
        // JDBC 연결 정보 설정
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn_mysql = DriverManager.getConnection(SharVar.url_mysql, SharVar.id_mysql, SharVar.pw_mysql);
            
            // UPDATE 쿼리문 준비
            String sql = "UPDATE product SET proCategory=?, proName=?, proGender=?, proColor=?, proQty=?, proPrice=?, proImage=? where proName='"+name+"'and proGender='"+gender+"' and proColor='"+color+"'" ;
            PreparedStatement pstmt = conn_mysql.prepareStatement(sql);
            
            // 파라미터 설정
            pstmt.setString(1, category);
            pstmt.setString(2, name);
            pstmt.setString(3, gender);
            pstmt.setString(4, color);
            pstmt.setInt(5, qty);
            pstmt.setString(6, price);
            pstmt.setString(7, imagePath);
            
            // 쿼리 실행
            pstmt.executeUpdate();
            
            // 리소스 해제
            pstmt.close();
            conn_mysql.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}