/* 윈도우가 실행될 때 처음부터 값을 가져온다 */
window.onload = function(){
    /* AJAX 요청 */
    $.ajax({
        type: "POST",
        url: "MypageServlet",
        data: {name : ""},
        success: function(response) {
            /* 서버에서 받은 응답 처리 */
            createTable(response); // json
        }
    })
}

function createTable(purchaseList) {
    let accordion = "<div class='accordion-list'>";
    
    for (let i = 0; i < purchaseList.length; i++) {
        accordion += "<div class='list-item xans-record-'>";
        accordion += "<a href='qnaContent.do?qnaSeq=" + purchaseList[i].purSeq + "' class='post-link'>";
        accordion += "<span class='number'>" + purchaseList[i].proName + "</span>";
        accordion += "<span class='number'>" + purchaseList[i].pQty + "</span>";
        accordion += "<span class='number'>" + purchaseList[i].pPrice + "</span>";
        accordion += "<span class='number'>" + purchaseList[i].pStackPoint + "</span>";
        accordion += "<span class='number'>" + purchaseList[i].pDate + "</span>";
        accordion += "</a>";
        accordion += "</div>";
    }
    
    accordion += "</div>";
    $("#result").html(accordion);
}
