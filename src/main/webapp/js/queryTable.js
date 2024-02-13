window.onload = function() {
    //AJAX요청
    $.ajax({
        type: "Post",
        url: "QueryServlet",
        data: {name: name},
        success: function(response) {
            /* 서버에서 받은 응답 처리 */
            console.log(response)
            createTable(response)
        }
    })
}

function createTable(data) {
    let table = "<table border='1'>"
    table += "<tr><th>userId</th><th>name</th><th>address</th><th>phone</th><th>email</th><th>gender</th><th>account</th><th>point</th><th>active</th><th>deactive</th><th>howToLogin</th></tr>"
    //데이터 행 추가
    for (let i = 0; i < data.length; i++) {
        table += "<tr>" +
            "<td style='width: 10%; height: 2%'>" + (data[i].userId ? data[i].userId : '') + "</td>" +
            "<td style='width: 7%'>" + (data[i].name ? data[i].name : '') + "</td>" +
            "<td style='width: 20%' >" + (data[i].address ? data[i].address : '') + "</td>" +
            "<td style='width: 8%'>" + (data[i].phone ? data[i].phone : '') + "</td>" +
            "<td style='width: 10%'>" + (data[i].email ? data[i].email : '') + "</td>" +
            "<td style='width: 2%'>" + (data[i].gender ? data[i].gender : '') + "</td>" +
            "<td style='width: 8%'>" + (data[i].account ? data[i].account : '') + "</td>" +
            "<td>" + (data[i].point ? data[i].point : '') + "</td>" +
           "<td style='width: 10%'>" + (data[i].active ? data[i].active : '') + "</td>" +
            "<td style='width: 10%'>" + (data[i].deactive ? data[i].deactive : '') + "</td>" +
            "<td style='width: 6%'>" + (data[i].howToLogin ? data[i].howToLogin : '') + "</td>" +
            "</tr>";
    }
    table += "</table>"
     $("#result").html(table); //result 는 index에 있는 div id="result"
   	 $("#result").css("width", "150%");
     $(".activeHeader").css("width", "50%"); 
}

$(document).ready(function() {
    /* 버튼 클릭시 AJAX 요청 */
    $("#queryButton").click(function() {
            var name = $("#name").val();
           var selectedJoinDate = $("#joinDatepicker").val(); // 가입 날짜 입력란의 값 가져오기
        var selectedLeaveDate = $("#leaveDatepicker").val();
            $.ajax({
                type: "POST",
                url: "QueryServlet",
                data: { name: name, selectedJoinDate: selectedJoinDate, selectedLeaveDate: selectedLeaveDate }, // 선택한 가입 날짜와 탈퇴 날짜도 전송
                success: function(response) {
                    createTable(response);
                }
            });
        });
})

$("#name").addClass("dataInput");
