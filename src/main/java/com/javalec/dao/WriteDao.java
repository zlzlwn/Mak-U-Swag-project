package com.javalec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class WriteDao {
		
	DataSource dataSource;
	
	
	
	//DataSource 초기화를 위한 생성자
	public WriteDao() {
	    try {
	        // JNDI를 사용하여 DataSource 설정
	        Context context = new InitialContext();
	        // "java:comp/env/jdbc/makuswag"는 DataSource의 JNDI 이름으로 context.xml에서 설정해야 함
	        dataSource = (DataSource) context.lookup("java:comp/env/jdbc/makuswag");

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	
	public void write(String qnaTitle, String qnaCategory, String qnaContent , String qnaImage ) {
		Connection connection = null;
		PreparedStatement preparedStatement =null;
		
		try {
			connection = dataSource.getConnection();
			String query = "insert into qna (userId, qnaTitle, qnaCategory, qnaContent, qnaImage, qnaDate) values ('jojo',?,?,?,?,now())";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, qnaTitle);
			preparedStatement.setString(2, qnaCategory);
			preparedStatement.setString(3, qnaContent);
			preparedStatement.setString(4, qnaImage);
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
		
		
	}//write
	
	
	
	
	
	
	
	
	
}
