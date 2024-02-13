package com.javalec.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.dto.ManagerDaydto;
import com.javalec.dto.ManagerMonthdto;
import com.javalec.dto.TotalDaydto;
import com.javalec.dto.TotalMonthdto;
import com.javalec.dto.TotalYeardto;
import com.javalec.dto.Totaldto;

public class Totaldao {
	DataSource dataSource;
	
	public Totaldao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/makuswag"); // context 파일 위치

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
	}
	
	
	public TotalDaydto view() {
		
		ArrayList<String> labels = new ArrayList<>();
	    ArrayList<Integer> data = new ArrayList<>();
	    Connection connection = null;
	    
	    String query="SELECT purchase.pDate, SUM(purchase.pPrice) AS total_pPrice FROM purchase GROUP BY purchase.pDate order by pDate ASC";
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
	    }return new TotalDaydto(labels,data);
	}
	
	
public TotalMonthdto view2() {
		
		ArrayList<String> labels2 = new ArrayList<>();
	    ArrayList<Integer> data3 = new ArrayList<>();
	    Connection connection = null;
	    
	    String query="SELECT DATE_FORMAT(purchase.pDate, '%Y-%m') AS month_date, SUM(purchase.pPrice) AS total_pPrice FROM purchase GROUP BY DATE_FORMAT(purchase.pDate, '%Y-%m') ORDER BY month_date ASC";
	    
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
	    }return new TotalMonthdto(labels2,data3);
	}

public TotalYeardto view3() {
	
	ArrayList<String> labels3 = new ArrayList<>();
    ArrayList<Integer> data4 = new ArrayList<>();
    Connection connection = null;
    
    String query="SELECT DATE_FORMAT(purchase.pDate, '%Y') AS year_date, SUM(purchase.pPrice) AS total_pPrice FROM purchase GROUP BY DATE_FORMAT(purchase.pDate, '%Y') ORDER BY year_date ASC";
    
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
    }return new TotalYeardto(labels3,data4);
}
	
public Totaldto view4() {
	
	ArrayList<String> labels1 = new ArrayList<>();
    ArrayList<Integer> data1 = new ArrayList<>();
    Connection connection = null;
    
    String query="SELECT product.proGender, SUM(purchase.pPrice) AS total_pPrice FROM product INNER JOIN purchase ON product.proseq = purchase.proseq GROUP BY product.proGender";
    
    try {
    	connection = dataSource.getConnection();
        Class.forName("com.mysql.cj.jdbc.Driver");
        Statement stmt_mysql = connection.createStatement();
        ResultSet rs = stmt_mysql.executeQuery(query);

        // ResultSet에서 데이터 추출하여 ArrayList에 추가
        while (rs.next()) {
        	labels1.add(rs.getString(1));
        	data1.add(rs.getInt(2));
        }
        connection.close();
    } catch (Exception e) {
        e.printStackTrace();
    }return new Totaldto(labels1,data1);
}
		

}
