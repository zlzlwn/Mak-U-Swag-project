<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

html,
body {
    height: 200%;
    margin: 0;
    padding: 0;
    background-color: #d4ccbb;
}

header {
    background-color: #d4ccbb;
    padding: 10px 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}


.header_wrap {
   width: 80%;
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;
}

.header_wrap h1 img {
    max-width: 100px;
}

.header_wrap .gnb {
    display: flex;
    align-items: center;
}

.header_wrap .gnb ul {
    display: flex;
    list-style: none;
    margin: 0;
    padding: 0;
}

.header_wrap .gnb li {
    margin-left: 20px;
}

.spacing {
    height: 10px;
}

.content {
    display: flex;
    justify-content: center;
    align-items: center;
    background: linear-gradient(180deg, rgba(228, 220, 207, 1) 0%, rgba(245, 240, 187, 1) 38%, rgba(125, 157, 156, 1) 100%);
    height: calc(100% - 60px); /* header 높이 고려하여 계산 */
}

.frame-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 80%;
    height: 100%;
}

iframe {
    width: 45%;
    height: 90%;
    border: none;
}

</style>
</head>
<body>
<%
    ArrayList<String> labels = (ArrayList<String>) session.getAttribute("labels");
    ArrayList<Integer> data = (ArrayList<Integer>) session.getAttribute("data");
    out.print(labels);
    out.print(data);
  
%>

<script>
    // 세션에서 가져온 labels와 data 데이터가 null인지 확인
    // JSON 형식의 데이터를 JavaScript 변수에 할당
    
    // JSON 형식의 데이터를 JavaScript 변수에 할당
    const labels = JSON.parse('<%= new Gson().toJson(labels) %>');
    const data = JSON.parse('<%= new Gson().toJson(data) %>');
    out.print(labels);
</script>

<header>
    <div class="header_wrap">
        <h1><a href="adminmain.do"><img src="./images/CompanyLogo.png" alt="로고"></a></h1>
        <nav class="gnb">
            <ul>
                <li><a href="logout.do">Logout</a></li>
            </ul>
        </nav>
    </div>
</header>

<div class="content">
    <div class="frame-container">
        <iframe src="Manager.jsp" frameborder="0"></iframe>
        <iframe src="Gender.jsp" frameborder="0"></iframe>
    </div>
</div>

</body>
</html>
