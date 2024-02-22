package com.javalec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.mysql.cj.Session;

public class ReviewWriteDao {

	DataSource dataSource;

	// DataSource 초기화를 위한 생성자
	public ReviewWriteDao() {
		try {
			// JNDI를 사용하여 DataSource 설정
			Context context = new InitialContext();
			// "java:comp/env/jdbc/makuswag"는 DataSource의 JNDI 이름으로 context.xml에서 설정해야 함
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/makuswag");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void write(int proSeq, String userId, String revTitle, String revContent, String revImage) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			connection = dataSource.getConnection();
			String query = "INSERT INTO review (proSeq, userId, revTitle, revContent, revImage, revDate) \n"
					+ "VALUES ('"+"시퀀스 세션값 가져오는 코드" +"', ?, ?, ?, ?, now());";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, proSeq);
			preparedStatement.setString(2,userId);
			preparedStatement.setString(3, revTitle);
			preparedStatement.setString(4, revContent);
			preparedStatement.setString(5, revImage);
			preparedStatement.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {// 메모리 정리용도로 많이 씀(만든거랑 거꾸로)
			try {
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();

			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}// write

}
