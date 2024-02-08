package com.javalec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.dto.FaqDto;
import com.javalec.dto.NoticeDtoPJH;

public class FaqDao {
		
DataSource dataSource;
	
	
	
	public FaqDao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/makuswag"); // context 파일 위치

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
		public ArrayList<FaqDto> FaqList(){
			ArrayList<FaqDto> dtos= new ArrayList<FaqDto>();
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			ResultSet resultSet = null;
			
			try {
				connection = dataSource.getConnection();
				String query="select faqCategory, faqTitle, faqContent, faqImage from faq;";
				
				preparedStatement = connection.prepareStatement(query);
				resultSet = preparedStatement.executeQuery();
				
				while(resultSet.next()) {
					String faqCategory=resultSet.getString("faqCategory");
					String faqTitle=resultSet.getString("faqTitle");
					String faqContent=resultSet.getString("faqContent");
					String faqImage=resultSet.getString("faqImage");
					
					FaqDto dto = new FaqDto(faqCategory, faqTitle, faqContent, faqImage);
							
					
							
							
					
					
					dtos.add(dto);
				}
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				try {
						if(resultSet != null) resultSet.close();
						if(preparedStatement !=null) preparedStatement.close();
						if(connection !=null) connection.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
				
			}
			return dtos;
		}
}
