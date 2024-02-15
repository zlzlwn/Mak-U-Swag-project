<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="dto" items="${dtos}">
    <div class="tile xans-record-">
        <a href="/product/${dto.getProName()}/${dto.getCategoryId()}/display/1/">
            <div class="product-image">
                <img src="${pageContext.request.contextPath}/images/${dto.getProImage()}" class="primary-image" alt="${dto.getProName()}">
            </div>
            <div class="product-name">
                <span style="font-size:12px;color:#555555;">${dto.getProName()}</span>
            </div>
            <div class="product-price" data-price-was="" data-price-now="${dto.getProPrice()}" data-stock=""></div>
            <div class="product-info"></div>
            <ul class="xans-element- xans-product xans-product-listitem product-meta">
                <li class=" xans-record-">
                    <span style="font-size:12px;color:#555555;">M L / 4 Colors</span>
                </li>
                <li class=" xans-record-">
                    <span style="font-size:12px;color:#555555;">${dto.getProPrice()}원</span><span id="span_product_tax_type_text" style=""> </span>
                </li>
            </ul>
        </a>
    </div>
</c:forEach>

</body>
</html>