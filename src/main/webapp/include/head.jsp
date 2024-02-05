<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
      html,
      body {
        height: 5000px;
        padding: 0px;
        margin: 0px;
  		background-color: #FFFFFF;
      }
*{ margin:0; padding:0; }
li{ list-style:none; }

header{

  display:flex;
  justify-content: center;
  align-items: center;
  
  /* 헤더 상단 고정 */
  position:sticky;
  top:0;
}

.header_wrap{
  width:80%;
  
  display:flex;
  flex-direction: row;
  justify-content: space-between;
  align-items:center;
}

.header_wrap h1{
  color:#FFFFFF;
}

.header_wrap .gnb{ 
  display:flex;
  flex-direction: row;
  justify-content: space-between;
  align-items:center;
}

.header_wrap .gnb li{
  color:#000000;
  margin:0 10px;
}
 #wrap {
        min-height: calc(100% - 120px);
         display: flex;
        justify-content: center;
        align-items: flex-start;
        z-index: 1;
      }
      


.content{
width:80%;
  
  display:flex;
  flex-direction: column;
  justify-content: space-between;
  align-items:center;
  background: linear-gradient(180deg, rgba(228,220,207,1) 0%, rgba(245,240,187,1) 38%, rgba(125,157,156,1) 100%);
  height:2000px;
}

    .logo-img {
        max-width: 15%; /* 최대 너비를 부모 요소의 100%로 설정 */
        height: auto; /* 높이를 자동으로 조절하여 비율 유지 */
    }
    }
    .site-footer {
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 60%; /* 푸터의 높이를 필요에 따라 조절하세요 */
    transform: translateY(0%);
}

.site-footer ul {
    list-style: none;
    padding: 0;
    text-align: center;
}

.site-footer span, .site-footer a {
    margin-right: 10px; /* 각 요소 사이의 간격을 조절하세요 */
    color: #000000; /* 텍스트 색상을 원하는 색상으로 지정하세요 */
}

.site-footer a {
    text-decoration: none;
}

.legal-links a {
    color: #fff; /* 법적 링크 색상을 원하는 색상으로 지정하세요 */
}

.copyright {
    margin-top: 10px; /* 저작권 텍스트와 다른 요소 사이의 간격을 조절하세요 */
}
</style>
</head>
<body>
<header>
  <div class="header_wrap">
    <h1><img src="./images/CompanyLogo.png" alt="로고" class="logo-img" ></h1>
    <nav>
      <ul class="gnb">
        <li>menu1</li>
        <li>menu2</li>
        <li>menu3</li>
      </ul>
    </nav>
  </div>
  
</header>
<div id="wrap">
  <iframe src="./include/carousel.jsp" width="100%" height="500px"></iframe>
</div>
	
        
  <footer>
  <div class="site-footer">
				<ul><li>
						<span>Mak U Swag |</span>
						<span>CEO One Stone One Billion |</span>
						<span>Personal Info Manager Team 401 |</span>
						<span>Account No. ???? |</span><br>
						<span>Email <a href="teamone401@makuswag.co.kr">info@ssambbong.co.kr</a></span><br>
					</li>
					<li>
						<span>201, 240, Bongujae-ro, Jungnang-gu, Seoul |</span>
						<span>Reg. No. 174-05-01533 |</span>
						<span>Ecommerce Reg. No. 2020-SeoulJungnang-0207</span>
					</li>
					<li class="legal-links">
						<a href="../member/agreement.html">Terms of Use</a>
						<a href="../member/privacy.html">Privacy Policy</a>
						<p class="copyright"> © 2023 Mak U Swag</p>
					</li>
				</ul></div>
  
  
  </footer>
  </body>
</html>