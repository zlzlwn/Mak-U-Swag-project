function submitSearchForm12(event) {
    event.preventDefault();

    var searchInput = document.getElementById("search").value;
    var searchDate = document.getElementById("search_date").value;
    var searchKey = document.getElementById("search_key").value;

    // 서버에 AJAX 요청 보내기
    $.ajax({
        type: "POST",
        url: "your_backend_url", // 실제 백엔드 URL로 업데이트
        data: {
            searchInput: searchInput,
            searchDate: searchDate,
            searchKey: searchKey
        },
        success: function (data) {
            // 업데이트된 데이터로 아코디언 메뉴 업데이트
            updateAccordionMenu(data);
        },
        error: function (error) {
            console.error("에러:", error);
        }
    });
}

function updateAccordionMenu(data) {
    // 데이터가 HTML 형식인 경우를 가정하고
    // 아코디언 요소의 내용을 업데이트
    $("#searchResults").html(data);

    // 업데이트된 아코디언 메뉴 표시
    $("#searchResults").show();
}