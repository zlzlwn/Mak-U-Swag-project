package com.javalec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.dto.QnaDto;

public class QnaContentDao {
	
	
	
	
	DataSource dataSource;
	
	
	
	//DataSource 초기화를 위한 생성자
	public QnaContentDao() {
	    try {
	        // JNDI를 사용하여 DataSource 설정
	        Context context = new InitialContext();
	        // "java:comp/env/jdbc/makuswag"는 DataSource의 JNDI 이름으로 context.xml에서 설정해야 함
	        dataSource = (DataSource) context.lookup("java:comp/env/jdbc/makuswag");

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	public ArrayList<QnaDto> list() {
	    ArrayList<QnaDto> dtos = new ArrayList<QnaDto>();
	    Connection connection = null;
	    PreparedStatement preparedStatement = null;
	    ResultSet resultSet = null;

	    try {
	        connection = dataSource.getConnection();
	        // SQL 쿼리를 사용하여 페이지 및 페이지당 튜플 수에 기반한 제한된 수의 공지사항을 가져옴
	        String query = "SELECT qnaTitle, qnaContent, qnaDate FROM qna";
	        preparedStatement = connection.prepareStatement(query);
	        
	        resultSet = preparedStatement.executeQuery();


	        	String qnaTitle = resultSet.getString("qnaTitle");
	        	String qnaContent = resultSet.getString("qnaContent");
	        	String qnaDate = resultSet.getString("qnaDate");

	            QnaDto dto = new QnaDto(qnaTitle, qnaContent, qnaDate);
	            dtos.add(dto);

	    
	    
	    
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
