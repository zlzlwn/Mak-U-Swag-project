<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MYPAGE</title>
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
<link rel="icon" href="./images/CompanyLogo.png">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="/MakUSwag2.5/js/mypageList.js"></script>

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
				<div class="my-account">

					<div class="local-nav">
						<div class="nav-title">
							<h2>
								<a href="/myshop/index.html">My Page</a>
							</h2>
						</div>
						<div class="nav-items">
							<a href="/myshop/order/list.html" class="nav-item selected">Orders</a>
							<a href="/member/modify.html" class="nav-item">My Info</a>
						</div>
					</div>

					<div class="account-header">
						<h4>Orders</h4>
					</div>

					<form method="GET" id="OrderHistoryForm" name="OrderHistoryForm">
						<div
							class="xans-element- xans-myshop xans-myshop-orderhistoryhead account-toolbar ">
							<div class="search-order">
								<fieldset>
									<legend>검색기간설정</legend>
									<div class="period">
										<a href="#none" days="00">오늘</a> <a href="#none" days="07">1주일</a>
										<a href="#none" days="30">1개월</a> <a href="#none" days="90">3개월</a>
										<a href="#none" days="180">6개월</a>
									</div>
									<div class="date-range">
										<input id="history_start_date" name="history_start_date"
											class="fText hasDatepicker" readonly="readonly" size="10"
											value="2023-11-17" type="text">
										<button type="button" class="ui-datepicker-trigger">
											<img
												src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/ico_cal.gif"
												alt="..." title="...">
										</button>
										<span class="range-mark">~</span><input id="history_end_date"
											name="history_end_date" class="fText hasDatepicker"
											readonly="readonly" size="10" value="2024-02-15" type="text">
										<button type="button" class="ui-datepicker-trigger">
											<img
												src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/ico_cal.gif"
												alt="..." title="...">
										</button>
									</div>
										<span class="primary-button"><span>조회</span>
								</fieldset>
							</div>
						</div>
						<input id="mode" name="mode" value="" type="hidden"> <input
							id="term" name="term" value="" type="hidden">
					</form>
					<div>
					<div class="table-list order-list">
					
					
						 		<div id="result"></div>
								<div class="xans-element- xans-board xans-board-list qna-list">
							
								<div class="list-item xans-record-">
									<a href="qnaContent.do?qnaSeq=161" class="post-link"> <span class="number">주문번호</span> <span class="number">상품명</span><span class="number">수량</span>
									<span class="number">가격</span><span class="number">적립포인트</span><span class="number">주문일자</span>
									</a>
								</div>
							
								<div class="list-item xans-record-">
									<a href="qnaContent.do?qnaSeq=161" class="post-link"> <span class="number">10</span> <span class="number">NEW SEASON OVERALLS</span><span class="number">1</span>
									<span class="number">68,000</span><span class="number">680</span><span class="number">2024-02-15</span>
									</a>
								</div>
							
							
								<%-- <c:forEach items="${list}" var="dto" varStatus="loop">
								<div class="list-item xans-record-">
									<a href="qnaContent.do?qnaSeq=161" class="post-link"> 
									<span class="number">주문번호</span> 
									<span class="number">상품명</span>
									<span class="number">수량</span>
									<span class="number">가격</span>
									<span class="number">적립포인트</span>
									<span class="number">주문일자</span>
									</a>
								</div>
							</c:forEach> --%>
										
															
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