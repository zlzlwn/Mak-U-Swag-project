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
    z-index: 2; /* 다른 요소들 위에 보이도록 z-index 설정 */
}

#result {
    margin-top: 50px; /* 검색창과 겹치지 않게 여백 추가 */
    /* 여기에 테이블 결과의 스타일을 추가하세요 */
    overflow-y: auto; /* 테이블 결과가 넘칠 경우 스크롤 표시 */
    max-height: calc(100vh - 100px); /* 화면 높이의 100%에서 검색창과 여백 높이만큼 제외한 값으로 최대 높이 지정 */
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
    <script>
        $(document).ready(function() {
            // 검색 버튼 클릭 시 결과 영역의 높이를 조절
            $('#queryButton').click(function() {
                adjustResultHeight();
            });

            // 페이지 로드 시 테이블 결과 영역의 높이를 조절
            adjustResultHeight();

            // 윈도우 크기가 변경될 때 테이블 결과 영역의 높이를 다시 조절
            $(window).resize(adjustResultHeight);
        });

        // 테이블 결과 영역의 높이를 조절하는 함수
        function adjustResultHeight() {
            var windowHeight = $(window).height();
            var searchContainerHeight = $('#searchContainer').outerHeight();
            var resultHeight = windowHeight - searchContainerHeight;
            $('#result').css('max-height', resultHeight + 'px');
        }
    </script>
</body>    
</html>
