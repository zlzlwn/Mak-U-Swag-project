<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.javalec.dto.UserDto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공!!</title>
</head>
<body>
<%
    Object userObject = session.getAttribute("user");

    if (userObject != null && userObject instanceof UserDto) {
        // Regular user is logged in
        UserDto user = (UserDto) userObject;

        // Check if the user's name contains "대표"
%>
        <script type="text/javascript">
            alert('환영합니다, <%= user.getName()+"님" %>!');
            window.location.href = '<%= "index.jsp" %>';
        </script>
<%
    } else {
        // No valid user or admin is logged in, redirect to a default page
        response.sendRedirect("default.jsp");
    }
%>