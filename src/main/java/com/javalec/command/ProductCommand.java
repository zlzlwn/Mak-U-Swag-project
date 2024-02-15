package com.javalec.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.dao.Managerdao;
import com.javalec.dao.Productdao;
import com.javalec.dto.ManagerYeardto;
import com.javalec.dto.Productdto;
import com.javalec.dto.Productdto2;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.Part;

public class ProductCommand implements MCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		int fileSize = 1024 * 1024 * 100; // 300MB로 파일 크기를 제한
		Productdao dao = new Productdao();
		// TODO Auto-generated method stub
		
response.setCharacterEncoding("UTF-8");
        
        try {
            // ServletContext를 사용하여 업로드 경로를 가져옴
            ServletContext context = request.getServletContext();
            String uploadPath = context.getRealPath("/images");
            System.out.println(uploadPath);

            // MultipartRequest를 사용하여 파일 업로드 처리
            MultipartRequest multi = new MultipartRequest(request, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());


            
            String proCategory = multi.getParameter("proCategory");
            System.out.println(proCategory);
            String proName = multi.getParameter("proName");
            String proGender = multi.getParameter("proGender");
            String proIntroduction = multi.getParameter("proIntroduction");
            String proColor = multi.getParameter("proColor");
            int proQty = Integer.parseInt(multi.getParameter("proQty"));
            String proPrice = multi.getParameter("proPrice");
            String proImage1 = multi.getFilesystemName("proImage1");
            String proImage2 = multi.getFilesystemName("proImage2");
            String proImage3 = multi.getFilesystemName("proImage3");
            
            
            // 성공 메시지 전송
            response.getWriter().write("성공");
            dao.write(proCategory, proName, proGender, proIntroduction,proColor, proQty, proPrice,proImage1, proImage2,proImage3);
     
        } catch (Exception e) {
            // 업로드 실패 시 오류 메시지 전송
            try {
                response.getWriter().write("업로드 용량 오류 또는 그 이외..." + e.getMessage());
            } catch (IOException ioException) {
                ioException.printStackTrace();
            }
        }
        HttpSession session = request.getSession();
        
        Productdao dao1 = new Productdao();
        Productdto dto = dao1.view();
        
        ArrayList<String> labels4 = dto.getLabels4();
        ArrayList<Integer> data5 = dto.getData5();
        session.setAttribute("labels4", labels4);
        session.setAttribute("data5", data5);	
        
        Productdto2 dto2 = dao1.view2();
        ArrayList<String> labels5 = dto2.getLabels5();
        ArrayList<Integer> data6 = dto2.getData6();
        session.setAttribute("labels5", labels5);
        session.setAttribute("data6", data6);

	}
	
    
}