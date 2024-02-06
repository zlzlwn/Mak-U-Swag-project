<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="site-main">
	<div class="container">

		<div class="site-nav sidebar">
			<div class="nav-col col-left">
				<div class="site-menu">
					<ul>
						<li class="menu-item"><a href="/about/">About us</a></li>
					</ul>
				</div>
				<div
					class="xans-element- xans-layout xans-layout-category site-menu">
					<ul>
						<li class="menu-item xans-record-"><a
							href="/category/best-100/91/">BEST 100</a></li>
						<li class="menu-item xans-record-"><a
							href="/category/all-in-one/77/">All-in-one</a></li>
						<li class="menu-item xans-record-"><a
							href="/category/outer/24/">Outer</a></li>
						<li class="menu-item xans-record-"><a
							href="/category/topshort-sleeve/85/">Top(short sleeve)</a></li>
						<li class="menu-item xans-record-"><a
							href="/category/toplong-sleeve/25/">Top(long sleeve)</a></li>
						<li class="menu-item xans-record-"><a
							href="/category/bottoms/26/">Bottoms</a></li>
						<li class="menu-item xans-record-"><a
							href="/category/bags/27/">Bags</a></li>
						<li class="menu-item xans-record-"><a
							href="/category/accessories/28/">Accessories</a></li>
						<li class="menu-item xans-record-"><a
							href="/category/shoes/55/">Shoes</a></li>
						<li class="menu-item xans-record-"><a
							href="/category/women-only/58/">Women only</a></li>
					</ul>
				</div>
			</div>
			<div class="nav-col col-right">
				<div class="site-menu">
					<ul>
						<li class="menu-item"><a
							href="https://www.youtube.com/channel/UCNzODSZC2sraPyh4lDMQhpQ?view_as=subscriber"
							target="_blank">YouTube</a></li>
						<li class="menu-item"><a
							href="https://www.instagram.com/faderoom_official/"
							target="_blank">Instagram</a></li>
					</ul>
				</div>
				<div class="site-menu">
					<ul>
						<li class="menu-item"><a href="/board/notice/1/">Notice</a></li>
						<li class="menu-item"><a href="/board/review/4/">Review</a></li>
						<li class="menu-item"><a
							href="/board/free/qna.html?board_no=5">Q&amp;A</a></li>
						<li class="menu-item"><a href="/board/faq/3/">FAQ</a></li>
					</ul>
				</div>
				<div class="cs-info">
					<ul>
						<li>Counseling Center <br>02 436 1009
						</li>
						<li>13:00 - 17:00 <br>sat.sun.holiday off
						</li>
					</ul>
				</div>
				<form id="searchBarForm" name="" action="/product/search.html"
					method="get" target="_self" enctype="multipart/form-data">
					<input id="banner_action" name="banner_action" value=""
						type="hidden">
					<div
						class="xans-element- xans-layout xans-layout-searchside search-bar ">
						<!--
	                    $search_page = /product/search.html
	                    $product_page = /product/detail.html
	                -->
						<fieldset>
							<legend>검색</legend>
							<input id="keyword" name="keyword" fw-filter="" fw-label="검색어"
								fw-msg="" class="inputTypeText" placeholder=""
								onmousedown="SEARCH_BANNER.clickSearchForm(this)" value=""
								type="text"><input type="image"
								src="/_fm/images/search-icon.png" alt="검색"
								onclick="SEARCH_BANNER.submitSearchBanner(this); return false;">
						</fieldset>
					</div>
				</form>
			</div>
		</div>

		<div class="main">




			<div class="board">
				<div class="xans-element- xans-board xans-board-title board-header ">
					<h3>
						<font color="#555555">Notice</font>
					</h3>
				</div>

				<div
					class="xans-element- xans-board xans-board-listpackage board-list ">
					<div
						class="xans-element- xans-board xans-board-notice accordion-list notice-list">
						<div class="accordion-item xans-record-">
							<h3 class="accordion-header"  >
								<span class="number"><%="가나" %></span> <span class="title">신정 연휴
									공지</span> <span class="date ">2023.12.28</span>
							</h3>
						
								<a href="/article/notice/1/28864/" class="content-link"></a>
							</div>
						</div>
					</div>
					<div class="xans-element- xans-board xans-board-empty message  ">검색결과가
						없습니다.</div>
					<div
						class="xans-element- xans-board xans-board-buttonlist board-admin-actions displaynone ">
						<a href="/board/free/write.html?board_no=1"
							class="primary-button displaynone"><span>WRITE</span></a>
					</div>
				</div>
			</div>

			<%@ include file="../include/footer.jsp" %>
		</div>
	</div>
</div>


