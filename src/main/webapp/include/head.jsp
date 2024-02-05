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
      
.credit {
  position: absolute;
  bottom: 20px;
  left: 20px;
  color: inherit;
}
.options {
  display: flex;
   flex-wrap: wrap;
      justify-content: center;
      align-items: stretch;
      min-width: 600px;
      max-width: 900px;
      height: 400px;
      width: 100%;
    }

 .options .option:nth-child(5) {
    display: none;
  }
}
@media screen and (max-width: 638px) {
 .options {
    min-width: 440px;
  }
 .options .option:nth-child(4) {
    display: none;
  }
}
@media screen and (max-width: 558px) {
 .options {
    min-width: 360px;
  }
 .options .option:nth-child(3) {
    display: none;
  }
}
@media screen and (max-width: 478px) {
 .options {
    min-width: 280px;
  }
 .options .option:nth-child(2) {
    display: none;
  }
}
 .options .option {
  position: relative;
  overflow: hidden;
  min-width: 60px;
  margin: 10px;
  background: var(--optionBackground, var(--defaultBackground, #e6e9ed));
  background-size: auto;
  background-position: center;
  cursor: pointer;
  transition: 0.5s cubic-bezier(0.05, 0.61, 0.41, 0.95);
}
 .options .option:nth-child(1) {
  --defaultBackground: #ed5565;
}
 .options .option:nth-child(2) {
  --defaultBackground: #fc6e51;
}
 .options .option:nth-child(3) {
  --defaultBackground: #ffce54;
}
 .options .option:nth-child(4) {
  --defaultBackground: #2ecc71;
}
 .options .option:nth-child(5) {
  --defaultBackground: #5d9cec;
}
 .options .option:nth-child(6) {
  --defaultBackground: #ac92ec;
}
 .options .option.active {
  flex-grow: 10000;
  transform: scale(1);
  max-width: 600px;
  margin: 0px;
  border-radius: 40px;
  background-size: auto 100%;
  /*&:active {
      transform:scale(0.9);
  }
  */
}
 .options .option.active .shadow {
  box-shadow: inset 0 -120px 120px -120px black,
    inset 0 -120px 120px -100px black;
}
 .options .option.active .label {
  bottom: 20px;
  left: 20px;
}
 .options .option.active .label .info > div {
  left: 0px;
  opacity: 1;
}
 .options .option:not(.active) {
  flex-grow: 1;
  border-radius: 30px;
}
 .options .option:not(.active) .shadow {
  bottom: -40px;
  box-shadow: inset 0 -120px 0px -120px black, inset 0 -120px 0px -100px black;
}
 .options .option:not(.active) .label {
  bottom: 10px;
  left: 10px;
}
 .options .option:not(.active) .label .info > div {
  left: 20px;
  opacity: 0;
}
 .options .option .shadow {
  position: absolute;
  bottom: 0px;
  left: 0px;
  right: 0px;
  height: 120px;
  transition: 0.5s cubic-bezier(0.05, 0.61, 0.41, 0.95);
}
 .options .option .label {
  display: flex;
  position: absolute;
  right: 0px;
  height: 40px;
  transition: 0.5s cubic-bezier(0.05, 0.61, 0.41, 0.95);
}
 .options .option .label .icon {
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  min-width: 40px;
  max-width: 40px;
  height: 40px;
  border-radius: 100%;
  background-color: white;
  color: var(--defaultBackground);
}
 .options .option .label .info {
  display: flex;
  flex-direction: column;
  justify-content: center;
  margin-left: 10px;
  color: white;
  white-space: pre;
}
 .options .option .label .info > div {
  position: relative;
  transition: 0.5s cubic-bezier(0.05, 0.61, 0.41, 0.95), opacity 0.5s ease-out;
}
 .options .option .label .info .main {
  font-weight: bold;
  font-size: 1.2rem;
}
 .options .option .label .info .sub {
  transition-delay: 0.1s;
} 
.container {
     
        }

        .site-header {
            display: flex;
            justify-content: center;
            align-items: stretch;
        }

        .site-nav {
            max-width: 200px; /* 원하는 너비로 조절 */
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
 <div class="options">
        <div class="option active"
             style="--optionBackground: url(https://66.media.tumblr.com/6fb397d822f4f9f4596dff2085b18f2e/tumblr_nzsvb4p6xS1qho82wo1_1280.jpg);">
            <div class="shadow"></div>
            <div class="label">
                <div class="icon">
                    <i class="fas fa-walking"></i>
                </div>
                <div class="info">
                    <div class="main">Blonkisoaz</div>
                    <div class="sub">Omuke trughte a otufta</div>
                </div>
            </div>
        </div>
        <div class="option"
             style="--optionBackground: url(https://66.media.tumblr.com/8b69cdde47aa952e4176b4200052abf4/tumblr_o51p7mFFF21qho82wo1_1280.jpg);">
            <div class="shadow"></div>
            <div class="label">
                <div class="icon">
                    <i class="fas fa-snowflake"></i>
                </div>
                <div class="info">
                    <div class="main">Oretemauw</div>
                    <div class="sub">Omuke trughte a otufta</div>
                </div>
            </div>
        </div>
        <div class="option"
             style="--optionBackground: url(https://66.media.tumblr.com/5af3f8303456e376ceda1517553ba786/tumblr_o4986gakjh1qho82wo1_1280.jpg);">
            <div class="shadow"></div>
            <div class="label">
                <div class="icon">
                    <i class="fas fa-tree"></i>
                </div>
                <div class="info">
                    <div class="main">Iteresuselle</div>
                    <div class="sub">Omuke trughte a otufta</div>
                </div>
            </div>
        </div>
        <div class="option"
             style="--optionBackground: url(https://66.media.tumblr.com/5516a22e0cdacaa85311ec3f8fd1e9ef/tumblr_o45jwvdsL11qho82wo1_1280.jpg);">
            <div class="shadow"></div>
            <div class="label">
                <div class="icon">
                    <i class="fas fa-tint"></i>
                </div>
                <div class="info">
                    <div class="main">Idiefe</div>
                    <div class="sub">Omuke trughte a otufta</div>
                </div>
            </div>
        </div>
        <div class="option"
             style="--optionBackground: url(https://66.media.tumblr.com/f19901f50b79604839ca761cd6d74748/tumblr_o65rohhkQL1qho82wo1_1280.jpg);">
            <div class="shadow"></div>
            <div class="label">
                <div class="icon">
                    <i class="fas fa-sun"></i>
                </div>
                <div class="info">
                    <div class="main">Inatethi</div>
                    <div class="sub">Omuke trughte a otufta</div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="./include/index.js"></script>
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
						<p class="copyright"> © 2020 FADE ROOM</p>
					</li>
				</ul></div>
  
  
  </footer>
  </body>
</html>