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
	public QnaDto infomation(String qnaSeq) {
		
		QnaDto dto_viewContent = null;
		
		int qnaSeq_int = Integer.parseInt(qnaSeq);
		
		Connection connection = null;
	    PreparedStatement preparedStatement = null;
	    ResultSet resultSet = null;

	    try {
	        connection = dataSource.getConnection();
	        String query = "SELECT qnaSeq, qnaTitle, qnaContent, qnaImage, qnaDate FROM qna WHERE qnaSeq = ?";
	        preparedStatement = connection.prepareStatement(query);
	        preparedStatement.setString(1, qnaSeq);
	        resultSet = preparedStatement.executeQuery();

	        while (resultSet.next()) {
	        	int qnaSeqNum = resultSet.getInt("qnaSeq");
	            String qnaTitle = resultSet.getString("qnaTitle");
	            String qnaContent = resultSet.getString("qnaContent");
	            String qnaImage = resultSet.getString("qnaImage");
	            String qnaDate = resultSet.getString("qnaDate");
	            
	            dto_viewContent = new QnaDto(qnaSeqNum , qnaTitle, qnaContent, qnaImage, qnaDate);
	            
	            
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
	    return dto_viewContent;
	}

}
