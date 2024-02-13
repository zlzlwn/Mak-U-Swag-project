<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Bootstrap JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
    /* 네모로 변경할 스타일 */
    .carousel-indicators li {
        border-radius: 0;
        width: 30px; /* 네모의 가로 길이 조절 */
        height: 10px; /* 네모의 세로 길이 조절 */
        background-color: #ddd; /* 네모의 배경색 */
        margin: 0 3px; /* 네모 간의 간격 조절 */
        cursor: pointer;
    }

    /* 활성화된 네모의 스타일 */
    .carousel-indicators .active {
 		border-radius: 0;
        width: 30px; /* 네모의 가로 길이 조절 */
        height: 10px; /* 네모의 세로 길이 조절 */
        background-color: #333; /* 활성화된 네모의 배경색 */
    }
</style>

</head>
<body>
<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li><%--active:0부터 시작 --%>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src = "../images/home/intro129.jpg">
				</div>
				<div class="item">
					<img src = "../images/home/intro160.jpg">
				</div>
				<div class="item">
					<img src = "../images/home/intro163.jpg">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> 
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span> 
			</a>
		</div>
	</div>
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>