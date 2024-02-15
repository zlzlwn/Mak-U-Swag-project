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
										<span class="primary-button"><span>조회<input
												alt="조회" id="order_search_btn" type="image"
												src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/btn_search.gif"></span></span>
								</fieldset>
							</div>
						</div>
						<input id="mode" name="mode" value="" type="hidden"> <input
							id="term" name="term" value="" type="hidden">
					</form>
					<div class="table-list order-list">
						<!--
	        $login_url = /member/login.html
	    -->
						<div class="list-header">
							<div class="row">
								<div class="item order-number">주문일자(주문번호)</div>
								<div class="item order-product">상품정보</div>
								<div class="item order-price">구매금액</div>
								<div class="item order-status">주문처리상태</div>
								<div class="item order-returns">취소/교환/반품</div>
							</div>
						</div>

						<div
							class="xans-element- xans-myshop xans-myshop-orderhistorylistitem list-body">
							<div class="displaynone">
								<div class="row ">
									<div class="item order-number">
										<span class="number"> ()</span>
										<div class="list-actions">
											<a href="detail.html" class="small-button">상세보기</a> <a
												href="#none" class="small-button displaynone" onclick="">주문취소</a>
											<a href="cancel.html" class="small-button displaynone">취소신청</a>
											<a href="exchange.html" class="small-button displaynone">교환신청</a>
											<a href="return.html" class="small-button displaynone">반품신청</a>
										</div>
									</div>
									<div class="item order-product">
										x
										<div class="option displaynone"></div>
										<ul
											class="xans-element- xans-myshop xans-myshop-optionset option">
											<li class=""><strong></strong> (개)</li>
										</ul>
									</div>
									<div class="item order-price"></div>
									<div class="item order-status">
										<span class="label">주문처리상태</span> <span class="status"></span>
										<div class="list-actions">
											<p class="displaynone">
												<a href="#none" class="small-button" onclick="">배송조회</a>
											</p>
											<a href="/board/product/write.html"
												class="small-button displaynone crema-new-review-link"
												data-cafe24-product-link=""
												data-review-source="mobile_my_orders">구매후기</a> <a
												href="#none" class="small-button displaynone" onclick="">취소철회</a>
											<a href="#none" class="small-button displaynone" onclick="">교환철회</a>
											<a href="#none" class="small-button displaynone" onclick="">반품철회</a>
										</div>
									</div>
									<div class="item order-returns">
										<span class="label">취소/교환/반품</span>
										<p class="displaynone">
											<a href="#none" class="small-button" onclick="">상세정보</a>
										</p>
										<p class="displaynone">-</p>
									</div>
								</div>
								<div class="row ">
									<div class="item order-number">
										<span class="number"> ()</span>
										<div class="list-actions">
											<a href="detail.html" class="small-button">상세보기</a> <a
												href="#none" class="small-button displaynone" onclick="">주문취소</a>
											<a href="cancel.html" class="small-button displaynone">취소신청</a>
											<a href="exchange.html" class="small-button displaynone">교환신청</a>
											<a href="return.html" class="small-button displaynone">반품신청</a>
										</div>
									</div>
									<div class="item order-product">
										x
										<div class="option displaynone"></div>
										<ul
											class="xans-element- xans-myshop xans-myshop-optionset option">
											<li class=""><strong></strong> (개)</li>
										</ul>
									</div>
									<div class="item order-price"></div>
									<div class="item order-status">
										<span class="label">주문처리상태</span> <span class="status"></span>
										<div class="list-actions">
											<p class="displaynone">
												<a href="#none" class="small-button" onclick="">배송조회</a>
											</p>
											<a href="/board/product/write.html"
												class="small-button displaynone crema-new-review-link"
												data-cafe24-product-link=""
												data-review-source="mobile_my_orders">구매후기</a> <a
												href="#none" class="small-button displaynone" onclick="">취소철회</a>
											<a href="#none" class="small-button displaynone" onclick="">교환철회</a>
											<a href="#none" class="small-button displaynone" onclick="">반품철회</a>
										</div>
									</div>
									<div>
									<br>									
									<div class="item order-returns">
										<span class="label">반품</span>
										<p class="displaynone">
											<a href="#none" class="small-button" onclick="">상세정보</a>
										</p>
										<p class="displaynone">-</p>
									</div>
									</div>
								</div>
							</div>
							<p class="message ">No results found.</p>
						</div>

						<div
							class="xans-element- xans-myshop xans-myshop-orderhistorypaging pagination">
							<ul>
								<li class="xans-record-"><a
									href="?page=1&amp;history_start_date=2023-11-17&amp;history_end_date=2024-02-15&amp;past_year=2023"
									class="this">1</a></li>
							</ul>
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