package com.javalec.command;


import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.dao.ReviewWriteDao;
import com.javalec.dao.WriteDao;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MReviewWriteCommand implements MCommand {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
    	
    	
    	
    	
    	
        // write_view.jsp의 request 를 받아서 Table에 insert 한다.
        int fileSize = 1024 * 1024 * 10; // 10MB로 파일 크기를 제한
        ReviewWriteDao dao = new ReviewWriteDao();

        try {
            ServletContext context = request.getServletContext();
            String uploadPath = context.getRealPath("/images");
            System.out.println("Upload Path: " + uploadPath);
            
            // 파일 업로드 처리
            MultipartRequest multi = new MultipartRequest(request, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
            String reviewTitle = multi.getParameter("reviewTitle");
            String reviewContent = multi.getParameter("reviewContent");
            String reviewImage = multi.getFilesystemName("reviewImage");
            
            System.out.println(reviewTitle);
            System.out.println(reviewImage);
            System.out.println(reviewContent);
            
            // 데이터베이스에 삽입
            dao.write(fileSize, uploadPath, reviewTitle, reviewContent, reviewImage);
            
            // 성공 메시지 전송
            response.setContentType("text/html; charset=UTF-8");
        } catch (Exception e) {
            // 업로드 실패 시 오류 메시지 전송
            e.printStackTrace();
            response.setContentType("text/html; charset=UTF-8");
        }
    }

}
