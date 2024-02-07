<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<style>
    #myChart {
        width: 10px; /* 원하는 가로 크기 설정 */
        height: 10px; /* 원하는 세로 크기 설정 */
    }
</style>
</head>
<body>
<div>
    <canvas id="myChart"></canvas>
</div>
<%
    ArrayList<String> labels1 = (ArrayList<String>) session.getAttribute("labels1");
    ArrayList<Integer> data1 = (ArrayList<Integer>) session.getAttribute("data1");
    ArrayList<Integer> data2 = (ArrayList<Integer>) session.getAttribute("data2");
  
%>

<script>
    // JSON 형식의 데이터를 JavaScript 변수에 할당
    const labels1 = JSON.parse('<%= new Gson().toJson(labels1) %>');
    const data1 = JSON.parse('<%= new Gson().toJson(data1) %>');
    const data2 = JSON.parse('<%= new Gson().toJson(data2) %>');

    // 차트 생성
    const ctx = document.getElementById('myChart');
    new Chart(ctx, {
        type: 'pie',
        data: {
            labels: ['남자', '여자'], // 세션에서 가져온 라벨 설정
            datasets: [{
                label: '성별 비율',
                data: [data1[0], data2[1]], // 남자와 여자 데이터만 사용
                backgroundColor: [
                    'rgb(255, 99, 132)', // 남자의 색상
                    'rgb(54, 162, 235)' // 여자의 색상
                ],
                borderWidth: 0 // 선 제거
            }]
        },
        options: {
            plugins: {
                legend: {
                 
                },
                tooltips: {
                    enabled: false // 도구 팁 제거
                }
            },
            scales: {
                x: {
                    display: false // x축 라벨과 축 라인 제거
                },
                y: {
                    display: false // y축 라벨과 축 라인 제거
                }
            }
        }
    });
</script>
</body>
</html>