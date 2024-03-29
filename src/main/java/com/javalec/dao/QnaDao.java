package com.javalec.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.dto.QnaDto;


public class QnaDao {

	
DataSource dataSource;
	
	
	
//DataSource 초기화를 위한 생성자
public QnaDao() {
    try {
        // JNDI를 사용하여 DataSource 설정
        Context context = new InitialContext();
        // "java:comp/env/jdbc/makuswag"는 DataSource의 JNDI 이름으로 context.xml에서 설정해야 함
        dataSource = (DataSource) context.lookup("java:comp/env/jdbc/makuswag");

    } catch (Exception e) {
        e.printStackTrace();
    }
}

// 특정 페이지에 표시할 공지사항 목록을 가져오는 메서드
public ArrayList<QnaDto> list(int requestPage, int numOfTuplePerPage) {
    ArrayList<QnaDto> dtos = new ArrayList<QnaDto>();
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;
    int offset = (requestPage - 1) * numOfTuplePerPage;

    try {
        connection = dataSource.getConnection();
        // SQL 쿼리를 사용하여 페이지 및 페이지당 튜플 수에 기반한 제한된 수의 공지사항을 가져옴
        String query = "SELECT qnaSeq, qnaTitle, userId FROM qna order by qnaSeq desc LIMIT ?,?";

        preparedStatement = connection.prepareStatement(query);
        preparedStatement.setInt(1, offset);
        preparedStatement.setInt(2, numOfTuplePerPage);

        resultSet = preparedStatement.executeQuery();

        // 결과 집합을 반복하며 qnaticeDtoPJH 객체를 생성
        while (resultSet.next()) {
        	int qnaSeq = resultSet.getInt("qnaSeq");
        	String qnaTitle = resultSet.getString("qnaTitle");
        	String userId = resultSet.getString("userId");

            QnaDto dto = new QnaDto(qnaSeq, qnaTitle, userId);
            dtos.add(dto);
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
    return dtos;
}

// 데이터베이스에 저장된 공지사항의 총 수를 계산하는 메서드
public int countTuple() {
    Connection conn = null;
    PreparedStatement psmt = null;
    ResultSet rs = null;
    int count = 0;

    try {
        conn = dataSource.getConnection();
        // SQL 쿼리를 사용하여 공지사항의 총 수를 계산
        String query = "SELECT COUNT(*) FROM qna";
        psmt = conn.prepareStatement(query);
        rs = psmt.executeQuery();

        // 결과에서 수를 가져옴
        if (rs.next()) {
            count = rs.getInt(1);
            System.out.println("list-count success QNA다오");
        }

    } catch (Exception e) {
        System.out.println("list-count fail");
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) rs.close();
            if (psmt != null) psmt.close();
            if (conn != null) conn.close();
            System.out.println("< rs, psmt, conn close 성공 (qna다오)>");
        } catch (Exception e) {
            System.out.println("< rs, psmt, conn close Fail>");
        }
    }

    return count;
}
public int calculateTotalPage(int numOfTuplesPerPage) {
    int countedTuple = countTuple();
    int totalPage = 0;

    if (countedTuple % numOfTuplesPerPage == 0) {
        totalPage = countedTuple / numOfTuplesPerPage;
    } else {
        totalPage = countedTuple / numOfTuplesPerPage + 1;
    }

    return totalPage;
}



}
