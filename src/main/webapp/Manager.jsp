<%@page import="java.util.ArrayList"%>
<%@page import="com.google.gson.Gson"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<style>

</style>
</head>
<body>

<button id="DayButton">일별</button>
<button id="MonthButton">월별</button>
<button id="YearButton">연별</button>
<script>
    // 세션에서 가져온 labels와 data 데이터가 null인지 확인
    // JSON 형식의 데이터를 JavaScript 변수에 할당
    
    // JSON 형식의 데이터를 JavaScript 변수에 할당
    
    // 일별 버튼 클릭 이벤트 리스너
    document.getElementById('DayButton').addEventListener('click', function() {
        console.log('일별 버튼 클릭');
        // Manager.jsp에 있는 iframe의 src 변경
        const managerIframe = document.getElementById('managerFrame');
        if (managerIframe) {
            managerIframe.src = "Managerday.jsp";
        } else {
            console.error("Manager.jsp iframe을 찾을 수 없습니다.");
        }
    });
   
    // 월별 버튼 클릭 이벤트 리스너
    document.getElementById('MonthButton').addEventListener('click', function() {
        console.log('월별 버튼 클릭');
        // Manager.jsp에 있는 iframe의 src 변경
        const managerIframe = document.getElementById('managerFrame');
        if (managerIframe) {
            managerIframe.src = "ManagerMonth.jsp";
        } else {
            console.error("Manager.jsp iframe을 찾을 수 없습니다.");
        }
    });

    // 연별 버튼 클릭 이벤트 리스너
    document.getElementById('YearButton').addEventListener('click', function() {
        console.log('연별 버튼 클릭');
        // Manager.jsp에 있는 iframe의 src 변경
        const managerIframe = document.getElementById('managerFrame');
        if (managerIframe) {
            managerIframe.src = "ManagerYear.jsp";
        } else {
            console.error("Manager.jsp iframe을 찾을 수 없습니다.");
        }
    });
</script>

<iframe id="managerFrame" src="" frameborder="0" style="width: 100%; height: 500px;"></iframe>
</body>
</html>
