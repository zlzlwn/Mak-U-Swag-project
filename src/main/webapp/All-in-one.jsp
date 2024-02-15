<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>MakUSwag</title>
<!-- Bootstrap CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./css/bootstrap.css">
<link rel="stylesheet" href="./css/slick.css">
<link rel="stylesheet" href="./css/slick2.css">
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
<link rel="icon" href="./images/CompanyLogo.png">
<script type="text/javascript" src="./js/slick.js"></script>
<style>
/* 네모로 변경할 스타일 */
.carousel-indicators li {
	border-radius: 0;
	width: 30px; /* 네모의 가로 길이 조절 */
	height: 10px; /* 네모의 세로 길이 조절 */
	background-color: #ddd; /* 네모의 배경색 */
	margin: 0 3px; /* 네모 간의 간격 조절 */
	cursor: pointer;
}

/* 활성화된 네모의 스타일 */
.carousel-indicators .active {
	border-radius: 0;
	width: 30px; /* 네모의 가로 길이 조절 */
	height: 10px; /* 네모의 세로 길이 조절 */
	background-color: #333; /* 활성화된 네모의 배경색 */
}

h2 {
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
.tile .product-image {
    margin-bottom: 30px;
    position: relative;
    width: 100%;
    height: 0;
    padding-top: 125%;
    overflow: hidden;
}
.tile .product-image img {
    width: 100%;
    height: auto;
    position: absolute;
    top: 0;
    left: 0;
    transition: opacity 0.15s ease-out;
}
.tile .product-image .secondary-image, .tile:hover .product-image .primary-image {
    opacity: 0;
}
.tile .product-info {
    font-size: 11px;
    margin-top: 12px;
}
</style>
</head>
<body class="nav-expended">
	<!-- ============================== [[ Header  section]] ==============================-->

	<%@ include file="include/header.jsp"%>

	<!-- ============================== [[ Header  section]] ==============================-->

	<!-- ============================== [[ Sidebar  section]] ==============================-->
	<div class="site-main">
		<div class="container">

			<%@ include file="include/sidemenu.jsp"%>

			<!-- ============================== [[ Sidebar  section]] ==============================-->

			<!-- ============================== [[ Body  section]] ==============================-->


			<!-- 여기서 부터 작성 -->
			<div class="main">

				<!-- 여기서 부터 작성 -->
			<div class="xans-element- xans-product xans-product-menupackage catalog-header ">
			<div class= "xans-element- xans-product xans-product-headcategory category-title">
			<h2>All-in-one</h2>
			</div>
			<div class="catalog-nav">
				<div class="xans-element- xans-product xans-product-headcategory categories">
					<span class="item">
						<a href="#">All</a>
					</span>	
					<span style="display: ;" class="xans-element- xans-product xans-product-displaycategory item  xans-record-">
						<a href="#">Jump Suit</a>
					</span>
					<span style="display: ;" class="xans-element- xans-product xans-product-displaycategory item  xans-record-">
						<a href="#">Overalls</a>
					</span>
				</div> 
			</div>
		</div>
		<div class="xans-element- xans-product xans-product-normalpackage catalog "><div class="xans-element- xans-product xans-product-listnormal"><!--
            $count = 48
                ※ 상품진열갯수를 설정하는 변수입니다. 설정하지 않을 경우, 최대 200개의 상품이 진열 됩니다.
                ※ 진열된 상품이 많으면, 쇼핑몰에 부하가 발생할 수 있습니다.
            $basket_result = /product/add_basket.html
            $basket_option = /product/basket_option.html
        -->
<div class="product-tiles">
		    <div class="tile xans-record-">
			    <a href="/product/new-season-overalls/1602/category/77/display/1/">
				    <div class="product-image">
					    <img src="//faderoom.co.kr/web/product/big/202306/76e6852caa14621d1aadad8eb6c8eb73.jpg" class="primary-image" alt="NEW SEASON OVERALLS">
					     <img src="//faderoom.co.kr/web/product/medium/202306/3a0315817c9e68bad429ba3cca5dd807.jpg" class="secondary-image" alt="NEW SEASON OVERALLS">
					 </div>
				    <div class="product-name"><span style="font-size:12px;color:#555555;">NEW SEASON OVERALLS</span></div>
				    <div class="product-price" data-price-was="" data-price-now="68000" data-stock=""></div>
				    <div class="product-info"></div>
					<ul class="xans-element- xans-product xans-product-listitem product-meta"><li class=" xans-record-"><span style="font-size:12px;color:#555555;">Free /  1 Color</span></li>
<li class=" xans-record-"><span style="font-size:12px;color:#555555;">68,000원</span><span id="span_product_tax_type_text" style=""> </span></li>
</ul>
</a>
		    </div>
		    <div class="tile xans-record-">
			    <a href="/product/neo-jump-suit/1530/category/77/display/1/">
				     <div class="product-image">
					    <img src="//faderoom.co.kr/web/product/big/202305/6b2ddea6ba871dfd5ea5ec41e5802a38.jpg" class="primary-image" alt="NEO JUMP SUIT">
					     <img src="//faderoom.co.kr/web/product/medium/202305/761d92691fd7d3eeafdfbe83fb0eb77f.jpg" class="secondary-image" alt="NEO JUMP SUIT">
					 </div>
				    <div class="product-name"><span style="font-size:12px;color:#555555;">NEO JUMP SUIT</span></div>
				    <div class="product-price" data-price-was="" data-price-now="114000" data-stock=""></div>
				    <div class="product-info"></div>
					<ul class="xans-element- xans-product xans-product-listitem product-meta"><li class=" xans-record-"><span style="font-size:12px;color:#555555;">Free / 3 Colors</span></li>
<li class=" xans-record-"><span style="font-size:12px;color:#555555;">114,000원</span><span id="span_product_tax_type_text" style=""> </span></li>
</ul>
</a>
		    </div>
<div class="tile xans-record-">
			    <a href="/product/soft-linen-jump-suit/642/category/77/display/1/">
				     <div class="product-image">
					    <img src="//faderoom.co.kr/web/product/big/202304/12eb8b1448ae638e07be43452df1483f.jpg" class="primary-image" alt="SOFT LINEN JUMP SUIT">
					     <img src="//faderoom.co.kr/web/product/medium/202304/6f997adaa243cd5ad353292436cc4318.jpg" class="secondary-image" alt="SOFT LINEN JUMP SUIT">
					 </div>
				    <div class="product-name"><span style="font-size:12px;color:#555555;">SOFT LINEN JUMP SUIT</span></div>
				    <div class="product-price" data-price-was="" data-price-now="69000" data-stock=""></div>
				    <div class="product-info"></div>
					<ul class="xans-element- xans-product xans-product-listitem product-meta"><li class=" xans-record-"><span style="font-size:12px;color:#555555;">M L / 5 Colors</span></li>
<li class=" xans-record-"><span style="font-size:12px;color:#555555;">69,000원</span><span id="span_product_tax_type_text" style=""> </span></li>
</ul>
</a>
		    </div>
<div class="tile xans-record-">
			    <a href="/product/charming-jump-suit/193/category/77/display/1/">
				     <div class="product-image">
					    <img src="//faderoom.co.kr/web/product/big/202303/2b02dc7c5ad7d1800de5c92a04b5d9d7.jpg" class="primary-image" alt="CHARMING JUMP SUIT">
					     <img src="//faderoom.co.kr/web/product/medium/202303/963ce462063c3befac8ec6a07ca32646.jpg" class="secondary-image" alt="CHARMING JUMP SUIT">
					 </div>
				    <div class="product-name"><span style="font-size:12px;color:#555555;">CHARMING JUMP SUIT</span></div>
				    <div class="product-price" data-price-was="" data-price-now="68000" data-stock=""></div>
				    <div class="product-info"></div>
					<ul class="xans-element- xans-product xans-product-listitem product-meta"><li class=" xans-record-"><span style="font-size:12px;color:#555555;">Free / 3 Colors</span></li>
<li class=" xans-record-"><span style="font-size:12px;color:#555555;">68,000원</span><span id="span_product_tax_type_text" style=""> </span></li>
</ul>
</a>
		    </div>
<div class="tile xans-record-">
			    <a href="/product/erling-jump-suit/319/category/77/display/1/">
				     <div class="product-image">
					    <img src="//faderoom.co.kr/web/product/big/202303/4df86df42d23fc1ff0892879f32c5184.jpg" class="primary-image" alt="ERLING JUMP SUIT">
					     <img src="//faderoom.co.kr/web/product/medium/202303/438cc21db2bd7c1b3a0fc3c03742dfb5.jpg" class="secondary-image" alt="ERLING JUMP SUIT">
					 </div>
				    <div class="product-name"><span style="font-size:12px;color:#555555;">ERLING JUMP SUIT</span></div>
				    <div class="product-price" data-price-was="" data-price-now="69000" data-stock=""></div>
				    <div class="product-info"></div>
					<ul class="xans-element- xans-product xans-product-listitem product-meta"><li class=" xans-record-"><span style="font-size:12px;color:#555555;">M L / 3 Colors</span></li>
<li class=" xans-record-"><span style="font-size:12px;color:#555555;">69,000원</span><span id="span_product_tax_type_text" style=""> </span></li>
</ul>
</a>
		    </div>
<div class="tile xans-record-">
			    <a href="/product/engine-linen-jump-suit-5024/241/category/77/display/1/">
				     <div class="product-image">
					    <img src="//faderoom.co.kr/web/product/big/202303/2291ef89aa3768d5f31799eaeb498f9c.jpg" class="primary-image" alt="ENGINE LINEN JUMP SUIT 5024">
					     <img src="//faderoom.co.kr/web/product/medium/202303/1f4490c2bd15eaf9ecbe0a562e6ac183.jpg" class="secondary-image" alt="ENGINE LINEN JUMP SUIT 5024">
					 </div>
				    <div class="product-name"><span style="font-size:12px;color:#555555;">ENGINE LINEN JUMP SUIT 5024</span></div>
				    <div class="product-price" data-price-was="" data-price-now="89000" data-stock=""></div>
				    <div class="product-info"></div>
					<ul class="xans-element- xans-product xans-product-listitem product-meta"><li class=" xans-record-"><span style="font-size:12px;color:#555555;">M L / 3 Colors</span></li>
<li class=" xans-record-"><span style="font-size:12px;color:#555555;">89,000원</span><span id="span_product_tax_type_text" style=""> </span></li>
</ul>
</a>
		    </div>
<div class="tile xans-record-">
			    <a href="/product/fade-corduroy-jump-suit-5028/326/category/77/display/1/">
				     <div class="product-image">
						
					    <img src="${pageContext.request.contextPath}/images/${dtos.getProImage()}" class="primary-image" alt="FADE CORDUROY JUMP SUIT 5028">
					     <img src="//faderoom.co.kr/web/product/medium/202303/9e40ca76837cba94ced2242e150edd68.jpg" class="secondary-image" alt="FADE CORDUROY JUMP SUIT 5028">
					 </div>
				    <div class="product-name"><span style="font-size:12px;color:#555555;">FADE CORDUROY JUMP SUIT 5028</span></div>
				    <div class="product-price" data-price-was="" data-price-now="99000" data-stock=""></div>
				    <div class="product-info"></div>
					<ul class="xans-element- xans-product xans-product-listitem product-meta"><li class=" xans-record-"><span style="font-size:12px;color:#555555;">M L / 3 Colors</span></li>
<li class=" xans-record-"><span style="font-size:12px;color:#555555;">99,000원</span><span id="span_product_tax_type_text" style=""> </span></li>
</ul>
</a>
		    </div>
<div class="tile xans-record-">
			    <a href="/product/fade-overalls-5027/327/category/77/display/1/">
				     <div class="product-image">
					    <img src="//faderoom.co.kr/web/product/big/202010/82d0d95b988db20b3ff6bc62b3dbe781.jpg" class="primary-image" alt="FADE OVERALLS 5027">
					     <img src="//faderoom.co.kr/web/product/medium/202010/30f39955207b3753fffbee0157cb71c1.jpg" class="secondary-image" alt="FADE OVERALLS 5027">
					 </div>
				    <div class="product-name"><span style="font-size:12px;color:#555555;">FADE OVERALLS 5027</span></div>
				    <div class="product-price" data-price-was="" data-price-now="87000" data-stock=""></div>
				    <div class="product-info"></div>
					<ul class="xans-element- xans-product xans-product-listitem product-meta"><li class=" xans-record-"><span style="font-size:12px;color:#555555;">M L / 2 Colors</span></li>
<li class=" xans-record-"><span style="font-size:12px;color:#555555;">87,000원</span><span id="span_product_tax_type_text" style=""> </span></li>
</ul>
</a>
		    </div>
<div class="tile xans-record-">
			    <a href="/product/half-linen-jump-suit/591/category/77/display/1/">
				     <div class="product-image">
					    <img src="//faderoom.co.kr/web/product/big/202105/9b3aca565907cda53ef3bf2331373916.jpg" class="primary-image" alt="HALF LINEN JUMP SUIT">
					     <img src="//faderoom.co.kr/web/product/medium/202105/d9d30a6ff206c4c27486513efb73bcb9.jpg" class="secondary-image" alt="HALF LINEN JUMP SUIT">
					 </div>
				    <div class="product-name"><span style="font-size:12px;color:#555555;">HALF LINEN JUMP SUIT</span></div>
				    <div class="product-price" data-price-was="" data-price-now="56000" data-stock=""></div>
				    <div class="product-info"></div>
					<ul class="xans-element- xans-product xans-product-listitem product-meta"><li class=" xans-record-"><span style="font-size:12px;color:#555555;">M L / 4 Colors</span></li>
<li class=" xans-record-"><span style="font-size:12px;color:#555555;">56,000원</span><span id="span_product_tax_type_text" style=""> </span></li>
</ul>
</a>
		    </div>
	    </div>
</div>
</div>

<div class="xans-element- xans-product xans-product-normalpaging pagination"><ul>
<!-- <li><a href="#none" class="nav-button">&lt;&lt;</a></li>
		<li><a href="#none" class="nav-button">&lt;</a></li> --><li class="xans-record-"><a href="?page=1" class="this">1</a></li>
        		<!-- <li><a href="#none" class="nav-button">&gt;</a></li>
		<li><a href="#none" class="nav-button">&gt;&gt;</a></li> -->
    </ul>
</div>

<script>

$('.bestseller-tiles').slick({
	arrows: false,
	dots: true,
	infinite: true,
	slidesToShow: 3,
	slidesToScroll: 3,
	responsive: [
	{
		breakpoint: 1200,
		settings: {
			slidesToShow: 2,
			slidesToScroll: 2
		}
	}
	]
});

function priceNumber(number) {
    var parts = number.toString().split(".");
    	parts[0] = parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    return parts.join(".");
}

$(document).ready(function(){

	$('.tile').each(function(){
		
		// Product Price

		var raw_price = Math.floor($(this).find('.product-price').attr('data-price-now')),
			price = priceNumber(raw_price),
			raw_price_was = $(this).find('.product-price').attr('data-price-was'),
			price_was = priceNumber(Math.floor(raw_price_was)),
			stock = $(this).find('.product-price').attr('data-stock');
			
		if ($(this).find('.product-meta li').length > 2) {
			price_was = price;
			price = $(this).find('.product-meta li:last-child span').text().replace('원', '');
		}
		
		// if (price == price_was || price_was == 0 || !raw_price_was) {
		if (price == price_was || price_was == 0) {
			$(this).find('.product-price').html('<span class="price-now">' + price + ' KRW</span>');
		} else {	
			$(this).find('.product-price').html('<span class="price-was">' + price_was + '</span><span class="price-now">' + price + ' KRW</span>');
		}
		
		// Product Info
		
		var info = $(this).find('.product-meta li:eq(0) > span').text();
		$(this).find('.product-info').text(info);
		
	});

});

</script>
				

				<%@ include file="include/footer.jsp"%>

			</div>
		</div>
	</div>
	<!-- =============================  [[ Footer section ]]  ============================= -->

</body>
</html>
