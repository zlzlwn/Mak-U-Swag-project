<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AJAX MySQL Table Query1</title>
<link rel="stylesheet" type="text/css" href="./css/style.css"> <!-- style.css 파일을 불러옴 -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<style>
#searchContainer {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    background-color: linear-gradient(180deg, rgba(228, 220, 207, 1) 0%, rgba(245, 240, 187, 1) 38%, rgba(125, 157, 156, 1) 100%);
    padding: 10px;
    z-index: 9999; /* 다른 요소들 위에 보이도록 z-index 설정 */
}

#result {
    margin-top: 50px; /* 검색창과 겹치지 않게 여백 추가 */
    /* 여기에 테이블 결과의 스타일을 추가하세요 */
}
</style>
</head>
<body>
    <div id="searchContainer">
        <input type="text" id="name" placeholder="성명 입력">
        <button id="queryButton">검색</button>
    </div>
	<div id="result"></div>
    <script src="./js/queryTable.js"></script> <!-- queryTable.js 파일을 불러옴 -->
</body>    
</html>
