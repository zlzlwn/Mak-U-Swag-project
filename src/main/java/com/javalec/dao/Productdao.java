package com.javalec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.dto.ManagerDaydto;
import com.javalec.dto.Productdto;
import com.javalec.dto.Productdto2;

public class Productdao {
	DataSource dataSource;
	
	public Productdao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/makuswag"); // context 파일 위치

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
	}
	
	public void write(String proCategory, String proName, String proGender, String proIntroduction, String proColor, int proQty, String proPrice, String proImage) {
		Connection connection = null;
		PreparedStatement preparedStatement =null;
		
		try {
			connection = dataSource.getConnection();
			String query = "INSERT INTO product (proCategory, proName, proGender, proIntroduction,proColor, proQty, proPrice,proImage) VALUES (?, ?, ?, ?,?, ?, ?,?);";
			preparedStatement =connection.prepareStatement(query);
			preparedStatement.setString(1, proCategory);
			preparedStatement.setString(2, proName);
			preparedStatement.setString(3, proGender);
			preparedStatement.setString(4, proIntroduction);
			preparedStatement.setString(5, proColor);
			preparedStatement.setInt(6, proQty);
			preparedStatement.setString(7, proPrice);
			preparedStatement.setString(8, proImage);
			preparedStatement.executeUpdate();
			
					
		}catch (Exception e) {
			e.printStackTrace();
		}finally {//메모리 정리용도로 많이 씀(만든거랑 거꾸로)
			try {
				if (preparedStatement != null) preparedStatement.close();
				if (connection != null) connection.close();
					
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	


}
	
	public Productdto view() {
		
		ArrayList<String> labels4 = new ArrayList<>();
	    ArrayList<Integer> data5 = new ArrayList<>();
	    Connection connection = null;

	    String query = "SELECT proName, SUM(proQty) AS totalQty FROM product GROUP BY proName;";

	    try {
	        connection = dataSource.getConnection();
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Statement stmt_mysql = connection.createStatement();
	        ResultSet rs = stmt_mysql.executeQuery(query);

	        // ResultSet에서 데이터 추출하여 ArrayList에 추가
	        while (rs.next()) {
	            String proName = rs.getString("proName");
	            int totalQty = rs.getInt("totalQty");

	            labels4.add(proName);
	            data5.add(totalQty);
	        }
	        connection.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return new Productdto(labels4, data5);
	}

	public Productdto2 view2() {
	    ArrayList<String> labels5 = new ArrayList<>();
	    ArrayList<Integer> data6 = new ArrayList<>();
	    Connection connection = null;

	    String query = "SELECT pr.proName, "
	                 + "       SUM(p.pQty) AS totalQuantity, "
	                 + "       ROUND((SUM(p.pQty) / (SELECT SUM(pQty) FROM purchase)) * 100, 2) AS percentage "
	                 + "FROM purchase p "
	                 + "INNER JOIN Product pr ON p.proseq = pr.proseq "
	                 + "GROUP BY pr.proName "
	                 + "ORDER BY pr.proName";

	    try {
	        connection = dataSource.getConnection();
	        Statement stmt_mysql = connection.createStatement();
	        ResultSet rs = stmt_mysql.executeQuery(query);

	        // ResultSet에서 데이터 추출하여 ArrayList에 추가
	        while (rs.next()) {
	            String proName = rs.getString("proName");
	            int totalQty = rs.getInt("totalQuantity"); // totalQuantity로 수정
	            

	            labels5.add(proName);
	            data6.add(totalQty);
	        }
	        connection.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return new Productdto2(labels5, data6);
	}


		



}
