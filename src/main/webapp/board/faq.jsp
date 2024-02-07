<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>about us</title>
<link rel="stylesheet" href="./css/accordion.css">
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<link rel="icon" href="./images/CompanyLogo.png"><!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
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



				<div class="board">
					<div
						class="xans-element- xans-board xans-board-title board-header ">
						<h3>
							<font color="#555555">&nbsp;&nbsp;FAQ</font>
						</h3>
						<div class="accordion">
							<hr>
							<input type="radio" name="accordion" id="answer01"> <label
								for="answer01"> &nbsp;&nbsp;공지
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;교환/환불
								방법<em></em>
							</label>
							<div>
								<p>
									교환<br> <br> - 카톡 상담, Q&A 게시판을 통해 교환 의사를 밝힙니다.<br>
									- 상품 포장 시 왕복 배송비 6000원을 동봉합니다.<br> - 상품 포장 시 성함, 연락처, 교환
									희망하는 상품명, 사이즈, 컬러를 기재합니다.<br> <br> 반품<br> <br>
									- 카톡 상담, Q&A 게시판을 통해 반품 의사를 밝힙니다.<br> - 상품 포장 시 왕복 배송비
									6000원 동봉합니다.<br> - 주문 시 배송비를 결제했어도 6000원을 동봉해야 합니다.<br>
									(배송비를 포함한 총 주문금액이 환불되기 때문입니다.)<br> <br> 교환/반품 공통<br>
									<br> - 준비가 끝났다면 대한통운(1588-1255) 에 전화하여 받았던 송장 번호로 반품
									접수합니다.<br> - 평일 기준 7일 이내 상품 훼손 없이 페이드룸으로 도착해야 교환/반품이
									가능합니다.<br>
								</p>
							</div>
						</div>
						<!-- End of accordion -->
						<div class="accordion">
							<!-- Start of next accordion -->
							<hr>
							<input type="radio" name="accordion" id="answer02"> <label
								for="answer02">&nbsp;&nbsp;공지
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								사이즈 가이드<em></em>
							</label>
							<div>
								<p>
									<img hspace="5" vspace="0" src="./images/sizeGuideTop.jpeg"
										style="width: 756px; height: 945px;"> <br>
									<img hspace="5" vspace="0" src="./images/sizeGuideBottom.jpeg"
										style="width: 756px; height: 945px;">
								</p>
							</div>
						</div>
						<!-- End of accordion -->
						<!-- Add similar closing tags for other accordion sections -->
						<div class="accordion">
							<hr>
							<input type="radio" name="accordion" id="answer03"> <label
								for="answer03">&nbsp;&nbsp;공지
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								멤버쉽 혜택<em></em>
							</label>
							<div>
								<p>
									<img hspace="5" vspace="0" src="./images/userRating.jpeg"
										style="width: 756px; height: 976px;">
								</p>
							</div>
						</div>
						<div class="accordion">
							<hr>
							<input type="radio" name="accordion" id="answer04"> <label
								for="answer04">&nbsp;&nbsp;교환/환불
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								교환 환불이 불가능 한 경우<em></em>
							</label>
							<div>
								<p>
									- 배송 완료 시점으로부터 주말 제외 7일 이내 페이드룸 사무실에 도착하지 않을 시 교환/반품이 불가능합니다.<br>
									<br> - 일반적인 시착 외에 외출의 흔적(이염, 늘어짐, 보풀 등, 택 제거)이 발견되면 교환/반품이
									불가능합니다.<br> <br> - 1~3 cm 이내의 실측 오차는 교환/반품은 가능하나 배송비가
									청구됩니다.<br> <br> - 린넨 제품의 경우 보풀처럼 보이는 부위는 원단의 특성으로 무료
									교환/반품 대상이 아닙니다.<br> <br> - 소가죽 수제화의 경우 미세한 스크래치가 있을 수
									있으며 이는 무료 교환/반품 대상이 아닙니다.<br> <br> - 워싱, 대미지 데님의 경우
									수작업이기 때문에 개체 차이가 있을 수 있으며 이는 무료 교환/반품 대상이 아닙니다.<br> <br>
								</p>
							</div>
						</div>
						<div class="accordion">
							<hr>
							<input type="radio" name="accordion" id="answer05"> <label
								for="answer05">&nbsp;&nbsp;배송
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								무료 배송 안내<em></em>
							</label>
							<div>
								<p>
									총 주문금액이 10만원 이상일 시 무료 배송으로 발송됩니다.<br> <br> 교환, 환불 등의
									이유로 최종 구매액이 10만원 이하로 내려가면 배송비가 청구됩니다.<br> <br>
								</p>
							</div>
						</div>
						<div class="accordion">
							<hr>
							<input type="radio" name="accordion" id="answer06"> <label
								for="answer06">&nbsp;&nbsp;주문/결제
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								카드 취소가 되지 않을 때<em></em>
							</label>
							<div>
								<p>
									카드 취소 신청을 한 후 실제 승인까지 2~3일 소요되며 2~3일 뒤 카드사에서 확인 가능합니다.<br>
									<br> 체크 카드의 경우 7일 이내 현금 환불됩니다.<br> <br>
								</p>
							</div>
						</div>
						<div class="accordion">
							<hr>
							<input type="radio" name="accordion" id="answer07"> <label
								for="answer07">&nbsp;&nbsp;주문/결제
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								휴대폰 결제 취소 주의사항<em></em>
							</label>
							<div>
								<p>
									핸드폰 결제 취소는 당월에만 가능합니다.<br> <br> 예를 들어 03.31 주문, 04.01
									취소가 불가능합니다.<br> <br> 이런 경우에는 현금 환불로 진행됩니다.<br> <br>
								</p>
							</div>
						</div>
						<div class="accordion">
							<hr>
							<input type="radio" name="accordion" id="answer08"> <label
								for="answer08">&nbsp;&nbsp;상품 구매
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								전 확인해야 할 것들은 무엇인가요?<em></em>
							</label>
							<div>
								<p>
									온라인 쇼핑은 상품을 직접 보고 구매하는 것이 아니므로 상품구매 전에는 상품 정보를 꼼꼼히 살펴보시기 바랍니다.
									페이드룸은 최대한 실물 색상에 가까운 사진과 정확한 사이즈 기재를 하고 있으나 컴퓨터 해상도에 따라 색상 차이가
									있을 수 있으며,<br> 1~3cm 가량은 재는 방법에 따라 실제 사이즈와 차이가 있을 수 있으니
									참고하시기 바랍니다.
								</p>
							</div>
						</div>
						<div class="accordion">
							<hr>

						</div>




						<!-- 여기까지 작성 -->

						<!-- ============================== [[ Body  section]] ==============================-->

						<!-- =============================  [[ Footer section ]]  ============================= -->


					</div>
				</div>
				<%@ include file="../include/footer.jsp"%>
			</div>
		</div>
	</div>
	<!-- =============================  [[ Footer section ]]  ============================= -->
</body>
</html>