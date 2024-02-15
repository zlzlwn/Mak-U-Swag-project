package com.javalec.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.TimeZone;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.javalec.dto.ManagerDaydto;
import com.javalec.util.SharVar;

/**
 * Servlet implementation class QueryServlet
 */
@WebServlet("/QueryServlet")
public class QueryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QueryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // AJAX에서 전달한 데이터 받기
        String name = request.getParameter("name");
        String selectedJoinDate = request.getParameter("selectedJoinDate"); // 가입 날짜 받기
        String selectedLeaveDate = request.getParameter("selectedLeaveDate"); // 탈퇴 날짜 받기
        response.setContentType("text/html;charset=UTF-8");
        
        //박스에 여러개의 데이터 담기
        ArrayList<ManagerDaydto> studentList = new ArrayList<ManagerDaydto>();
        
        // 쿼리 생성
        String query = "SELECT userId, userPw, name, address, phone, email, gender, point, active, deactive, howToLogin " +
                "FROM user " +
                "WHERE name LIKE '%" + name + "%' ";

        if (selectedJoinDate != null && !selectedJoinDate.isEmpty()) {
            // 선택한 가입 날짜를 yyyy-MM-dd 형식으로 변환
            SimpleDateFormat sdfInput = new SimpleDateFormat("MM/dd/yyyy");
            SimpleDateFormat sdfOutput = new SimpleDateFormat("yyyy-MM-dd");
            try {
                Date date = sdfInput.parse(selectedJoinDate);
                selectedJoinDate = sdfOutput.format(date);
            } catch (ParseException e) {
                e.printStackTrace();
            }
            // 변환된 날짜를 쿼리에 사용
            query += "AND DATE(active) = STR_TO_DATE('" + selectedJoinDate + "', '%Y-%m-%d')";
        }

        if (selectedLeaveDate != null && !selectedLeaveDate.isEmpty()) {
            // 선택한 탈퇴 날짜를 yyyy-MM-dd 형식으로 변환
            SimpleDateFormat sdfInput = new SimpleDateFormat("MM/dd/yyyy");
            SimpleDateFormat sdfOutput = new SimpleDateFormat("yyyy-MM-dd");
            try {
                Date date = sdfInput.parse(selectedLeaveDate);
                selectedLeaveDate = sdfOutput.format(date);
            } catch (ParseException e) {
                e.printStackTrace();
            }
            // 변환된 날짜를 쿼리에 사용
            query += "AND DATE(deactive) = STR_TO_DATE('" + selectedLeaveDate + "', '%Y-%m-%d')";
        }
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn_mysql = DriverManager.getConnection(SharVar.url_mysql, SharVar.id_mysql, SharVar.pw_mysql);
            Statement stmt_mysql = conn_mysql.createStatement();
            
            ResultSet rs = stmt_mysql.executeQuery(query);
            
            while (rs.next()) {
                ManagerDaydto student = new ManagerDaydto();
                student.setUserId(rs.getString("userId"));
                student.setUserPw(rs.getString("userPw"));
                student.setName(rs.getString("name"));
                student.setAddress(rs.getString("address"));
                student.setPhone(rs.getString("phone"));
                student.setEmail(rs.getString("email"));
                student.setGender(rs.getString("gender"));
                student.setPoint(rs.getInt("point"));
                student.setActive(rs.getString("active"));
                student.setDeactive(rs.getString("deactive"));
                student.setHowToLogin(rs.getString("howToLogin"));
               
                
                studentList.add(student);
            }
            
            //ArrayList에 담겨있는 데이터를 JSON으로 변경하여 전송
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            
            PrintWriter out = response.getWriter();
            out.print(new Gson().toJson(studentList));
            out.flush();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }}