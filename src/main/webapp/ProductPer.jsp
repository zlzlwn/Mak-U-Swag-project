<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pie Chart</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body, html {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        .chart-container {
            width: 100%;
            height: 80vh; /* 차트 컨테이너의 높이 설정 */
        }

        .canvas-container {
            width: 100%;
            height: 100%;
        }

        canvas {
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>
    <div class="chart-container">
        <div class="canvas-container">
            <canvas id="myChart"></canvas>
        </div>
      
    </div>

    <% 
        ArrayList<String> labels5 = (ArrayList<String>) session.getAttribute("labels5");
        ArrayList<Integer> data6 = (ArrayList<Integer>) session.getAttribute("data6"); 
    %>
    <script>
        // JSON 형식의 데이터를 JavaScript 변수에 할당
        const labels5 = <%= new Gson().toJson(labels5) %>;
        const data6 = <%= new Gson().toJson(data6) %>;

        // 원 차트 생성
const ctx = document.getElementById('myChart').getContext('2d');

// 데이터셋의 전체 합을 계산
const totalQuantity = data6.reduce((acc, cur) => acc + cur, 0);

new Chart(ctx, {
    type: 'pie',
    data: {
        labels: labels5,
        datasets: [{
            label: '상품별 판매량',
            data: data6,
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        responsive: false,
        tooltips: {
            callbacks: {
                label: function(tooltipItem, data) {
                    var label = data.labels[tooltipItem.index] || '';
                    var value = data.datasets[tooltipItem.datasetIndex].data[tooltipItem.index];
                    
                    // 데이터셋의 전체 합을 이용하여 퍼센트 계산
                    var percent = (value / totalQuantity) * 100;
                    percent = parseFloat(percent).toFixed(2);
                    
                    return label + ': ' + value + ' (' + percent + '%)';
                }
            }
        }
    }
});


    </script>
</body>
</html>
