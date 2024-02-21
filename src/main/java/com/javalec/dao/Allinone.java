package com.javalec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.dto.Allinonedto;
import com.javalec.dto.NoticeDtoPJH;

public class Allinone {

	DataSource dataSource;
	
	
	
	public Allinone() {
	    try {
	        // JNDI를 사용하여 DataSource 설정
	        Context context = new InitialContext();
	        // "java:comp/env/jdbc/makuswag"는 DataSource의 JNDI 이름으로 context.xml에서 설정해야 함
	        dataSource = (DataSource) context.lookup("java:comp/env/jdbc/makuswag");

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}

	// 특정 페이지에 표시할 공지사항 목록을 가져오는 메서드
	public ArrayList<Allinonedto> list() {
	    ArrayList<Allinonedto> dtos = new ArrayList<Allinonedto>();
	    Connection connection = null;
	    PreparedStatement preparedStatement = null;
	    ResultSet resultSet = null;

	    try {
	        connection = dataSource.getConnection();
	        // SQL 쿼리를 사용하여 페이지 및 페이지당 튜플 수에 기반한 제한된 수의 공지사항을 가져옴
	        
	        String query = "SELECT min(proSeq) as proSeq, proName, min(proPrice) as proPrice,min(proImage1) as proImage1,min(proImage2) as proImage2, sum(proQty) as totalProQty FROM product  WHERE proCategory = 'All-in-one' group by proName";
	        
	        preparedStatement = connection.prepareStatement(query);
	        resultSet = preparedStatement.executeQuery();


	        // 결과 집합을 반복하며 NoticeDtoPJH 객체를 생성
	        while (resultSet.next()) {
	        	int proSeq = resultSet.getInt("proSeq");
	            String proName = resultSet.getString("proName");
	            int proPrice = resultSet.getInt("proPrice");
	            String proImage1 = resultSet.getString("proImage1");
	            String proImage2 = resultSet.getString("proImage2");

	            Allinonedto dto = new Allinonedto(proSeq,proName,proPrice,proImage1,proImage2);
	            dtos.add(dto);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (resultSet != null) resultSet.close();
	            if (preparedStatement != null) preparedStatement.close();
	            if (connection != null) connection.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	    }
	    return dtos;
	}	
	
}
