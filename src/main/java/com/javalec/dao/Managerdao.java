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
	


}
