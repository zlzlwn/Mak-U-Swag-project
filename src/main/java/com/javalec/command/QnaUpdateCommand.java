package com.javalec.command;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.dao.QnaUpdateDao;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class QnaUpdateCommand implements MCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int fileSize = 1024 * 1024 * 10;
		QnaUpdateDao dao = new QnaUpdateDao();
		
		 try {
	            ServletContext context = request.getServletContext();
	            String uploadPath = context.getRealPath("/images");
	            System.out.println("Upload Path: " + uploadPath);
	            
	            // 파일 업로드 처리
	            MultipartRequest multi = new MultipartRequest(request, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
	            String qnaTitle = multi.getParameter("qnaTitle");
	            String qnaCategory = multi.getParameter("qnaCategory");
	            String qnaContent = multi.getParameter("qnaContent");
	            String qnaImage = multi.getFilesystemName("qnaImage");
	            
	            System.out.println(qnaTitle);
	            System.out.println(qnaCategory);
	            System.out.println(qnaImage);
	            System.out.println(qnaContent);
	            
	            // 데이터베이스에 삽입
	            dao.update(qnaTitle, qnaCategory, qnaContent, qnaImage);
	            
	            // 성공 메시지 전송
	            response.setContentType("text/html; charset=UTF-8");
	        } catch (Exception e) {
	            // 업로드 실패 시 오류 메시지 전송
	            e.printStackTrace();
	            response.setContentType("text/html; charset=UTF-8");
	        }
	    }
		
		
		
		
	}


