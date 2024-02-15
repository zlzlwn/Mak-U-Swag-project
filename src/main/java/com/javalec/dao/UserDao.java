package com.javalec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.dto.UserDto;


public class UserDao {

	DataSource dataSource;
	
	public UserDao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/makuswag"); // context.xml위치

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public UserDto view(String userId, String userPasswd) {

		UserDto Dto = null;

        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
        	connection = dataSource.getConnection();
            String query = "SELECT userId, userPw, name FROM user WHERE userId = ? AND userPw = ?";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, userId);
            preparedStatement.setString(2, userPasswd);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
            	String name = resultSet.getString("name");
                Dto = new UserDto(userId, userPasswd, name); // Assuming loginDTO constructor takes id, pw, and name
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return Dto;
    }
	
}
