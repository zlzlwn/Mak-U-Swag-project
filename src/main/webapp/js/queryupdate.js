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
	inputproImage.value = dataReal[index].proImage
	
	console.log(inputproImage)

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
    $("#submitBtn").click(function() {
        // proImage1과 proImage 필드의 값을 가져옴
        let proImage1 = $("#proImage1").val();
        let proImage = $("#proImage").val();
        
        // proImage1에 값이 없고 proImage에만 값이 있는 경우
        if (!proImage1 && proImage) {
            // 이미지를 업로드하지 않고 나머지 필드만 업데이트하는 AJAX 요청
            updateProductWithoutImage();
        } else {
            // proImage1에 값이 있는 경우 이미지를 포함하여 모든 필드를 업데이트하는 AJAX 요청
            uploadAndUpdateProduct();
        }
    });
});

// 이미지를 업로드하지 않고 나머지 필드만 업데이트하는 함수
function updateProductWithoutImage() {
    let Category = $("#proCategory").val();
    let Name = $("#proName").val();
    let Gender = $("#proGender").val();
    let Color = $("#proColor").val();
    let Qty = $("#proQty").val();
    let Price = $("#proPrice").val();
    let Image = $("#proImage").val();
    
    // AJAX 요청
    $.ajax({
        type: "POST",
        url: "UpdateProductServlet", // 제품을 업데이트할 서블릿 주소
        data: {
            Category: Category,
            Name: Name,
            Gender: Gender,
            Color: Color,
            Qty: Qty,
            Price: Price,
            Image: Image // 이미지 파일의 경로를 전달
        },
        success: function(response) {
            // 업데이트 성공 시 처리
            alert("제품이 성공적으로 업데이트되었습니다.");
        },
        error: function(xhr, status, error) {
            // 업데이트 실패 시 처리
            alert("업데이트 중 문제가 발생했습니다: " + error);
        }
    });
}

// 이미지를 포함하여 모든 필드를 업데이트하는 함수
function uploadAndUpdateProduct() {
    // 이미지 파일 선택
    let file = $("#proImage1")[0].files[0];
    alert(file.name);
    
    // 이미지를 FormData에 추가
    let formData = new FormData();
    formData.append('image', file);
    
    // 이미지를 서버에 업로드하는 AJAX 요청
    $.ajax({
        type: "POST",
        url: "UploadImageServlet", // 이미지를 업로드할 서블릿 주소
        data: formData,
        processData: false,
        contentType: false,
        success: function(imagePath) {
            // 이미지가 성공적으로 업로드되면 imagePath를 받아와서 나머지 필드와 함께 업데이트 요청
            let Category = $("#proCategory").val();
            let Name = $("#proName").val();
            let Gender = $("#proGender").val();
            let Color = $("#proColor").val();
            let Qty = $("#proQty").val();
            let Price = $("#proPrice").val();
            
            // AJAX 요청
            $.ajax({
                type: "POST",
                url: "UpdateProductServlet", // 제품을 업데이트할 서블릿 주소
                data: {
                    Category: Category,
                    Name: Name,
                    Gender: Gender,
                    Color: Color,
                    Qty: Qty,
                    Price: Price,
                    ImagePath: imagePath // 이미지 파일의 경로를 전달
                },
                success: function(response) {
                    // 업데이트 성공 시 처리
                    alert("제품이 성공적으로 업데이트되었습니다.");
                },
                error: function(xhr, status, error) {
                    // 업데이트 실패 시 처리
                    alert("업데이트 중 문제가 발생했습니다: " + error);
                }
            });
        },
        error: function(xhr, status, error) {
            // 이미지 업로드 실패 시 처리
            alert("이미지 업로드 중 문제가 발생했습니다: " + error);
        }
    });
}