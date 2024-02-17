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

@WebServlet("/UploadImageServlet2")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
    maxFileSize = 1024 * 1024 * 10,       // 10MB
    maxRequestSize = 1024 * 1024 * 50     // 50MB
)
public class UploadImageServlet2 extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    public UploadImageServlet2() {
    	super();
    	
    	
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 이미지 파일 받기
        Part filePart = request.getPart("image");
        Part filePart1 = request.getPart("image1");
        Part filePart2 = request.getPart("image2");

        // 파일명 및 파일 경로 생성
        String originalFileName = getFileName(filePart);
 
        System.out.println(originalFileName);
        String uploadPath = getServletContext().getRealPath("/") + "images" + File.separator + originalFileName;
        System.out.println(uploadPath);
        

        // 이미지 파일 저장
        if (filePart != null) {
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
        }

        String originalFileName1 = getFileName(filePart1);
        String uploadPath1 = getServletContext().getRealPath("/") + "images" + File.separator + originalFileName1;

        // 이미지 파일1 저장
        if (filePart1 != null) {
            try (InputStream fileContent1 = filePart1.getInputStream();
                 OutputStream outputStream1 = new FileOutputStream(uploadPath1)) {
                int bytesRead1;
                final byte[] buffer1 = new byte[1024];
                while ((bytesRead1 = fileContent1.read(buffer1)) != -1) {
                    outputStream1.write(buffer1, 0, bytesRead1);
                }
            } catch (IOException e) {
                e.printStackTrace();
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "이미지 업로드 중 문제가 발생했습니다.");
                return;
            }
        }

        String originalFileName2 = getFileName(filePart2);
        String uploadPath2 = getServletContext().getRealPath("/") + "images" + File.separator + originalFileName2;

        // 이미지 파일2 저장
        if (filePart2 != null) {
            try (InputStream fileContent2 = filePart2.getInputStream();
                 OutputStream outputStream2 = new FileOutputStream(uploadPath2)) {
                int bytesRead2;
                final byte[] buffer2 = new byte[1024];
                while ((bytesRead2 = fileContent2.read(buffer2)) != -1) {
                    outputStream2.write(buffer2, 0, bytesRead2);
                }
            } catch (IOException e) {
                e.printStackTrace();
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "이미지 업로드 중 문제가 발생했습니다.");
                return;
            }
        }

        // 상대 경로 생성
        String relativeImagePath = (filePart != null) ? originalFileName : null;
        String relativeImagePath1 = (filePart1 != null) ? originalFileName1 : null;
        String relativeImagePath2 = (filePart2 != null) ? originalFileName2 : null;

        // 상대 경로 반환
        response.getWriter().write(relativeImagePath + "\n" + relativeImagePath1 + "\n" + relativeImagePath2);
    }
    // 파일명을 추출하는 메서드
    private String getFileName(Part part) {
        return part.getSubmittedFileName();
    }}