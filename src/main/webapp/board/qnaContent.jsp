<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<link rel="icon" href="./images/CompanyLogo.png"> <!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
</head>
<body class="nav-expended">
	<!-- ============================== [[ Header  section]] ==============================-->

	<%@ include file="../include/header.jsp"%>

	<!-- ============================== [[ Header  section]] ==============================-->

	<!-- ============================== [[ Sidebar  section]] ==============================-->
	<div class="site-main">
		<div class="container">

			<%@ include file="../include/sidemenu.jsp"%>

			<!-- ============================== [[ Sidebar  section]] ==============================-->

			<!-- ============================== [[ Body  section]] ==============================-->

			<div class="main">

				<!-- 여기서 부터 작성 -->
				<div class="board">
				<div class="xans-element- xans-board xans-board-title board-header ">
				<h3 onclick="window.history.go(-1); return false;" style="cursor: pointer;"><font color="#555555">Q&A</font></h3>
				</div>
						<div class="xans-element- xans-board xans-board-read ">
							<div class="post-header">
											<h3 class = "number">${qnaTitle}</h3>
											<div class="post-meta">
												<span class="date">${qnaDate }</span>
											</div>
										</div>
							<div class="post-content">
											<div class="content">
												<div class="images"></div>
												<div class="article"><div class="fr-view fr-view-article"><p>${qnaContent }</p></div></div>
											</div>
										</div>
							<div class="post-footer">
											<span class=""><a href="#none" onclick="BOARD_READ.article_delete('BoardDelForm','5');" class="button"><span>삭제</span></a></span>
								            <span class=""><a href="/board/free/modify.html?board_act=edit&no=29496&board_no=5" class="button"><span>수정</span></a></span>
										</div>
							</div>
				
				
				
				
				
				<!-- 여기까지 작성 -->

			<!-- ============================== [[ Body  section]] ==============================-->

			<!-- =============================  [[ Footer section ]]  ============================= -->

				<%@ include file="../include/footer.jsp"%>

			</div>
		</div>
	</div>
</div>
	<!-- =============================  [[ Footer section ]]  ============================= -->
</body>
</html>