<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<link rel="stylesheet" href="./css/login.css">
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
				<div class="entry-page">
					<form id="member_form_2877712340" name=""
						action="/exec/front/Member/login/" method="post" target="_self"
						enctype="multipart/form-data">
						<input id="returnUrl" name="returnUrl"
							value="https://www.faderoom.co.kr/board/free/qna.html?board_no=5"
							type="hidden"> <input id="forbidIpUrl" name="forbidIpUrl"
							value="/index.html" type="hidden"> <input
							id="certificationUrl" name="certificationUrl"
							value="/intro/adult_certification.html" type="hidden"> <input
							id="sIsSnsCheckid" name="sIsSnsCheckid" value="" type="hidden">
						<input id="sProvider" name="sProvider" value="" type="hidden">
						<div class="xans-element- xans-member xans-member-login login ">
							<!--
	        $defaultReturnUrl = /index.html
	        $forbidIpUrl = member/adminFail.html
	    -->
							<div class="login-header">
								<h2>LOGIN</h2>
							</div>
							<fieldset>
								<legend>회원로그인</legend>
								<div class="form-field">
									<label for="member_id">ID</label> <input id="member_id"
										name="member_id" fw-filter="isFill" fw-label="아이디" fw-msg=""
										class="inputTypeText" placeholder="" value="" type="text">
								</div>
								<div class="form-field">
									<label for="member_passwd">PASSWORD</label> <input
										id="member_passwd" name="member_passwd"
										fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="패스워드"
										fw-msg="" autocomplete="off" value="" type="password">
								</div>
								<div class="security">
									<img
										src="//img.echosting.cafe24.com/design/skin/default/member/ico_access.gif"
										alt="보안접속"> 보안접속
								</div>
								<div class="login-footer">
									<div class="login-extras">
										<a href="/member/id/find_id.html">아이디 찾기</a> <a
											href="/member/passwd/find_passwd_info.html">비밀번호 찾기</a> <a
											href="" class="displaynone" onclick="">비회원 구매</a> <span
											class="guest-login-button displaynone">비회원 주문조회</span>
									</div>
									<div class="login-actions">
										<span class="auto"></span> <span class="save"></span> <a
											href="#none" class="primary-button"
											onclick="MemberAction.login('member_form_2877712340'); return false;"><span>Login</span></a>
										<a href="/member/join.html" class="primary-button"><span>Join</span></a>
									</div>
								</div>
							</fieldset>
						</div>
					</form>

				</div>
				<script>
					if ($('.guest-login').length < 1) {
						$('.guest-login-button').addClass('displaynone');
					}

					$('.guest-login-button').on('click', function() {
						$('.guest-login').toggleClass('is-active');
					});
				</script>




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