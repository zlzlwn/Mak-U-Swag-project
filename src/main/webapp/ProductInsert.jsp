<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Combo Box Example</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        #textField,#genderText {
            text-align: center; /* 텍스트를 가운데 정렬합니다. */
        }
        input[type="text"] {
            text-align: center; /* 가운데 정렬 */
        }
        #imagePreview {
            margin-top: 10px; /* 파일 첨부란과 이미지 미리 보기 요소 간에 상단 여백 추가 */
        }
        table {
            border-collapse: collapse; /* 테이블 셀 경계를 병합하여 경계를 만듭니다. */
            width: 80%;
        }
        th, td {
            border: 1px solid #dddddd; /* 테이블 셀 경계를 실선으로 지정합니다. */
            text-align: left; /* 텍스트를 왼쪽으로 정렬합니다. */
            padding: 8px;
            width:20px;
        }
        th {
            background-color: #f2f2f2; /* 테이블 헤더 배경색을 지정합니다. */
        }
        .error-message {
            color: red; /* 빨간색으로 메시지 색상 지정 */
            font-size: 10px;
        }
    </style>

</head>
<body>
    <h3>제품등록</h3>
    <table>
        <tr>
            <th>항목</th>
            <th>내용</th>
        </tr>
        <tr>
            <td>ProCategory:</td>
            <td>
                <select id="comboBox">
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
                </select>
                <input type="text" id="textField" value="" readonly size="15">
            </td>
        </tr>
          <tr>
            <td>ProName:</td>
            <td>
                <input type="text" id="name" value="" size="15">
                <span id="errorMessage" class="error-message"></span>
            </td>
        </tr>
        <tr>
            <td>ProGender:</td>
            <td>
                <select id="genderSelect">
                    <option value="default">선택하세요</option>
                    <option value="남">남</option>
                    <option value="여">여</option>
                </select>
                <input type="text" id="genderText" value="" size="5" readonly>
            </td>
        </tr>
        <tr>
            <td>ProIntroduction:</td>
            <td><input type="text" id="name" value="" size="30"></td>
        </tr>
        <tr>
            <td>ProQty:</td>
            <td>
                <select id="Qty">
                    <option value="default">선택하세요</option> 
                    <% for (int i = 1; i <= 100; i++) { %>
                    <option value="<%= i %>"> <%= i %> </option>
                    <% } %>
                </select>
                <input type="text" id="qty" value="" size="5" readonly="readonly">
            </td>
        </tr>
        <tr>
            <td>ProPrice:</td>
            <td><input type="text" id="price" value="" size="7"> 원</td>
        </tr>
        <tr>
            <td>ProImage:</td>
            <td>
                <input type="file" id="imageUpload" accept="image/*">
                <div id="imagePreview"></div>
            </td>
        </tr>
    </table>

    <script>
        $(document).ready(function() {
            // 콤보박스 변경 시 이벤트 처리
            $("#comboBox").change(function() {
                var selectedOption = $(this).val(); // 선택된 옵션 값 가져오기
                if (selectedOption === "default") { // 선택하세요 옵션을 선택한 경우
                    $("#textField").val(""); // 텍스트 필드 비우기
                    $("#textField").prop("readonly", true); // 텍스트 필드 readonly 설정
                } else { // 나머지 옵션을 선택한 경우
                    $("#textField").val(selectedOption); // 텍스트 필드에 선택된 옵션 값 설정
                    $("#textField").prop("readonly", true); // 텍스트 필드 readonly 설정
                }
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            $("#imageUpload").on("change", function(event) {
                var selectedFile = event.target.files[0]; // 선택된 파일 가져오기
                var reader = new FileReader(); // FileReader 객체 생성

                reader.onload = function(event) {
                    // 이미지 미리 보기 엘리먼트에 선택된 이미지 추가
                    $("#imagePreview").html('<img src="' + event.target.result + '" style="max-width: 200px; max-height: 200px;">');
                };

                // FileReader를 사용하여 이미지를 읽고 미리보기로 표시
                reader.readAsDataURL(selectedFile);
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            $("#name").on("input", function() {
                var inputText = $(this).val(); // 입력된 텍스트 가져오기
                var specialChars = /[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]+/; // 특수문자 정규식 패턴

                if (specialChars.test(inputText)) { // 입력된 텍스트에 특수문자가 포함된 경우
                    $("#errorMessage").text("특수문자는 사용할 수 없습니다."); // 오류 메시지 표시
                } else {
                    $("#errorMessage").text(""); // 오류 메시지 지우기
                }
            });
        });
    </script>
    <script>
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

            // 입력 필드의 값을 감시하여 콤마를 추가하는 이벤트 핸들러
            $("input#price").on("input", function() {
                // 입력값에서 콤마를 제거하고 콤마를 추가하여 변환한 후 다시 입력 필드에 넣어줌
                $(this).val(addCommas(removeCommas($(this).val())));
            });
        });
    </script>
     <script>
        $(document).ready(function() {
            // 콤보박스 변경 시 이벤트 처리
            $("#Qty").change(function() { // 여기서 Qty 대신 #Qty 사용
                var selectedOption = $(this).val(); // 선택된 옵션 값 가져오기
                if (selectedOption === "default") { // 선택하세요 옵션을 선택한 경우
                    $("#qty").val(""); // 텍스트 필드 비우기
                    $("#qty").prop("readonly", true); // 텍스트 필드 readonly 설정
                } else { // 나머지 옵션을 선택한 경우
                    $("#qty").val(selectedOption); // 텍스트 필드에 선택된 옵션 값 설정
                    $("#qty").prop("readonly", true); // 텍스트 필드 readonly 설정
                }
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            var genderSelect = $('#genderSelect');
            var genderText = $('#genderText');
            // 콤보박스 변경 시 이벤트 처리
            genderSelect.change(function() {
                var selectedOption = $(this).val(); // 선택된 옵션 값 가져오기
                if (selectedOption === 'default') { // '선택하세요' 옵션을 선택한 경우
                    genderText.val(''); // 텍스트 필드 비우기
                    genderText.prop('readonly', true); // 텍스트 필드 readonly 설정
                }	else { // 다른 옵션을 선택한 경우
                    genderText.val(selectedOption); // 텍스트 필드에 선택된 옵션 값 설정
                    genderText.prop('readonly', true); // 텍스트 필드 readonly 설정
                }
            });
        });
    </script>
</body>
</html>
