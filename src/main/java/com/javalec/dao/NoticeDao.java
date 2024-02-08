package com.javalec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.dto.NoticeDtoPJH;


public class NoticeDao {

	
DataSource dataSource;
	
	
	
	public NoticeDao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/makuswag"); // context 파일 위치

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
		public ArrayList<NoticeDtoPJH> list(){
			ArrayList<NoticeDtoPJH> dtos= new ArrayList<NoticeDtoPJH>();
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			ResultSet resultSet = null;
			
			try {
				connection = dataSource.getConnection();
				String query="select noCategory, noTitle, noDate, noContent, noImage from notice;";
				
				preparedStatement = connection.prepareStatement(query);
				resultSet = preparedStatement.executeQuery();
				
				while(resultSet.next()) {
					String noCategory=resultSet.getString("noCategory");
					String noTitle=resultSet.getString("noTitle");
					String noDate=resultSet.getString("noDate");
					String noContent=resultSet.getString("noContent");
					String noImage=resultSet.getString("noImage");
					
					NoticeDtoPJH dto = new NoticeDtoPJH(noTitle, noCategory, noDate, noContent, noImage);
					
							
							
					
					
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
