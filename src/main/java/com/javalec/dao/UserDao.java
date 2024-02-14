package com.javalec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.javalec.dto.UserDto;


public class UserDao {

	public UserDao() {
		// TODO Auto-generated constructor stub
	}
	
	public UserDto view(String userId, String userPasswd) {

		UserDto Dto = null;

        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            String query = "SELECT userId, userPw FROM user WHERE userId = ? AND userPw = ?";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, userId);
            preparedStatement.setString(2, userPasswd);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Dto = new UserDto(userId, userPasswd); // Assuming loginDTO constructor takes id, pw, and name
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
