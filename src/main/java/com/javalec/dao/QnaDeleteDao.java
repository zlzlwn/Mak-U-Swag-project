package com.javalec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.dto.QnaDeleteDto;

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

	// Q&A 레코드를 삭제하는 메서드
	public QnaDeleteDto DeleteAction(String qnaSeq) {
		QnaDeleteDto dto_viewContent = null;

		int qnaSeq_int = Integer.parseInt(qnaSeq);

		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			connection = dataSource.getConnection();
			String query = "DELETE FROM qna WHERE qnaSeq = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, qnaSeq);
			resultSet = preparedStatement.executeQuery();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null)
					resultSet.close();
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e) {
				System.out.println("Q&A 삭제 중 예외 발생");
				e.printStackTrace();
			}
		}
		return dto_viewContent;
	}
}