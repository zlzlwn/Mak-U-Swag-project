<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header>
<div class="site-header">
	<div class="container">
		<div class="site-logo">
			<h1>
				<a href="main.do">
					<img src="./images/CompanyLogo.png" alt="로고" class="logo-img" width="200px" height="100px">
				</a>
			</h1>
		</div>
		<ul class="xans-element- xans-layout xans-layout-statelogoff user-menu">
			<li class="menu-item"><a href="login.do">Login</a></li>
			<li class="menu-item"><a href="/member/login.html?noMemberOrder&amp;returnUrl=%2Fmyshop%2Forder%2Flist.html">Mypage</a></li>
			<li class="menu-item menu--cart"><a href="/order/basket.html">Cart<span class="badge displaynone">()</span></a></li>
		</ul>
		<div class="hamburger" role="button" aria-expanded="false">
			<span class="patty"></span>
		</div>
		<div class="mobile-cart">
			<a href="/order/basket.html"><span class="badge"></span></a>
		</div>
	</div>
</div>
</header>

