package com.javalec.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.javalec.dto.Productdto3;
import com.javalec.dto.Productdto4;
import com.javalec.util.SharVar;

/**
 * Servlet implementation class QueryServletTotal
 */
@WebServlet("/QueryServletTotal")
public class QueryServletTotal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QueryServletTotal() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
        String selectedDate = request.getParameter("selectedDate");
        response.setContentType("text/html;charset=UTF-8");

        // 박스에 여러개의 데이터 담기
        ArrayList<Productdto4> productList = new ArrayList<Productdto4>();

        String query = "SELECT product.proCategory, product.proName, product.proGender, product.proColor, "
                + "purchase.pQty, purchase.pPrice, purchase.pMethod, purchase.pSpendPoint, pStackPoint, pDate "
                + "FROM purchase "
                + "INNER JOIN product ON purchase.proseq = product.proseq WHERE proName LIKE '%" + name
                + "%'";

        // 선택한 날짜에 해당하는 결과만 필터링
        if (selectedDate != null && !selectedDate.isEmpty()) {
            SimpleDateFormat sdfInput = new SimpleDateFormat("MM/dd/yyyy");
            SimpleDateFormat sdfOutput = new SimpleDateFormat("yyyy-MM-dd");
            try {
                Date date = sdfInput.parse(selectedDate);
                selectedDate = sdfOutput.format(date);
            } catch (ParseException e) {
                e.printStackTrace();
            }
            // 변환된 날짜를 쿼리에 추가
            query += "AND DATE(pDate) = STR_TO_DATE('" + selectedDate + "', '%Y-%m-%d')";
        }
        query += " ORDER BY purchase.pDate ASC";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn_mysql = DriverManager.getConnection(SharVar.url_mysql, SharVar.id_mysql, SharVar.pw_mysql);
            Statement stmt_mysql = conn_mysql.createStatement();

            ResultSet rs = stmt_mysql.executeQuery(query);

            while (rs.next()) {
                Productdto4 product = new Productdto4();
                product.setProCategory(rs.getString("proCategory"));
                product.setProName(rs.getString("proName"));
                product.setProGender(rs.getString("proGender"));
                product.setProColor(rs.getString("proColor"));
                product.setpQty(rs.getInt("pQty"));
                product.setpPrice(rs.getInt("pPrice"));
                product.setpMethod(rs.getString("pMethod"));
                product.setpSpendPoint(rs.getInt("pSpendPoint"));
                product.setpStackPoint(rs.getInt("pStackPoint"));
                product.setpDate(rs.getString("pDate"));
                productList.add(product);
            }

            // ArrayList에 담겨있는 데이터를 JSON으로 변경하여 응답
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");

            PrintWriter out = response.getWriter();
            out.print(new Gson().toJson(productList));
            out.flush();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}