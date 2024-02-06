package com.javalec.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;

import com.javalec.dto.Managerdto;

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
	
	
	
	public Managerdto view() {
		
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
    }return new Managerdto(labels,data);
}
	
	
	public Managerdto view1() {
		
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
	    }return new Managerdto(labels1,data1,data2);
	}


}
