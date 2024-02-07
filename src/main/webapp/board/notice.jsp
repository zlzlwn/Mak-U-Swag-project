<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>about us</title>
<link rel="stylesheet" href="./css/accordion.css">
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
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
				<div class="xans-element- xans-board xans-board-title board-header ">
					<h3>
						<font color="#555555">NOTICE</font>
					</h3>
					<div class="accordion">
						<hr>	
						<input type="radio" name="accordion" id="answer01"> <label for="answer01">  
							<th>번호</th>  <em></em></label>
						<div>
						<p>
						가나
                        <!-- NoticeDtoPJH 객체의 각 속성을 출력 -->
                        <p>${notice.noSeq}</p>
                        <p>${notice.noTitle}</p>
                        <p>${notice.noDate}</p>
						
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