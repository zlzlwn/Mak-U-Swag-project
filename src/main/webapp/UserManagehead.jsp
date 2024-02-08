<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<style>

html,
body {
    height: 150%;
    margin: 0;
    padding: 0;
     z-index: 2; 

}

header {
    background-color: #d4ccbb;
    padding: 5px 10px; /* 상하 여백을 더 작게 조정 */
    weight: 10px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    z-index: 2; /* z-index 적용 */
}


.frame-container iframe {
    width: 45%;
    height: auto;
    border: none;
    z-index: 2;
}

.frame-container iframe:nth-child(2) {
    margin-left: 5%; /* Gender.jsp와의 간격 조절 */
    z-index: 2; /* z-index 적용 */
}


.header_wrap {
   width: 80%;
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;
   margin-left: 20px;
   margin-top:30px;
   z-index: 2; /* z-index 적용 */
}

.header_wrap h1 img {
    max-width: 100px;
    z-index: 2; /* z-index 적용 */
}

.header_wrap .gnb {
    display: flex;
    align-items: center;
    z-index: 2; /* z-index 적용 */
}

.header_wrap .gnb ul {
    display: flex;
    list-style: none;
    margin: 0;
    padding: 0;
    z-index: 2; /* z-index 적용 */
}

.header_wrap .gnb li {
  color: #000000;
  margin: 0 20px; /* 여백 조정 */
  margin-top: 18px; /* 로그아웃 링크를 아래로 내리는 간격 조정 */
  margin-right: 34px;
  z-index: 2; /* z-index 적용 */
  
}

.spacing {
    height: 10px;
    z-index: 2; /* z-index 적용 */
}

.content {
    display: flex;
    justify-content: center;
    align-items: center;
    background: linear-gradient(180deg, rgba(228, 220, 207, 1) 0%, rgba(245, 240, 187, 1) 38%, rgba(125, 157, 156, 1) 100%);
    height: calc(100% + 100px); /* header 높이 고려하여 계산 */
    z-index: 2; /* z-index 적용 */
}

.frame-container {
    display: flex;
    justify-content: space-between;
    width: 80%;
    height: 100%;
    z-index: 2;
}


.check {
    margin-top: -50%; /* 버튼을 위로 이동 */
    margin-left: 10%;
    width: 20%;
    justify-content: space-around;
    z-index: 2; /* z-index 적용 */
}
        .manager-iframe {
            position: absolute;
            left: calc(70% - 70px);
            width: calc(20% - 30px);
            height: calc(50% + 300px);
            margin-top: 90px;
            z-index: 2; /* 낮은 z-index 값으로 설정하여 뒤쪽에 배치 */
        }


.header_wrap h1 img {
     max-width: 10.28%; /* 최대 너비를 부모 요소의 100%로 설정 */
        height: auto; /* 높이를 자동으로 조절하여 비율 유지 */
        margin-top: 16.2px;
        margin-left: 20px;
        
    }}
    

</style>
</head>
<body>
<%
    ArrayList<String> labels = (ArrayList<String>) session.getAttribute("labels");
    ArrayList<Integer> data = (ArrayList<Integer>) session.getAttribute("data");

  
%>

<script>
    // 세션에서 가져온 labels와 data 데이터가 null인지 확인
    // JSON 형식의 데이터를 JavaScript 변수에 할당
    
    // JSON 형식의 데이터를 JavaScript 변수에 할당
    const labels = JSON.parse('<%= new Gson().toJson(labels) %>');
    const data = JSON.parse('<%= new Gson().toJson(data) %>');
</script>


<header>
    <div class="header_wrap">
        <h1><a href="adminmain.do"><img src="./images/CompanyLogo.png" alt="로고"></a></h1>
        <nav class="gnb">

        </nav>
    </div>
</header>


<div class="content">

    <div class="frame-container" >
        <iframe src="Manager.jsp" frameborder="0" style="width: 60%; margin-top: 50px;z-index: 3;"></iframe>
        <iframe src="Gender.jsp" frameborder="0" style="position: absolute; left: calc(70% - 70px); width: calc(20% - 30px); height: calc(50% + 300px); margin-top: 90px;"></iframe>
    </div>
    <iframe src="UserTable.jsp" frameborder="0" style="position: absolute; width: 80%; height: 45%; margin: 10px auto; align-items: center; z-index: 999"></iframe>
</div>


<script src="queryTable.js"></script>
<script>
    // 창 크기가 변경될 때 iframe의 크기를 다시 계산하여 조절하는 함수
    function resizeIframes() {
        const frameContainers = document.querySelectorAll('.frame-container');
        frameContainers.forEach(container => {
            const iframes = container.querySelectorAll('iframe');
            iframes.forEach(iframe => {
                iframe.style.height = `${container.offsetHeight}px`;
            });
        });
    }

    // 문서가 완전히 로드된 후에 실행되는 함수
    $(document).ready(function() {
        // 창 크기가 변경될 때 iframe의 크기를 다시 계산하여 조절
        $(window).resize(resizeIframes);
        resizeIframes(); // 초기 로드 시 iframe 크기 조절
    });
</script>



</body>
</html>
