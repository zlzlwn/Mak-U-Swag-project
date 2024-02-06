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
        height: 1000px;
        padding: 0px;
        margin: 0px;
  		background-color: #d4ccbb;;
      }
*{ margin:0; padding:0; }
li{ list-style:none; }

header {
  display: flex;
  justify-content: flex-start; /* 왼쪽 정렬로 변경 */
  align-items: center;
  position: fixed; /* 화면 상단에 고정 */
  top: 0;
  left: 0;
  width: 100%; /* 화면 전체 너비를 채우도록 설정 */
  background-color: #d4ccbb;
  z-index: 1000; /* 다른 콘텐츠 위에 헤더가 나타나도록 설정 */
}

.header_wrap {
  width: 80%;
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;
}

.header_wrap h1 {
  color: #FFFFFF;
   /* 로고의 왼쪽 여백 추가 */
}

.header_wrap .gnb {
  display: flex;
  flex-direction: row;
  justify-content: flex-end; /* 왼쪽 정렬로 변경 */
  align-items: center;
}

.header_wrap .gnb li {
  color: #000000;
  margin: 0 20px; /* 여백 조정 */
  margin-top: 75px; /* 로그아웃 링크를 아래로 내리는 간격 조정 */
  
}
 #wrap,#wrap1 {
        min-height: calc(100% - 180px);
         display: flex;
        align-items: flex-start;
        z-index: 1;
         flex-direction: column;
  margin-top: 120px; /
         
      }
 iframe {
    border: none;
    outline: none;
}
 .iframe-container {
    display: flex;
    flex-direction: column;
    align-items: center;
  }   
   #wrap iframe {
    width: 100%;
    height: 500px;
    margin-bottom: 20px;
    margin-top: 75px;
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
        max-width: 10%; /* 최대 너비를 부모 요소의 100%로 설정 */
        height: auto; /* 높이를 자동으로 조절하여 비율 유지 */
        margin-top: 75px;
        margin-left: 40px;
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
    color: #0e3773; /* 텍스트 색상을 원하는 색상으로 지정하세요 */
    font-weight: bold;
    font-size: 13px;
}

.site-footer a {
    text-decoration: none;
    font-weight: bold;
    font-size: 13px;
    
}

.legal-links a {
    color: black; /* 법적 링크 색상을 원하는 색상으로 지정하세요 */
    font-weight: bold;
    font-size: 13px;
}

.copyright {
    margin-top:0px; /* 저작권 텍스트와 다른 요소 사이의 간격을 조절하세요 */
    font-weight: bold;
    font-size: 13px;
}
.spacing{
height: 10px;
}
</style>
</head>
<body>

<header>
  <div class="header_wrap">
    <h1><a href="adminmain.do"><img src="./images/CompanyLogo.png" alt="로고" class="logo-img" ></a></h1>
    <nav>
      <ul class="gnb">
        <li><a href="logout.do">Logout</a></li>
      </ul>
    </nav>
  </div>
  
</header>
<div id="wrap">
  <iframe src="./include/carousel.jsp" frameborder="0"></iframe>

</div>
<div id="wrap1">
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
						<div class="spacing"></div>
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