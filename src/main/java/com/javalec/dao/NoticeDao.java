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
	
	
	
		public ArrayList<NoticeDtoPJH> list(int requestPage, int numOfTuplePerPage){
			ArrayList<NoticeDtoPJH> dtos= new ArrayList<NoticeDtoPJH>();
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			ResultSet resultSet = null;
			int offset = (requestPage - 1) * numOfTuplePerPage;
			
			try {
				connection = dataSource.getConnection();
				String query="SELECT noCategory, noTitle, noDate, noContent, noImage FROM notice LIMIT ?,?";
				
				preparedStatement = connection.prepareStatement(query);
				
				 preparedStatement.setInt(1, offset);
			        preparedStatement.setInt(2, numOfTuplePerPage);
			        
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
		// countTuple 메서드 수정
		public int countTuple() {
		    Connection conn = null;
		    PreparedStatement psmt = null;
		    ResultSet rs = null;
		    int count = 0;

		    try {
		        conn = dataSource.getConnection();
		        String query = "SELECT COUNT(*) FROM notice";
		        psmt = conn.prepareStatement(query);
		        rs = psmt.executeQuery();

		        if (rs.next()) {
		            count = rs.getInt(1);
		            System.out.println("list-count success");
		        }

		    } catch (Exception e) {
		        System.out.println("list-count fail");
		        e.printStackTrace();
		    } finally {
		        try {
		            if (rs != null) rs.close();
		            if (psmt != null) psmt.close();
		            if (conn != null) conn.close();
		            System.out.println("< rs, psmt, conn close success>");
		        } catch (Exception e) {
		            System.out.println("< rs, psmt, conn close Fail>");
		        }
		    }

		    return count;
		}

		// content 메서드 추가
		public NoticeDtoPJH content(int no) {
		    NoticeDtoPJH dto = null;
		    Connection conn = null;
		    PreparedStatement psmt = null;
		    ResultSet rs = null;
		    
		    try {
		        conn = dataSource.getConnection();
		        String query = "SELECT noCategory, noTitle, noDate, noContent, noImage FROM notice WHERE no = ?";
		        psmt = conn.prepareStatement(query);
		        psmt.setInt(1, no);
		        rs = psmt.executeQuery();

		        if (rs.next()) {
		            String noCategory = rs.getString("noCategory");
		            String noTitle = rs.getString("noTitle");
		            String noDate = rs.getString("noDate");
		            String noContent = rs.getString("noContent");
		            String noImage = rs.getString("noImage");

		            dto = new NoticeDtoPJH(noTitle, noCategory, noDate, noContent, noImage);
		        }

		    } catch (Exception e) {
		        e.printStackTrace();
		    } finally {
		        try {
		            if (rs != null) rs.close();
		            if (psmt != null) psmt.close();
		            if (conn != null) conn.close();
		        } catch (Exception e) {
		            e.printStackTrace();
		        }
		    }

		    return dto;
		}
	
	
}
