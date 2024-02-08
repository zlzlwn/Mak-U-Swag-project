package com.javalec.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;

import com.javalec.dto.ManagerMonthdto;
import com.javalec.dto.ManagerYeardto;
import com.javalec.dto.ManagerDaydto;

public class Managerdao {

DataSource dataSource;
	
	public Managerdao(){
		// TODO Auto-generated constructor s() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/makuswag"); //context.xml위치
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	
	public ManagerDaydto view() {
		
	ArrayList<String> labels = new ArrayList<>();
    ArrayList<Integer> data = new ArrayList<>();
    Connection connection = null;
    
    String query="SELECT DATE(active) AS day, COUNT(*) AS count FROM user GROUP BY DATE(active) order by day ASC";
    
    try {
    	connection = dataSource.getConnection();
        Class.forName("com.mysql.cj.jdbc.Driver");
        Statement stmt_mysql = connection.createStatement();
        ResultSet rs = stmt_mysql.executeQuery(query);

        // ResultSet에서 데이터 추출하여 ArrayList에 추가
        while (rs.next()) {
            labels.add(rs.getString(1));
            data.add(rs.getInt(2));
        }

        connection.close();
    } catch (Exception e) {
        e.printStackTrace();
    }return new ManagerDaydto(labels,data);
}
	
	
	public ManagerDaydto view1() {
		
		ArrayList<String> labels1 = new ArrayList<>();
	    ArrayList<Integer> data1 = new ArrayList<>();
	    ArrayList<Integer> data2 = new ArrayList<>();
	    Connection connection = null;
	    
	    String query="SELECT \r\n"
	    		+ "    gender, \r\n"
	    		+ "    COUNT(CASE WHEN gender = '남' THEN 1 END) AS male_count, \r\n"
	    		+ "    COUNT(CASE WHEN gender = '여' THEN 1 END) AS female_count\r\n"
	    		+ "FROM \r\n"
	    		+ "    user \r\n"
	    		+ "GROUP BY \r\n"
	    		+ "    gender; ";
	    
	    try {
	    	connection = dataSource.getConnection();
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Statement stmt_mysql = connection.createStatement();
	        ResultSet rs = stmt_mysql.executeQuery(query);

	        // ResultSet에서 데이터 추출하여 ArrayList에 추가
	        while (rs.next()) {
	        	String gender = rs.getString("gender");
	            int maleCount = rs.getInt("male_count");
	            int femaleCount = rs.getInt("female_count");
	            
	            labels1.add(gender);
	            data1.add(maleCount);
	            data2.add(femaleCount);
	            
	            
	      
	        }
	        connection.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }return new ManagerDaydto(labels1,data1,data2);
	}
	
	public ManagerMonthdto view2() {
		
		ArrayList<String> labels2 = new ArrayList<>();
	    ArrayList<Integer> data3 = new ArrayList<>();
	    Connection connection = null;
	    
	    String query="SELECT DATE_FORMAT(active, '%Y-%m') AS month, COUNT(*) AS count FROM user GROUP BY DATE_FORMAT(active, '%Y-%m') ORDER BY month ASC";
	    
	    try {
	    	connection = dataSource.getConnection();
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Statement stmt_mysql = connection.createStatement();
	        ResultSet rs = stmt_mysql.executeQuery(query);

	        // ResultSet에서 데이터 추출하여 ArrayList에 추가
	        while (rs.next()) {
	            labels2.add(rs.getString(1));
	            data3.add(rs.getInt(2));
	        }

	        connection.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }return new ManagerMonthdto(labels2,data3);
	}
	
public ManagerYeardto view3() {
		
		ArrayList<String> labels3 = new ArrayList<>();
	    ArrayList<Integer> data4 = new ArrayList<>();
	    Connection connection = null;
	    
	    String query="SELECT DATE_FORMAT(active, '%Y') AS year, COUNT(*) AS count FROM user GROUP BY DATE_FORMAT(active, '%Y') ORDER BY year ASC";
	    
	    try {
	    	connection = dataSource.getConnection();
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Statement stmt_mysql = connection.createStatement();
	        ResultSet rs = stmt_mysql.executeQuery(query);

	        // ResultSet에서 데이터 추출하여 ArrayList에 추가
	        while (rs.next()) {
	            labels3.add(rs.getString(1));
	            data4.add(rs.getInt(2));
	        }

	        connection.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }return new ManagerYeardto(labels3,data4);
	}
	
	
}


