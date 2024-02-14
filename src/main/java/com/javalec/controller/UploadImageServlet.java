package com.javalec.controller;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/UploadImageServlet")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
    maxFileSize = 1024 * 1024 * 10,       // 10MB
    maxRequestSize = 1024 * 1024 * 50     // 50MB
)
public class UploadImageServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    public UploadImageServlet() {
    	super();
    	
    	
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	
        
        // 이미지 파일 받기
    	 Part filePart = request.getPart("image");

    	    // 파일명 및 파일 경로 생성
    	    String originalFileName = getFileName(filePart);
    	    String uploadPath = getServletContext().getRealPath("/") + "images" + File.separator + originalFileName;

    	    // 이미지 파일 저장
    	    try (InputStream fileContent = filePart.getInputStream();
    	         OutputStream outputStream = new FileOutputStream(uploadPath)) {
    	        int bytesRead;
    	        final byte[] buffer = new byte[1024];
    	        while ((bytesRead = fileContent.read(buffer)) != -1) {
    	            outputStream.write(buffer, 0, bytesRead);
    	        }
    	    } catch (IOException e) {
    	        e.printStackTrace();
    	        response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "이미지 업로드 중 문제가 발생했습니다.");
    	        return;
    	    }

    	    String relativeImagePath = originalFileName;
    	    // 업데이트 성공 시 응답
    	    response.getWriter().write(relativeImagePath);
    }

    	// 파일명을 추출하는 메서드
    private String getFileName(Part part) {
        return part.getSubmittedFileName();
    }}