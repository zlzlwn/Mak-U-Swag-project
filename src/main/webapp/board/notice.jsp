<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NOTICE</title>
<link rel="stylesheet" href="./css/accordion.css">
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<link rel="icon" href="./images/CompanyLogo.png">
<!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
</head>
<body class="nav-expended">
	<!-- ============================== [[ Header  section]] ==============================-->

	<%@ include file="../include/header2.jsp"%>

	<!-- ============================== [[ Header  section]] ==============================-->

	<!-- ============================== [[ Sidebar  section]] ==============================-->
	<div class="site-main">
		<div class="container">

			<%@ include file="../include/sidemenu2.jsp"%>

			<!-- ============================== [[ Sidebar  section]] ==============================-->

			<!-- ============================== [[ Body  section]] ==============================-->

			<div class="main">

				<!-- 여기서 부터 작성 -->
				<div class="board">
					<div class="xans-element- xans-board xans-board-title board-header">
						<!-- 게시판 제목 -->
						<h3>
							<font color="#555555">NOTICE</font>
						</h3>
						<!-- 아코디언을 감싸는 부분 -->
						<div class="accordion">
							<hr>
							<!-- NoticeDtoPJH 객체 리스트를 순회하며 아코디언 생성 -->
							<c:forEach items="${list}" var="dto" varStatus="loop">
								<!-- 각 아코디언의 라디오 버튼 -->
								<input type="radio" name="accordion"
									id="answer${loop.index + 1}">
								<!-- 라디오 버튼과 연결된 라벨 -->
								<label for="answer${loop.index + 1}"> <!-- NoticeDtoPJH 객체의 카테고리, 제목, 날짜 일부를 출력 -->
									<em></em> <span>${dto.noCategory}</span> <span>${dto.noTitle}</span>
									<span>${dto.noDate.substring(0, 10)}</span> <!-- 연월일까지만 추출 -->
								</label>

								<!-- 아코디언 내용 부분 -->
								<div>
									<!-- NoticeDtoPJH 객체의 각 속성을 출력 -->
									<p>${dto.noTitle}</p>
									<p>${dto.noCategory}</p>
									<span>${dto.noDate.substring(0, 10)}</span>
									<!-- 연월일까지만 추출 -->
								</div>
							</c:forEach>
						</div>
					</div>
				</div>











				<!-- 여기까지 작성 -->

				<!-- ============================== [[ Body  section]] ==============================-->

				<!-- =============================  [[ Footer section ]]  ============================= -->

				<%@ include file="../include/footer.jsp"%>

			</div>
		</div>
	</div>
	<!-- =============================  [[ Footer section ]]  ============================= -->
</body>
</html>