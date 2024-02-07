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
					<div
						class="xans-element- xans-board xans-board-title board-header ">
						<h3>
							<font color="#555555">NOTICE</font>
						</h3>
						<div class="accordion">
							<hr>
							<input type="radio" name="accordion" id="answer01">
							 <label for="answer01"> <em></em> 
							 <!-- forEach는 계속 반복하기때문에 db에 여러줄이 있으면 다 뽑아온다 -> 그래서   -->
							 <c:forEach items="${list}"] var="dto" varStatus="loop">
									<c:if test="${loop.index eq 0}">
										<span>${dto.noCategory}</span>	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<span>${dto.noTitle}</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<span>${dto.noDate.substring(0, 10)}</span>
										<!-- 연월일까지만 추출 -->
									</c:if>
								</c:forEach>

							</label>

							<div>
								<p>
									<c:forEach items="${list}" var="dto">
										<!-- NoticeDtoPJH 객체의 각 속성을 출력 -->
										<p>${dto.noTitle}</p>
										<p>${dto.noCategory}</p>
										<span>${dto.noDate.substring(0, 10)}</span>
										<!-- 연월일까지만 추출 -->
									</c:forEach>


								</p>
							</div>
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