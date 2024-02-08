<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA - Mak U Swag</title>
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<link rel="icon" href="./images/CompanyLogo.png">
<!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
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
					<div
						class="xans-element- xans-board xans-board-title board-header ">
						<h3>
							<font color="#555555">Q&A</font>
						</h3>
						<div
							class="xans-element- xans-board xans-board-category board-categories ">
							<select id="board_category" name="board_category" fw-filter=""
								fw-label="" fw-msg="">
								<option value="" selected="selected">전체</option>
								<option value="1">입급/결제관련 문의</option>
								<option value="2">배송관련 문의</option>
								<option value="3">배송 전 변경/취소 문의</option>
								<option value="4">교환/반품 문의</option>
								<option value="5">상품관련 문의</option>
								<option value="6">기타 문의</option>
							</select>
						</div>
					</div>

					<div
						class="xans-element- xans-board xans-board-listpackage board-list ">
						<div
							class="xans-element- xans-board xans-board-notice qna-list qna-notice">
							<div class="list-item xans-record-">
								<a href="/article/qa/5/60/" class="post-link"> <span
									class="number">공지</span> <span class="title">카카오 상담을
										이용해주세요!</span> <span class="date ">페이드룸</span>
								</a>
							</div>
						</div>
						<div class="xans-element- xans-board xans-board-list qna-list">
							<div class="list-item xans-record-">
								<a href="/article/qa/5/29457/" class="post-link"> <span
									class="number">4918</span> <span class="title">배송 전
										변경/취소 문의</span> <span class="date ">김****</span>
								</a>
							</div>
							<div class="list-item xans-record-">
								<a href="/article/qa/5/29458/" class="post-link"> <span
									class="number">4917</span> <span class="title">배송 전
										변경/취소 문의</span> <span class="date "></span>
								</a>
							</div>
							<div class="list-item xans-record-">
								<a href="/article/qa/5/29455/" class="post-link"> <span
									class="number">4916</span> <span class="title">배송관련 문의</span> <span
									class="date ">정****</span>
								</a>
							</div>
							<div class="list-item xans-record-">
								<a href="/article/qa/5/29456/" class="post-link"> <span
									class="number">4915</span> <span class="title">배송관련 문의</span> <span
									class="date "></span>
								</a>
							</div>
							<div class="list-item xans-record-">
								<a href="/article/qa/5/29439/" class="post-link"> <span
									class="number">4914</span> <span class="title">배송관련 문의</span> <span
									class="date ">정****</span>
								</a>
							</div>
							<div class="list-item xans-record-">
								<a href="/article/qa/5/29441/" class="post-link"> <span
									class="number">4913</span> <span class="title">배송관련 문의</span> <span
									class="date "></span>
								</a>
							</div>
							<div class="list-item xans-record-">
								<a href="/article/qa/5/29435/" class="post-link"> <span
									class="number">4912</span> <span class="title">배송관련 문의</span> <span
									class="date ">심****</span>
								</a>
							</div>
							<div class="list-item xans-record-">
								<a href="/article/qa/5/29437/" class="post-link"> <span
									class="number">4911</span> <span class="title">배송관련 문의</span> <span
									class="date "></span>
								</a>
							</div>
							<div class="list-item xans-record-">
								<a href="/article/qa/5/29427/" class="post-link"> <span
									class="number">4910</span> <span class="title">교환/반품 문의</span>
									<span class="date ">J****</span>
								</a>
							</div>
							<div class="list-item xans-record-">
								<a href="/article/qa/5/29428/" class="post-link"> <span
									class="number">4909</span> <span class="title">교환/반품 문의</span>
									<span class="date "></span>
								</a>
							</div>
							<div class="list-item xans-record-">
								<a href="/article/qa/5/29423/" class="post-link"> <span
									class="number">4908</span> <span class="title">입급/결제관련
										문의</span> <span class="date ">정****</span>
								</a>
							</div>
							<div class="list-item xans-record-">
								<a href="/article/qa/5/29426/" class="post-link"> <span
									class="number">4907</span> <span class="title">입급/결제관련
										문의</span> <span class="date "></span>
								</a>
							</div>
							<div class="list-item xans-record-">
								<a href="/article/qa/5/29409/" class="post-link"> <span
									class="number">4906</span> <span class="title">교환/반품 문의</span>
									<span class="date ">김****</span>
								</a>
							</div>
							<div class="list-item xans-record-">
								<a href="/article/qa/5/29421/" class="post-link"> <span
									class="number">4905</span> <span class="title">교환/반품 문의</span>
									<span class="date "></span>
								</a>
							</div>
							<div class="list-item xans-record-">
								<a href="/article/qa/5/29400/" class="post-link"> <span
									class="number">4904</span> <span class="title">교환/반품 문의</span>
									<span class="date ">김****</span>
								</a>
							</div>
						</div>
						<div
							class="xans-element- xans-board xans-board-empty message displaynone "></div>
						<div class="xans-element- xans-board xans-board-paging pagination">
							<a href="?board_no=5&page=1" class="page-nav-button">Prev</a>
							<ul>
								<li class="xans-record-"><a href="?board_no=5&page=1"
									class="this">1</a></li>
								<li class="xans-record-"><a href="?board_no=5&page=2"
									class="other">2</a></li>
								<li class="xans-record-"><a href="?board_no=5&page=3"
									class="other">3</a></li>
								<li class="xans-record-"><a href="?board_no=5&page=4"
									class="other">4</a></li>
								<li class="xans-record-"><a href="?board_no=5&page=5"
									class="other">5</a></li>
								<li class="xans-record-"><a href="?board_no=5&page=6"
									class="other">6</a></li>
								<li class="xans-record-"><a href="?board_no=5&page=7"
									class="other">7</a></li>
								<li class="xans-record-"><a href="?board_no=5&page=8"
									class="other">8</a></li>
								<li class="xans-record-"><a href="?board_no=5&page=9"
									class="other">9</a></li>
								<li class="xans-record-"><a href="?board_no=5&page=10"
									class="other">10</a></li>
							</ul>
							<a href="?board_no=5&page=2" class="page-nav-button">Next</a>
						</div>
						<form id="boardSearchForm" name="" action="/board/free/qna.html"
							method="get" target="_top" enctype="multipart/form-data">
							<input id="board_no" name="board_no" value="5" type="hidden" />
							<input id="page" name="page" value="1" type="hidden" /> <input
								id="board_sort" name="board_sort" value="" type="hidden" />
							<div
								class="xans-element- xans-board xans-board-search board-search-form ">
								<fieldset>
									<select id="search_date" name="search_date" fw-filter=""
										fw-label="" fw-msg="">
										<option value="week">일주일</option>
										<option value="month">한달</option>
										<option value="month3">세달</option>
										<option value="all">전체</option>
									</select> <select id="search_key" name="search_key" fw-filter=""
										fw-label="" fw-msg="">
										<option value="subject">제목</option>
										<option value="content">내용</option>
										<option value="writer_name">글쓴이</option>
										<option value="member_id">아이디</option>
										<option value="nick_name">별명</option>
									</select> <input id="search" name="search" fw-filter="" fw-label=""
										fw-msg="" class="inputTypeText" placeholder="" value=""
										type="text" /> <a href="#none" class="search-button"
										onclick="BOARD.form_submit('boardSearchForm');"></a>
								</fieldset>
							</div>
						</form>
						<div
							class="xans-element- xans-board xans-board-buttonlist board-admin-actions  ">
							<a href="/board/free/write.html?board_no=5"
								class="primary-button "><span>WRITE</span></a>
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