window.onload = function() {
    //AJAX요청
    $.ajax({
        type: "Post",
        url: "QueryServletUpdate",
        data: {name: name},
        success: function(response) {
            /* 서버에서 받은 응답 처리 */
            console.log(response)
            createTable(response)
        }
    })
}

function createTable(data) {
	
	dataReal = Array.from(data)
	
    let table = "<table border='1'>"
    table += "<tr><th>Category</th><th>Name</th><th>Gender</th><th>Color</th><th>Qty</th><th>Price</th><th>Image</th></tr>"
    //데이터 행 추가
    for (let i = 0; i < data.length; i++) {
        table += "<tr>" +
             "<td id='"+ data[i].proCategory + ">"  +
		"<a href='#' onclick='handleClick(" + i + ")'>" +data[i].proCategory + "</a>" +
		"</td>" +
            "<td>"+ data[i].proName + "</td>" +
           "<td>"+ data[i].proGender + "</td>" +
            "<td>"+ data[i].proColor + "</td>" +
            "<td>"+ data[i].proQty + "</td>" +
            "<td>"+ data[i].proPrice + "</td>" +
            "<td><img src='/Team1_project/images/" + data[i].proImage + "' width='100' height='100'></td>" +
            "</tr>";
    }
    table += "</table>"
     $("#result").html(table); //result 는 index에 있는 div id="result"
   	 $("#result").css("width", "100%");
}
function handleClick(index){
	let inputproCategory = document.getElementById("proCategory")
	let inputproName = document.getElementById("proName")
	let inputproGender = document.getElementById("proGender")
	let inputproColor = document.getElementById("proColor")
	let inputproQty = document.getElementById("proQty")
	let inputproPrice = document.getElementById("proPrice")
	let inputproImage = document.getElementById("proImage")
	
	inputproCategory.value = dataReal[index].proCategory
	inputproName.value = dataReal[index].proName
	inputproGender.value = dataReal[index].proGender
	inputproColor.value = dataReal[index].proColor
	inputproQty.value = dataReal[index].proQty
	inputproPrice.value = dataReal[index].proPrice
	 inputproImage.src = dataReal[index].proImage;

}

$(document).ready(function() {
    /* 버튼 클릭시 AJAX 요청 */
    $("#queryButton").click(function() {
        /* 입력된 데이터 가져오기 */
        let name = $("#name").val()
        /* AJAX 요청 */
        $.ajax({
            type: "POST",
            url: "QueryServletUpdate",
            data: {name: name},
            success: function(response) {
                /* 서버에서 받은 응답 처리 */
                //$("#result").html(response)
                createTable(response)
            }
        })
    })
})

	
	$(document).ready(function() {
		/* 버튼 클릭시 AJAX 요청 */
		$("#submitBtn").click(function() {
			/* 입력된 데이터 가져오기 */
			let Category = $("#proCategory").val()   //servlet에서 받는 코드가 code
			let Name = $("#proName").val()
			let Gender = $("#proGender").val()
			let Color = $("#proColor").val()
			let Qty = $("#proQty").val()
			let Price = $("#proPrice").val()
			let Image = $("#proImage").val()
			/* AJAX 요청 */
			$.ajax({
				type: "POST",
				url: "UpdateAction",
				data: {
					Category : Category,
					Name : Name,
					Gender : Gender,
					Color : Color,
					Qty : Qty,
					Price : Price,
					Image : Image
				},
				success: function(response) {
					/* 서버에서 받은 응답 처리 */
					//$("#result").html(response)
					//수정 후 디비를 다시불러와야함.
						$.ajax({
							type: "POST",
							url: "UpdateServlet",
							data: {name : ""},
							success: function(response) {
									/* 서버에서 받은 응답 처리 */
								createTable(response) //json
		}
	})
	
	 $("#proCategory").val("");
                $("#proName").val("");
                $("#proGender").val("");
                $("#proColor").val("");
                $("#proQty").val("");
                $("#proPrice").val("");
                 $("#proImage").val("");

					alert("수정되었습니다.")
					
				},
				error : function(xhr,status,error){
					alert("수정 문제 발생"+ error)
				}
			})
		})
		
	})
	
	

$("#name").addClass("dataInput");
