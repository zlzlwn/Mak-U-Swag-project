<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>이미지 업로드</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>

<input type="file" id="imageFileInput">
<button id="uploadButton">이미지 업로드</button>

<script>
$(document).ready(function(){
    $('#uploadButton').on('click', function(){
        var formData = new FormData();
        var files = $('#imageFileInput')[0].files;

        // FormData에 파일 추가
        for(var i=0; i<files.length; i++){
            formData.append('image', files[i]);
        }

        // AJAX 요청
        $.ajax({
            url: '/images',
            type: 'POST',
            data: formData,
            contentType: false,
            processData: false,
            success: function(response){
                alert('이미지 업로드 성공');
            },
            error: function(jqXHR, textStatus, errorMessage){
                console.log(errorMessage); // 오류 메시지 콘솔에 출력
                alert('이미지 업로드 실패');
            }
        });
    });
});
</script>

</body>
</html>