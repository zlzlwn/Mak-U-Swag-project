package com.javalec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.dto.QnaDeleteDto;
import com.javalec.dto.QnaDto;

public class QnaDeleteDao {

	DataSource dataSource;

	public QnaDeleteDao() {
		try {
			// JNDI를 사용하여 DataSource 설정
			Context context = new InitialContext();
			// "java:comp/env/jdbc/makuswag"는 DataSource의 JNDI 이름으로 context.xml에서 설정해야 함
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/makuswag");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public QnaDeleteDto DeleteAction(String qnaSeq) {
		 QnaDeleteDto dto_viewContent = null;
		 	
		 	
	        if (qnaSeq != null) { // qnaSeq가 null이 아닌 경우에만 삭제 작업을 수행
	            int qnaSeq_int = Integer.parseInt(qnaSeq);
	            
	            
	            Connection connection = null;
	            PreparedStatement preparedStatement = null;
	            ResultSet resultSet = null;

	            try {
	                connection = dataSource.getConnection();
	                String query = "DELETE FROM qna WHERE qnaSeq = ?";
	                preparedStatement = connection.prepareStatement(query);
	                preparedStatement.setString(1, qnaSeq);
	                int rowsAffected = preparedStatement.executeUpdate(); // executeUpdate()로 변경
	                
	                // 삭제 성공 여부에 따라 적절한 작업을 수행할 수 있음
	                if (rowsAffected > 0) {
	                    // 삭제 성공 시
	                    dto_viewContent = new QnaDeleteDto(qnaSeq_int);
	                } else {
	                    // 삭제 실패 시
	                    System.out.println("Q&A 삭제에 실패했습니다.");
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
	        } else {

	        
	        }

	        return dto_viewContent;
	    }

}
