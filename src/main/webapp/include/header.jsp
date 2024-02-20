<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%
// 세션을 가져옵니다.
// session2는 로그인용
HttpSession session2 = request.getSession();
// 세션에 저장된 사용자 정보가 있는지 확인합니다.
boolean reg = (session2 != null && session.getAttribute("user") != null);
%>
<header>
	<div class="site-header">
		<div class="container">
			<div class="site-logo">
				<h1>
					<a href="main.do"> <img src="./images/CompanyLogo.png" alt="로고"
						class="logo-img" width="200px" height="100px">
					</a>
				</h1>
			</div>
			<ul
				class="xans-element- xans-layout xans-layout-statelogoff user-menu">
				<% if (reg) { %>
				<li class="menu-item"><a href="logout.do"><b>Logout</b></a></li>
				<% } else { %>
				<li class="menu-item"><a href="login.do"><b>Login</b></a></li>
				<% } %>
				<li class="menu-item"><a href="myPage.do"><b>MyPage</b></a></li>
				<li class="menu-item menu--cart"><a href="cart.do"><b>Cart</b><span
						class="badge displaynone">()</span></a></li>
			</ul>
			<div class="hamburger" role="button" aria-expanded="false">
				<span class="patty"> </span>
			</div>
			<div class="mobile-cart">
				<a href="/order/basket.html"><span class="badge"></span></a>
			</div>
		</div>
	</div>
</header>

