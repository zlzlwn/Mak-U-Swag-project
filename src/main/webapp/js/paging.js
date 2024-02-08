let totalData; //총 데이터 수
let dataPerPage; //한 페이지에 나타낼 글 수
let pageCount = 10; //페이징에 나타낼 페이지 수
let globalCurrentPage=1; //현재 페이지
let dataList; //표시하려하는 데이터 리스트

$(document).ready(function () {
 //dataPerPage 선택값 가져오기
 dataPerPage = $("#dataPerPage").val();
 
 $.ajax({ // ajax로 데이터 가져오기
	method: "GET",
	url: "https://url/data?" + data,
	dataType: "json",
	success: function (d) {
	   //totalData(총 데이터 수) 구하기
	   totalData = d.data.length;
           //데이터 대입
           dataList=d.data;
 });
 
 //글 목록 표시 호출 (테이블 생성)
 displayData(1, dataPerPage);
 
 //페이징 표시 호출
 paging(totalData, dataPerPage, pageCount, 1);
});