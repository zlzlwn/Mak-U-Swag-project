package com.javalec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.dto.Allinonedto;

public class AllinoneDetailDao {
	
DataSource dataSource;
	
	
	
	public AllinoneDetailDao() {
	    try {
	        // JNDI를 사용하여 DataSource 설정
	        Context context = new InitialContext();
	        // "java:comp/env/jdbc/makuswag"는 DataSource의 JNDI 이름으로 context.xml에서 설정해야 함
	        dataSource = (DataSource) context.lookup("java:comp/env/jdbc/makuswag");

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}

	public Allinonedto getDetail(String proName) {
        Allinonedto dto = null;
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            connection = dataSource.getConnection();
            String query = "SELECT min(proSeq) as proSeq, proName, min(proPrice) as proPrice, min(proImage1) as proImage1, min(proImage2) as proImage2,min(proImage3) as proImage3,min(proIntroduction) as proIntroduction,sum(proQty) as proQty FROM product WHERE proName=? group by proName;";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, proName);
            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                int proSeq = resultSet.getInt("proSeq");
                String name = resultSet.getString("proName");
                int price = resultSet.getInt("proPrice");
                String image1 = resultSet.getString("proImage1");
                String image2 = resultSet.getString("proImage2");
                String image3 = resultSet.getString("proImage3");
                String detail = resultSet.getString("proIntroduction");
                int qty = resultSet.getInt("proQty");
                
                // DTO 객체 생성
                dto = new Allinonedto(proSeq, name, price,image1, image2,image3,detail,qty);
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

        return dto;
    }
}