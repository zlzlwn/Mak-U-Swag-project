<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AJAX MySQL Table Query1</title>
<link rel="stylesheet" type="text/css" href="../css/style.css"> <!-- style.css 파일을 불러옴 -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<style>
#searchContainer {
    position: fixed;
    top: 0;
    left: 7%;
    width: 70%;
    background-color: linear-gradient(180deg, rgba(228, 220, 207, 1) 0%, rgba(245, 240, 187, 1) 38%, rgba(125, 157, 156, 1) 100%);
    padding: 10px;
    z-index: 2; /* 다른 요소들 위에 보이도록 z-index 설정 */
    margin-top: 1%;
}

#result {
    margin-top: 55%; /* 검색창과 겹치지 않게 여백 추가 */
    /* 여기에 테이블 결과의 스타일을 추가하세요 */
    overflow-y: auto; /* 테이블 결과가 넘칠 경우 스크롤 표시 */
    max-height: calc(100vh - 200px); /* 화면 높이의 100%에서 검색창과 여백 높이만큼 제외한 값으로 최대 높이 지정 */
    width: 100%; /* 테이블 결과의 너비를 80%로 설정 */
    margin: 0 auto 0; /* 수평 가운데 정렬을 위해 좌우 여백을 자동으로 설정 */
    padding: 0; /* 패딩 제거 */
    box-sizing: border-box; /* 박스 모델 속성 설정 */
}

#result table {
    width: 90%; /* 테이블 너비를 100%로 설정 */
    border-collapse: collapse; /* 테이블 셀 경계를 병합하여 테두리를 생성 */
    margin-top: 6%;
}

#result th, #result td {
    border: 1px solid #dddddd; /* 테이블 셀의 테두리 스타일 지정 */
    padding: 8px; /* 셀 안의 콘텐츠와 경계 사이의 공간 설정 */
    text-align: center; /* 텍스트 가운데 정렬 */
}

#result th {
    background-color: #f2f2f2; /* 테이블 머리글의 배경색 설정 */
}

#result td {
    background-color: #ffffff; /* 테이블 셀의 배경색 설정 */
}

#result tr:nth-child(even) {
    background-color: #f2f2f2; /* 짝수 번째 행의 배경색 설정 */
}

#container {
    display: flex;
    align-items: center; /* 수직 방향으로 위쪽 정렬 */
    margin-right: 10%;
     /* 테이블과 텍스트 사이 여백 */
}

#result {
    max-width: 70%; /* 테이블의 최대 너비 설정 */
}

#text input[type="text"] {
    width: 50%; /* 텍스트 필드의 너비를 100%로 설정 */
    text-align: center;
}

#text table {
    width: 120%; /* 텍스트 필드 테이블 너비를 100%로 설정 */
    border-collapse: collapse; /* 테이블 셀 경계를 병합하여 테두리를 생성 */
    margin-right: 10px;
}

#text th, #text td {
    border: 1px solid #dddddd; /* 테이블 셀의 테두리 스타일 지정 */
    padding: 20px; /* 셀 안의 콘텐츠와 경계 사이의 공간 설정 */
}

#text th {
    background-color: #f2f2f2; /* 테이블 머리글의 배경색 설정 */
}

#text td {
    background-color: #ffffff; /* 테이블 셀의 배경색 설정 */
}
#imagePreview {
    width: 300px; /* 미리보기 컨테이너 고정 너비 */
    height: 300px; /* 미리보기 컨테이너 고정 높이 */
    overflow: auto; /* 이미지가 컨테이너를 벗어나면 스크롤 표시 */
    margin: auto; /* 가운데 정렬 */
}

#imagePreview img {
    max-width: 100%; /* 이미지 너비를 최대 100%로 설정 */
    max-height: 100%; /* 이미지 높이를 최대 100%로 설정 */
    display: block; /* 블록 요소로 설정하여 중앙 정렬을 위한 margin을 적용하기 위해 */
    margin: auto; /* 가로 중앙 정렬을 위해 */
}
</style>
</head>
<body>
    <div id="searchContainer">
        <input type="text" id="name" placeholder="성명 입력">
        <button id="queryButton">검색</button>
    </div>
    <div id="container">
        <div id="result"></div>
        <div id="text">
            <table>
                <tr>
             <th>카테고리</th>
                <td>
                    <select id="Category" name="Category">
                    	<option value="default">선택하세요</option>
                        <option value="BEST 100">BEST 100</option>
                        <option value="All-in-one">All-in-one</option>
                        <option value="Outer">Outer</option>
                        <option value="Top(short sleeve)">Top(short sleeve)</option>
                        <option value="Top(long sleeve)">Top(long sleeve)</option>
                        <option value="Bottoms">Bottoms</option>
                        <option value="Bags">Bags</option>
                        <option value="Accessories">Accessories</option>
                        <option value="Shoes">Shoes</option>
                        <option value="Woman only">Woman only</option>
                        <!-- 다른 카테고리 옵션들 -->
                    </select>
                    <input type="text" id="proCategory" name="proCategory" readonly="readonly" >
                </td>
                </tr>
                <tr>
                    <th>제품이름</th>
                    <td><input type="text" id="proName"></td>
                </tr>
                <tr>
                    <th>성별</th>
                <td>
                    <select id="Gender" name="Gender">
                    	<option value="default">선택하세요</option>
                        <option value="남">남</option>
                        <option value="여">여</option>
                    </select>
                    <!-- 텍스트 필드 추가 -->
                    <input type="text" id="proGender"  name="proGender" size="5" readonly="readonly">
                </td>
                </tr>
                <tr>
                    <th>수량</th>
                <td>
                    <select id="quantity" name="quantity">
                    <option value="default">선택하세요</option>
                        <% for (int i = 1; i <= 100; i++) { %>
                            <option value="<%= i %>"> <%= i %> </option>
                        <% } %>
                    </select>
                    <!-- 텍스트 필드 추가 -->
                    <input type="text" id="proQty" name="proQty" size="5" readonly="readonly" > ea
                </td>
                </tr>
                <tr>
                    <th>가격</th>
                    <td><input type="text" id="proPrice" name="proPrice"></td>
                </tr>
                <tr>
                     <th>색상</th>
                <td>
                    <select id="Color" name="Color">
                    	<option value="default">선택하세요</option>
                        <option value="Red">Red</option>
                        <option value="Blue">Blue</option>
                        <option value="Black">Black</option>
                        <option value="Beige">Beige</option>
                        <option value="Gray">Gray</option>
                        <option value="White">White</option>
                        <option value="Skyblue">Skyblue</option>
                        <option value="Darkblue">Darkblue</option>
                        <!-- 다른 카테고리 옵션들 -->
                    </select>
                    <input type="text" id="proColor" name="proColor" readonly="readonly" >
                </td>
                </tr>
                <tr>
                    <th>현재 이미지</th>
                    <td><input type="text" id="proImage"></td>
                </tr>
                 <tr>
                    <th>이미지</th>
                    <td><input type="file" id="proImage1">
                    <div id="imagePreview"></div></td>
                </tr>
            </table>
            <br>
            <button type="button" id="submitBtn">수정</button>
        </div>
    </div>
    <script src="../js/queryupdate.js"></script> <!-- queryTable.js 파일을 불러옴 -->
    <script>
	document.getElementById('proImage1').addEventListener('change', function(event) {
    var file = event.target.files[0]; // 선택된 파일 가져오기

    // FileReader 객체 생성
    var reader = new FileReader();

    reader.onload = function(event) {
        var imageUrl = event.target.result; // 이미지 URL 가져오기
        var imageElement = document.createElement('img'); // img 요소 생성
        imageElement.src = imageUrl; // 이미지 URL 설정

        // 미리보기 엘리먼트에 이미지 추가
        var imagePreview = document.getElementById('imagePreview');
        imagePreview.innerHTML = ''; // 기존의 미리보기 삭제
        imagePreview.appendChild(imageElement); // 미리보기 엘리먼트에 이미지 추가
    };

    // 파일 읽기 시작
    reader.readAsDataURL(file);
});
</script>
 <script>
    $(document).ready(function() {
        // 파일 선택(input) 요소의 변경 이벤트 리스너 등록
        $('#proImage1').change(function() {
            // 파일이 선택되면 현재 이미지 필드를 숨김
            $('#proImage').hide();
            
            // proImage 필드의 값을 비움
            $('#proImage').val('');
        });
    });
</script>
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
        $(document).ready(function() {
            // '성별' 선택 상자의 변경 이벤트 리스너 등록
            $('#Gender').change(function() {
                // 선택된 옵션의 값 가져오기
                var selectedOption = $(this).val();
                
                // 선택된 값이 'default'인 경우
                if (selectedOption === 'default') {
                    // 텍스트 필드를 비움
                    $('#proGender').val('');
                } else {
                    // 선택된 값으로 텍스트 필드 설정
                    $('#proGender').val(selectedOption);
                }
            });
        });
        $(document).ready(function() {
            // '성별' 선택 상자의 변경 이벤트 리스너 등록
            $('#Category').change(function() {
                // 선택된 옵션의 값 가져오기
                var selectedOption = $(this).val();
                
                // 선택된 값이 'default'인 경우
                if (selectedOption === 'default') {
                    // 텍스트 필드를 비움
                    $('#proCategory').val('');
                } else {
                    // 선택된 값으로 텍스트 필드 설정
                    $('#proCategory').val(selectedOption);
                }
            });
        });
        $(document).ready(function() {
            // '성별' 선택 상자의 변경 이벤트 리스너 등록
            $('#Color').change(function() {
                // 선택된 옵션의 값 가져오기
                var selectedOption = $(this).val();
                
                // 선택된 값이 'default'인 경우
                if (selectedOption === 'default') {
                    // 텍스트 필드를 비움
                    $('#proColor').val('');
                } else {
                    // 선택된 값으로 텍스트 필드 설정
                    $('#proColor').val(selectedOption);
                }
            });
        });
        $(document).ready(function() {
            // '성별' 선택 상자의 변경 이벤트 리스너 등록
            $('#quantity').change(function() {
                // 선택된 옵션의 값 가져오기
                var selectedOption = $(this).val();
                
                // 선택된 값이 'default'인 경우
                if (selectedOption === 'default') {
                    // 텍스트 필드를 비움
                    $('#proQty').val('');
                } else {
                    // 선택된 값으로 텍스트 필드 설정
                    $('#proQty').val(selectedOption);
                }
            });
        });
        $(document).ready(function() {
            // 입력 필드의 값을 콤마로 변환하는 함수
            function addCommas(input) {
                // 콤마가 포함된 문자열을 생성하여 반환
                return input.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            }

            // 입력 필드의 값을 콤마 없이 숫자만 남기는 함수
            function removeCommas(input) {
                // 입력값에서 모든 콤마를 제거하고 반환
                return input.replace(/,/g, "");
            }

            // 입력 필드의 값을 감시하여 콤마를 추가하고 숫자 이외의 입력을 방지하는 이벤트 핸들러
            $("#proPrice").on("input", function() {
                // 입력값에서 콤마를 제거하고 콤마를 추가하여 변환한 후 다시 입력 필드에 넣어줌
                $(this).val(addCommas(removeCommas($(this).val())));
            });

            // 입력 필드의 키 입력 이벤트 핸들러
            $("#proPrice").on("keypress", function(event) {
                // 입력된 키의 Unicode 값을 가져옴
                var charCode = event.which || event.keyCode;

                // 입력된 키가 숫자(0-9)가 아닌 경우와 백스페이스(8) 키를 제외한 경우 입력을 허용하지 않음
                if (charCode < 48 || charCode > 57 || charCode === 8) {
                    // 입력 이벤트 기본 동작을 중지하여 숫자 이외의 입을 방지하고 에러 메시지 표시
                    event.preventDefault();
                    $("#proPriceError").text("숫자만 입력할 수 있습니다.");
                }
            });
        });
        $(document).ready(function(){
            $('#proName').on('input', function() {
                var inputVal = $(this).val();
                var regex = /^[a-zA-Z0-9\s가-힣]*$/; // 특수문자를 허용하지 않는 정규식

                if (!regex.test(inputVal)) {
                    // 특수문자 제거
                    var newValue = inputVal.replace(/[^\w\s가-힣]/g, '');
                    $(this).val(newValue);
                    $('#errorMessage').text('특수문자는 입력할 수 없습니다.');
                } else {
                    $('#errorMessage').text(''); // 에러 메시지를 지웁니다.
                }
            });
        });
        $(document).ready(function() {
            // 수정 버튼 클릭 시 이벤트 리스너 등록
            $('#submitBtn').click(function() {
                // 각 필드의 값 가져오기
                var proName = $('#proName').val();
                var proGender = $('#proGender').val();
                var proQty = $('#proQty').val();
                var proPrice = $('#proPrice').val();
                var proColor = $('#proColor').val();
                var proImage = $('#proImage').val();
                var proImage1 = $('#proImage1').val(); // 이미지 파일 경로
                
                // 값이 비어 있는지 확인 (나머지 필드가 모두 null이고, proImage나 proImage1이 모두 null일 경우에만 오류 메시지 표시)
                if ((proName === '' || proGender === '' || proQty === '' || proPrice === '' || proColor === '') && (proImage === '' && proImage1 === '')) {
                    // 오류 메시지 표시
                    alert('모든 필드를 입력하세요.');
                } else {
                    // 모든 필드가 채워져 있으면 AJAX 요청 등 필요한 작업 수행
                    // 여기에 AJAX 요청 또는 다른 작업을 추가하세요.
                    alert('수정이 완료되었습니다.');
                }
            });
        });

        
        
        
    </script>
</body>
</html>