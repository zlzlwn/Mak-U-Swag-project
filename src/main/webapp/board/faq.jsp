<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
<<title></title>
<style>
.displaynone {
	display: none !important;
}

body.eMobilePopup {
	overflow: hidden;
	position: fixed;
}

.ec-base-label {
	display: inline-block;
	margin-right: 5px;
}

.ec-base-label img {
	vertical-align: middle;
}

.gridContainer .gridItem {
	min-width: 0;
}

.ec-solution-box {
	padding: 20px;
	border: 5px solid #e8e8e8;
	color: #404040;
}

.ec-solution-box.gHalf {
	position: relative;
	padding: 20px 0;
}

.ec-solution-box.gHalf:before {
	position: absolute;
	top: 0;
	left: 50%;
	display: block;
	content: "";
	width: 1px;
	height: 100%;
	background-color: #e6e6e6;
}

.ec-solution-box.typeBg {
	background-color: #fbfafa;
}

.ec-solution-box.typeThin {
	border-width: 1px;
	border-color: #d7d5d5;
}

.ec-solution-box.typeThinBg {
	border-width: 1px;
	border-color: #d7d5d5;
	background-color: #fbfafa;
}

.ec-solution-box.typeThinBg>.agree {
	padding: 20px;
	border: 1px solid #e6e6e6;
	background: #fff;
}

.ec-solution-box.typeThinBg>.agree p {
	padding: 0 0 17px;
}

.ec-solution-box.typeMember {
	padding: 0;
}

.ec-solution-box.typeMember .information {
	display: table;
	table-layout: fixed;
	padding: 10px 0;
	width: 100%;
	box-sizing: border-box;
}

.ec-solution-box.typeMember .information>.title, .ec-solution-box.typeMember .information>.thumbnail
	{
	display: table-cell;
	padding: 0 15px;
	width: 70px;
	text-align: center;
	vertical-align: middle;
}

.ec-solution-box.typeMember .information>.title {
	vertical-align: middle;
}

.ec-solution-box.typeMember .information>.thumbnail img {
	max-width: 70px;
}

.ec-solution-box.typeMember .information .description {
	display: table-cell;
	padding: 0 10px;
	width: auto;
	line-height: 1.5em;
	border-left: 1px solid #e8e8e8;
	vertical-align: middle;
}

.ec-solution-box.typeMember.gMessage {
	border-width: 1px;
	border-color: #d7d5d5;
}

.ec-solution-box .message {
	display: block;
	padding: 10px 0 10px 35px;
	border-bottom: 1px solid #e8e7e7;
	background: #fbfbfb
		url("//img.echosting.cafe24.com/skin/base/common/ico_info.gif")
		no-repeat 10px center;
}

.ec-solution-box.typeProduct {
	display: table;
	table-layout: fixed;
	padding: 15px 0;
	width: 100%;
	box-sizing: border-box;
}

.ec-solution-box.typeProduct .thumbnail, .ec-solution-box.typeProduct .information
	{
	display: table-cell;
	padding: 0 20px;
	vertical-align: middle;
}

.ec-solution-box.typeProduct .thumbnail {
	width: 100px;
}

.ec-solution-box.typeProduct .thumbnail img {
	max-width: 90px;
	border: 1px solid #d7d5d5;
}

.ec-solution-box.typeProduct .information {
	padding-left: 0;
}

.ec-solution-button {
	padding: 10px 0;
	text-align: center;
}

.ec-solution-button.justify {
	position: relative;
}

.ec-solution-button:after {
	display: block;
	content: "";
	clear: both;
}

.ec-solution-button .gLeft {
	float: left;
	text-align: left;
}

.ec-solution-button .gRight {
	float: right;
	text-align: right;
}

.ec-solution-button.justify .gLeft {
	position: absolute;
	left: 0;
}

.ec-solution-button.justify .gRight {
	position: absolute;
	right: 0;
}

.ec-solution-button .text {
	margin: 0 6px 0 10px;
	color: #353535;
	line-height: 24px;
}

.ec-solution-button.typeBorder {
	margin-top: -1px;
	padding: 10px 20px;
	border: 1px solid #d7d5d5;
}

.ec-solution-button.typeBG {
	padding: 10px 20px;
	border: 1px solid #d7d5d5;
	background: #fbfafa;
}

.ec-solution-layer li {
	list-style: none;
}

.ec-solution-layer table {
	width: 100%;
	border: 0;
	border-spacing: 0;
	border-collapse: collapse;
}

.ec-solution-layer caption {
	display: none;
}

.ec-solution-layer h1, .ec-solution-layer h3 {
	margin: 0;
}

.ec-solution-layer {
	position: absolute;
	z-index: 100;
	border: 1px solid #757575;
	background: #fff;
}

.ec-solution-layer .header {
	padding: 7px 35px 7px 19px;
	color: #fff;
	background: #495164;
}

.ec-solution-layer .header>h1, .ec-solution-layer .header>h3 {
	font-size: 14px;
	line-height: 1.5;
}

.ec-solution-layer .content {
	padding: 20px;
	font-size: 12px;
}

.ec-solution-layer div.ec-solution-help {
	margin-top: 0;
}

.ec-solution-layer .ec-solution-button {
	padding: 9px;
	border-top: 1px solid #d7d5d5;
	text-align: center;
	background: #fbfafa;
}

.ec-solution-layer .close {
	position: absolute;
	right: 0;
	top: 0;
	padding: 11px 20px;
	cursor: pointer;
}

.ec-solution-layer .ec-solution-table table [id*="Msg"].error {
	color: #f00;
}

#popup .ec-solution-layer {
	position: relative;
	border: 0;
}

#popup .ec-solution-layer .header {
	padding: 12px 35px 12px 19px;
}

#popup .ec-solution-layer .close {
	top: 5px;
}

.ec-solution-layer .content>.ec-solution-table table:first-child {
	margin-top: 0;
}

.ec-solution-layer .ec-solution-table table {
	line-height: 1.4;
}

.ec-solution-layer .ec-solution-table thead th {
	padding: 9px 0 8px;
}

.ec-solution-layer .ec-solution-table tbody th {
	padding: 9px 0 8px 10px;
}

.ec-solution-layer .ec-solution-table td {
	padding: 9px 10px 8px;
}

.ec-solution-layer .ec-solution-table.typeWrite td {
	padding: 5px 10px 4px;
}

.ec-solution-layer .ec-solution-table.typeList tfoot td {
	padding: 10px 10px 12px;
}

.ec-solution-layer .ec-solution-table.typeBorder tfoot td {
	padding: 10px 10px 12px;
}

.ec-solution-table table {
	position: relative;
	margin: 10px 0 0;
	border: 1px solid #d7d5d5;
	border-top-color: #fff;
	color: #fff;
	line-height: 1.5;
}

.ec-solution-table.gLayoutFixed table {
	table-layout: fixed;
}

.ec-solution-table.gLayoutFixed .gLayoutAuto table {
	table-layout: auto;
}

.ec-solution-table table:before {
	position: absolute;
	top: 1px;
	left: 0;
	display: block;
	content: "";
	width: 100%;
	height: 1px;
	background: #d7d5d5;
}

.ec-solution-table thead th {
	padding: 11px 0 10px;
	border-left: 1px solid #dfdfdf;
	border-bottom: 1px solid #dfdfdf;
	color: #353535;
	vertical-align: middle;
	font-weight: normal;
	background: #fbfafa;
}

.ec-solution-table tbody th {
	padding: 11px 0 10px 18px;
	border: 1px solid #dfdfdf;
	border-bottom-width: 0;
	color: #353535;
	text-align: left;
	font-weight: normal;
	background-color: #fbfafa;
}

.ec-solution-table th:first-child {
	border-left: 0;
}

.ec-solution-table td {
	padding: 11px 10px 10px;
	border-top: 1px solid #dfdfdf;
	color: #353535;
	vertical-align: middle;
}

.ec-solution-table td.clear {
	padding: 0 !important;
	border: 0 !important;
}

.ec-solution-table.typeWrite td {
	padding: 8px 10px 7px;
}

.ec-solution-table.typeList table {
	border-top-color: #d7d5d5;
}

.ec-solution-table.typeList table:before {
	display: none;
}

.ec-solution-table.typeList td {
	padding: 8px 10px 7px;
}

.ec-solution-table.typeList tfoot td {
	padding: 15px 10px 17px;
	background: #fbfafa;
}

.ec-solution-table .message {
	border: 1px solid #d7d5d5;
	padding: 50px 0;
	text-align: center;
	color: #757575;
	font-weight: bold;
}

.ec-solution-table table+.message {
	margin: -1px 0 0;
}

.ec-solution-table table td.message {
	padding: 50px 0;
}

.ec-solution-table .scroll .message {
	border: 0;
}

.ec-solution-table.typeList .head td {
	padding: 11px 0 10px;
	border-left: 1px solid #dfdfdf;
	border-bottom: 1px solid #dfdfdf;
	color: #353535;
	vertical-align: middle;
	text-align: center;
	background: #fbfafa;
}

.ec-solution-table.typeList .head td:first-child {
	border-left: 0;
}

.ec-solution-table.typeList .scroll {
	position: relative;
	overflow-x: hidden;
	overflow-y: scroll;
	max-height: 185px;
	min-height: 100px;
	border: 1px solid #d7d5d5;
	border-top-width: 0;
	margin-top: -1px;
}

.ec-solution-table.typeList .scroll table {
	border: 0;
	margin: 0;
}

.ec-solution-table.typeList .scroll table:before {
	display: none;
}

.ec-solution-table.typeList .scroll .message {
	border: 0;
}

.ec-solution-table thead.blind, .ec-solution-table thead.blind th {
	display: none;
}

.ec-solution-table thead.blind+tbody tr:first-child th,
	.ec-solution-table thead.blind+tbody tr:first-child td {
	border-top-width: 0;
}

.ec-solution-table.typeList.gLine table {
	border-width: 0;
	border-bottom-width: 1px;
}

.ec-solution-table.typeClear table:before {
	display: none;
}

.ec-solution-table.typeClear table, .ec-solution-table.typeClear th,
	.ec-solution-table.typeClear td {
	border: 0 none;
	background: none;
}

.ec-solution-table.typeClear th {
	font-weight: bold;
}

.ec-solution-table.gBorder td {
	border-left: 1px solid #dfdfdf;
}

.ec-solution-table.gBorder td:first-child {
	border-left: 0;
}

.ec-solution-table .left {
	text-align: left;
}

.ec-solution-table .center {
	text-align: center;
}

.ec-solution-table .right {
	text-align: right;
}

.ec-solution-table.typeList .center td, .ec-solution-table.typeList td.center
	{
	padding-left: 0;
	padding-right: 0;
}

.ec-solution-table.typeList .center td.left {
	padding-left: 10px;
}

.ec-solution-table.typeList .center td.right {
	padding-right: 10px;
}

.ec-solution-table .top th, .ec-solution-table th.top,
	.ec-solution-table .top td, .ec-solution-table td.top {
	vertical-align: top;
}

.ec-solution-table .middle th, .ec-solution-table th.middle,
	.ec-solution-table .middle td, .ec-solution-table td.middle {
	vertical-align: middle;
}

.ec-solution-table img {
	vertical-align: middle;
}

@media print {
	.ec-solution-table table:before {
		display: none;
	}
}

.certifyBox {
	width: 100%;
	font-size: 13px;
	font-family: "맑은 고딕", "Malgun Gothic", Dotum, 돋움, arial, verdana,
		sans-serif;
	letter-spacing: -1px;
	border: 1px solid #D6DAE1;
	color: #444B59;
	background-color: #fff;
}

.certifyBox .boxArea {
	position: relative;
}

.certifyBox .progress {
	background-color: #FEEEF0;
}

.certifyBox .direct {
	background-color: #F4F9FF;
}

.certifyBox .icon {
	display: inline-block;
	width: 16px;
	height: 16px;
	position: absolute;
	top: 34px;
	left: 33px;
	transform: translate(0, -50%);
	-webkit-transform: translate(0, -50%);
}

.certifyBox .message {
	display: inline-block;
	padding: 24px 24px 24px 52px;
	line-height: 20px;
}

.certifyBox .message strong {
	font-weight: 700;
	color: #444B59;
}

.certifyBox .btnTxt {
	position: absolute;
	top: 34px;
	right: 48px;
	line-height: 20px;
	height: auto;
	font-size: 13px;
	color: #1B1E26;
	transform: translate(0, -50%);
	-webkit-transform: translate(0, -50%);
}

.certifyBox .btnTxt span {
	display: inline-block;
	position: relative;
	color: #3971FF;
}

.certifyBox .btnTxt span:after {
	content: "";
	position: absolute;
	top: 6px;
	right: -12px;
	display: inline-block;
	width: 7px;
	height: 7px;
	border: 1px solid #3971FF;
	border-left: 0;
	border-bottom: 0;
	transform: rotate(45deg);
	-webkit-transform: rotate(45deg);
}

.certifyBox .icoTarget {
	display: inline-block;
	margin: 0 0 -1px;
	width: 20px;
	height: 20px;
	vertical-align: sub;
	background:
		url("//img.echosting.cafe24.com/ec/dashboard/tutorial/ico_target.svg")
		no-repeat;
}

@media ( max-width : 767px) {
	.certifyBox .btnTxt {
		position: initial;
		display: block;
		padding: 4px 24px 24px 52px;
		transform: none;
	}
	.certifyBox .direct .message {
		padding-bottom: 0;
	}
}

.ec-block-target-content {
	display: none;
}

.ec-block-target-request-btn {
	display: none !important;
}

.ec-unblock-target-request-btn {
	display: none !important;
}

.ec-report-target {
	display: none !important;
}

.mt15 {
	margin-top: 15px;
}

.clear_both {
	clear: both;
}

.space {
	height: 10px;
	clear: both;
}

.space2 {
	height: 5px;
	clear: both;
}

.list_list {
	width: 100%;
	border: 0;
	border-top: 2px solid #cfcfcf;
	margin: 0 0 20px 0;
	padding: 0;
}

.list_list th div {
	white-space: nowrap;
}

.list_list tr.bg0 {
	background: #fff;
}

.list_list tr.bg1 {
	background: #f8f8f8;
}

.list_list th, .list_list td {
	border: 0;
	padding: 5px 10px;
	text-align: left;
	vertical-align: middle;
}

.list_list th {
	background: #f4f4f4;
}

.list_list tbody th {
	border-bottom: 1px solid #e5e5e5;
}

.list_list td {
	border-bottom: 1px solid #f0f0f0;
}

.list_list th.button, .colTable th.button, .crossTable th.button {
	text-align: right;
}

.list_list td.alert, .colTable td.alert, .crossTable td.alert {
	color: red !important;
}

.list_list td.alert a, .colTable td.alert a, .crossTable td.alert a {
	text-decoration: none;
	color: red !important;
}

.tableRow {
	width: 100%;
	border: 0;
	border-top: 2px solid #cfcfcf;
	margin: 0 0 20px 0;
	padding: 0;
}

.tableRow th div {
	white-space: nowrap;
}

.tableRow tr.bg0 {
	background: #fff;
}

.tableRow tr.bg1 {
	background: #f8f8f8;
}

.tableRow th, .tableRow td {
	border: 0;
	padding: 5px 10px;
	vertical-align: middle;
}

.tableRow th {
	background: #f4f4f4;
	text-align: left;
	padding-left: 20px;
}

.tableRow tbody th {
	border-bottom: 1px solid #e5e5e5;
}

.tableRow td {
	border-bottom: 1px solid #f0f0f0;
}

.tableRow th.button, .colTable th.button, .crossTable th.button {
	text-align: right;
}

.tableRow td.alert, .colTable td.alert, .crossTable td.alert {
	color: red !important;
}

.tableRow td.alert a, .colTable td.alert a, .crossTable td.alert a {
	text-decoration: none;
	color: red !important;
}

.board_pagination {
	margin: 0 auto;
	text-align: center;
	margin-top: 15px;
}

.board_comment_list textarea, .board_comment_write textarea {
	width: 90%;
	font-size: 12px;
}

.board_comment_list .comment_lists {
	height: 25px;
	border-bottom: 1px solid #e8e8e8;
	padding-top: 10px;
}

.displaynone {
	display: none;
}

.board_pagination .current {
	color: #CC0000;
	font-weight: bold;
}

.table01 {
	width: 100%;
	border: 0;
	margin: 0;
	padding: 0;
}

.ipInfo {
	text-align: right;
	width: 100%;
}

.board {
	width: 100%;
	max-width: 800px;
	min-height: calc(100vh - 510px);
	margin: 0 auto;
}

.board .pagination {
	display: flex;
	text-align: center;
	justify-content: center;
	align-items: center;
	margin-top: 30px;
}

.board .pagination .page-nav-button {
	font-weight: 700;
	margin: 0 15px;
	opacity: 0.7;
}

@media ( max-width : 600px) {
	.board .pagination {
		font-size: 12px;
	}
	.board .pagination ul li a {
		padding: 5px 3px;
	}
	.board .pagination .page-nav-button {
		margin: 0 5px;
	}
}

.board-header {
	margin-bottom: 30px;
}

.board-header h3 font {
	color: #0e3773 !important;
	text-transform: uppercase;
}

.board-header .board-categories {
	display: none;
}

.board .accordion-content .content-link {
	position: absolute;
	width: 30px;
	height: 100%;
	top: 0;
	right: 0;
}

.board .notice-list .accordion-item:last-child {
	border-bottom: none;
}

.board .notice-list .accordion-item .accordion-header .number {
	display: inline-block;
}

.board-admin-actions {
	margin-top: 60px;
	text-align: center;
}

.post-editor .field-label {
	margin-top: 15px;
	margin-bottom: 5px;
}

.post-editor .subject .select-field {
	width: 140px;
}

.post-editor .subject input[type="text"] {
	width: 100%;
}

.post-editor .subject .select-field+input[type="text"] {
	display: inline-block;
	width: calc(100% - 150px);
	margin-left: 10px;
	padding: 11px;
}

.post-editor .subject .checkbox {
	display: inline-block;
	margin-top: 10px;
	margin-right: 5px;
}

.post-editor .subject .checkbox label {
	line-height: normal;
}

.post-editor .radio-set {
	padding: 15px 0;
}

.post-editor #content_TEXTAREA {
	min-height: 300px;
}

.post-editor .upload-file:after {
	content: '';
	clear: both;
	display: table;
}

.post-editor input[type="file"] {
	border: 1px solid #0e3773;
	color: #0e3773;
	display: block;
	font-family: 'Avenir Next', 'Noto Sans KR', sans-serif;
	margin-bottom: 10px;
	padding: 12px;
	width: 100%;
}

.post-editor .form-action {
	margin-top: 60px;
	text-align: center;
}

.post-header {
	border-top: 1px solid #0e3773;
	border-bottom: 1px solid #0e3773;
	padding: 30px 0;
}

.post-header h3 {
	margin-bottom: 5px;
}

.post-content {
	border-bottom: 1px solid #0e3773;
	padding: 45px 0;
	margin-bottom: 30px;
}

.post-content img {
	width: 100% !important;
	height: auto !important;
}

.post-footer .button {
	font-weight: 700;
	margin-right: 7px;
}

.product-reviews .accordion-list .accordion-item {
	height: 102px;
}

.product-reviews .accordion-list .accordion-item .accordion-header {
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.product-reviews .accordion-list .accordion-item .accordion-header .title
	{
	display: inline-flex;
	align-items: center;
}

.product-reviews .accordion-list .accordion-item .accordion-header .title img
	{
	width: 58px;
	margin-right: 15px;
}

.product-reviews .accordion-list .accordion-item .accordion-header .date
	{
	float: none;
}

.product-reviews .accordion-list .accordion-item .accordion-content {
	padding-top: 22px;
}

.product-reviews .accordion-list .accordion-item .accordion-content .product-link
	{
	display: inline-block;
	margin-top: 10px;
	font-weight: 700;
}

.qna-list {
	border-top: 1px solid #0e3773;
}

.qna-list .list-item {
	border-bottom: 1px solid #0e3773;
	height: 55px;
	overflow: hidden;
	transition: height 0.6s cubic-bezier(0.165, 0.84, 0.44, 1);
}

.qna-list .list-item .post-link {
	cursor: pointer;
	display: block;
	font-size: 14px;
	padding: 15px;
	position: relative;
}

.qna-list .list-item .post-link .number {
	display: inline-block;
	font-weight: 500;
	width: 85px;
}

.qna-list .list-item .post-link .title {
	font-weight: 600;
}

.qna-list .list-item .post-link .date {
	float: right;
	font-weight: 500;
}

.qna-list .list-item .post-link .description {
	display: inline-block;
	font-size: 12px;
	font-weight: 400;
	opacity: 0.8;
}

.qna-list .list-item .accordion-content {
	font-size: 13px;
	opacity: 0;
	padding: 0 22px 22px;
	position: relative;
	transition: opacity 0.3s cubic-bezier(0.165, 0.84, 0.44, 1);
}

.qna-list .list-item .accordion-content * {
	font-family: 'Avenir Next', 'Noto Sans KR', sans-serif !important;
}

.qna-list .list-item .accordion-content img {
	width: 100% !important;
	height: auto !important;
}

.qna-list .list-item.is-active .accordion-content {
	opacity: 1;
}

.qna-notice .list-item:last-child {
	border-bottom: none;
}

.qna-notice .list-item .post-link>* {
	font-weight: 700 !important;
}

@media ( max-width : 900px) {
	.qna-list .list-item {
		height: 55px;
	}
	.qna-list .list-item .post-link {
		padding: 15px 12px;
	}
	.qna-list .list-item .post-link:after {
		right: 12px;
		width: 12px;
		height: 12px;
	}
	.qna-list .list-item .post-link .title {
		font-size: 13px;
	}
	.qna-list .list-item .post-link .number, .qna-list .list-item .post-link .category
		{
		width: auto;
		font-size: 13px;
		margin-right: 5px;
	}
	.qna-list .list-item .post-link .description {
		display: none;
	}
	.qna-list .list-item .accordion-content {
		padding: 0 12px 22px;
	}
}

.confirm-password .form-block .form-label {
	display: block;
	line-height: 30px;
	margin-top: 20px;
}

.confirm-password .primary-button {
	margin-top: 20px;
}

.board-search-form fieldset {
	display: flex;
	flex-wrap: wrap;
	align-items: center;
	justify-content: center;
	text-align: center;
	margin-top: 30px;
}

.board-search-form .select-field+.select-field {
	margin-left: 5px;
}

.board-search-form #search {
	background-color: transparent;
	border: none;
	border-bottom: 1px solid #0e3773;
	display: inline-block;
	font-family: 'Montserrat', 'Noto Sans KR', sans-serif;
	font-size: 14px;
	height: auto;
	padding: 10px 0;
	outline: none;
	margin-left: 10px;
}

.board-search-form .search-button {
	background-image: url('/webapp/images/search-icon.png');
	background-size: 30px;
	background-repeat: no-repeat;
	background-position: center;
	display: inline-block;
	width: 40px;
	height: 40px;
}

@media ( max-width : 600px) {
	.board-search-form {
		border-bottom: 1px solid #0e3773;
	}
	.board-search-form .select-field {
		width: calc(50% - 3px);
		margin-bottom: 15px;
	}
	.board-search-form #search {
		border-bottom: none;
		margin-left: 0;
		width: calc(100% - 40px);
	}
}

@font-face {
	font-family: 'Avenir Next';
	src: url('/_fm/fonts/AvenirNext-Medium.eot');
	src: url('/_fm/fonts/AvenirNext-Medium.eot?#iefix')
		format('embedded-opentype'), url('/_fm/fonts/AvenirNext-Medium.woff')
		format('woff'), url('/_fm/fonts/AvenirNext-Medium.ttf')
		format('truetype'),
		url('/_fm/fonts/AvenirNext-Medium.svg#AvenirNext-Medium')
		format('svg');
	font-style: normal;
	font-weight: 300;
	text-rendering: optimizeLegibility;
}

@font-face {
	font-family: 'Avenir Next';
	src: url('/_fm/fonts/AvenirNext-DemiBold.eot');
	src: url('/_fm/fonts/AvenirNext-DemiBold.eot?#iefix')
		format('embedded-opentype'),
		url('/_fm/fonts/AvenirNext-DemiBold.woff') format('woff'),
		url('/_fm/fonts/AvenirNext-DemiBold.ttf') format('truetype'),
		url('/_fm/fonts/AvenirNext-DemiBold.svg#AvenirNext-DemiBold')
		format('svg');
	font-style: normal;
	font-weight: normal;
	text-rendering: optimizeLegibility;
}

@font-face {
	font-family: 'Avenir Next';
	src: url('/_fm/fonts/AvenirNext-Bold.eot');
	src: url('/_fm/fonts/AvenirNext-Bold.eot?#iefix')
		format('embedded-opentype'), url('/_fm/fonts/AvenirNext-Bold.woff')
		format('woff'), url('/_fm/fonts/AvenirNext-Bold.ttf')
		format('truetype'),
		url('/_fm/fonts/AvenirNext-Bold.svg#AvenirNext-Bold') format('svg');
	font-style: normal;
	font-weight: 700;
	text-rendering: optimizeLegibility;
}

@font-face {
	font-family: 'KoPub Dotum';
	src: url('/_fm/fonts/KoPubDotumPM.eot');
	src: url('/_fm/fonts/KoPubDotumPM.eot?#iefix')
		format('embedded-opentype'), url('/_fm/fonts/KoPubDotumPM.woff')
		format('woff'), url('/_fm/fonts/KoPubDotumPM.ttf') format('truetype'),
		url('/_fm/fonts/KoPubDotumPM.svg#KoPubDotumPM') format('svg');
	font-style: normal;
	font-weight: normal;
	text-rendering: optimizeLegibility;
}

@font-face {
	font-family: 'KoPub Dotum';
	src: url('/_fm/fonts/KoPubDotumPB.eot');
	src: url('/_fm/fonts/KoPubDotumPB.eot?#iefix')
		format('embedded-opentype'), url('/_fm/fonts/KoPubDotumPB.woff')
		format('woff'), url('/_fm/fonts/KoPubDotumPB.ttf') format('truetype'),
		url('/_fm/fonts/KoPubDotumPB.svg#KoPubDotumPB') format('svg');
	font-style: normal;
	font-weight: 700;
	text-rendering: optimizeLegibility;
}

* {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

*:before, *:after {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

::placeholder {
	color: rgba(14, 55, 116, 0.5) !important;
	opacity: 1;
}

:-ms-input-placeholder {
	color: rgba(14, 55, 116, 0.5);
}

::-ms-input-placeholder {
	color: rgba(14, 55, 116, 0.5);
}

html, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre,
	code, form, fieldset, legend, input, textarea, p, blockquote, th, td,
	img {
	margin: 0;
	padding: 0;
}

html, body {
	width: 100%;
	height: 100%;
}

html {
	-ms-text-size-adjust: 100%;
	-webkit-text-size-adjust: 100%;
}

body {
	background-color: #d4ccbb;
	color: #0e3773;
	font-size: 14px;
	font-family: 'Avenir Next', 'KoPub Dotum', sans-serif;
	font-weight: 400;
	font-style: normal;
	line-height: 1.65;
}

h1 {
	font-size: 50px;
}

h3 {
	font-size: 18px;
}

@media ( max-width : 1300px) {
	h1 {
		font-size: 42px;
	}
}

@media ( max-width : 900px) {
	h1 {
		font-size: 36px;
	}
}

@media ( max-width : 600px) {
	body {
		font-size: 13px;
	}
	h1 {
		font-size: 30px;
	}
	h3 {
		font-size: 15px;
	}
}

li {
	list-style: none;
}

img, fieldset {
	border: none;
	vertical-align: top;
}

table {
	width: 100%;
	border: 0;
	border-spacing: 0;
	border-collapse: collapse;
}

caption {
	display: none;
}

th, td {
	border: 0;
	vertical-align: top;
}

button {
	overflow: visible;
	padding: 0;
	margin: 0;
	border: 0;
	cursor: pointer;
}

hr.layout {
	display: none;
}

a {
	color: inherit;
	text-decoration: none;
}

.objHidden {
	visibility: hidden;
	position: absolute;
	left: -1000px;
	top: -1000px;
	height: 0;
	width: 0;
}

#content_CONTAINER table, #bi_inquire_content_CONTAINER table {
	border: 0;
	margin: 0 0 -1px;
}

#content_CONTAINER table:before, #bi_inquire_content_CONTAINER table:before
	{
	display: none;
}

#content_CONTAINER td, #bi_inquire_content_CONTAINER td {
	width: auto !important;
	padding: 0;
}

table.nneditor-table {
	width: auto !important;
}

.primary-button {
	background-color: transparent;
	border: 4px solid #0e3773;
	color: #0e3773;
	cursor: pointer;
	display: inline-flex;
	align-items: center;
	justify-content: center;
	font-weight: 700;
	overflow: hidden;
	padding: 13px 30px;
	position: relative;
	text-align: center;
	transition: border-color 0.45s cubic-bezier(0.785, 0.135, 0.15, 0.86);
}

.primary-button .naver-pay-icon {
	background-image: url('/_fm/images/naver-pay-icon.png');
	background-size: contain;
	display: block;
	width: 50px;
	height: 20px;
}

.field-button {
	background-color: transparent;
	border: 1px solid #0e3773;
	color: #0e3773;
	display: inline-block;
	font-size: 13px;
	padding: 9px 15px;
}

button.field-button {
	padding: 11px 15px;
	position: relative;
	top: 1px;
}

@media ( max-width : 600px) {
	.primary-button {
		border-width: 3px;
		padding: 8px 15px;
	}
}

.form-header {
	text-transform: uppercase;
	text-align: center;
	margin-bottom: 40px;
}

.form-group {
	margin-bottom: 50px;
}

.form-group .form-row {
	margin: 0 -5px;
}

.form-group .form-row:after {
	content: '';
	clear: both;
	display: table;
}

.form-group input[type="text"], .form-group input[type="password"],
	.form-group textarea {
	background-color: transparent;
	border: 1px solid #0e3773;
	border-radius: 0;
	color: #0e3773 !important;
	font-size: 14px;
	font-family: 'Avenir Next', 'KoPub Dotum', sans-serif;
	height: auto;
	line-height: normal;
	padding: 10px;
	margin: 5px 0;
	outline: none;
	width: 270px;
	-webkit-appearance: none;
}

.form-group textarea {
	width: 100%;
}

.form-group label {
	line-height: 44px;
}

.form-group .field-label {
	display: block;
}

.select-field {
	border: 1px solid #0e3773;
	display: inline-block;
	overflow: hidden;
	position: relative;
	vertical-align: middle;
}

.select-field select {
	-webkit-appearance: none;
	background: transparent;
	border: none;
	color: #0e3773;
	outline: none;
	font-size: 14px;
	font-family: 'Avenir Next', 'Noto Sans KR', sans-serif;
	line-height: 20px;
	margin: 0;
	padding: 10px 30px 10px 15px;
	width: 100%;
	height: auto;
}

.select-field::after {
	content: '';
	display: block;
	position: absolute;
	top: 15px;
	right: 10px;
	width: 6px;
	height: 6px;
	border-top: 1px solid #0e3773;
	border-left: 1px solid #0e3773;
	transform: rotate(-135deg);
}

.phone-fieldset {
	display: inline-block;
}

.phone-fieldset .select-field {
	width: 70px;
	margin-right: 3px;
}

.phone-fieldset input[type="text"] {
	width: 90px;
	margin: 5px 3px;
}

#confirm_verify_mobile .verify {
	display: inline-block;
	margin-right: 3px;
	position: relative;
}

#confirm_verify_mobile .verify .time {
	position: absolute;
	top: 15px;
	right: 11px;
	font-size: 13px;
}

.address-fieldset #postcode1 {
	width: 185px;
	margin-right: 3px;
}

.address-fieldset #addr1, .address-fieldset #addr2 {
	width: 100%;
	max-width: 377px;
}

.birthday-fieldset #birth_year {
	width: 85px;
}

.birthday-fieldset #birth_month, .birthday-fieldset #birth_day {
	width: 68px;
	margin-left: 5px;
}

.region-field .select-field {
	width: 85px;
}

.postcode-popup, .postcode-modal {
	display: none;
	position: fixed;
}

.postcode-popup {
	box-shadow: 0 20px 35px rgba(0, 0, 0, 0.15);
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	overflow: hidden;
	-webkit-overflow-scrolling: touch;
	width: 88%;
	max-width: 400px;
	height: 400px;
	z-index: 9999;
}

.postcode-modal {
	background-color: rgba(0, 0, 0, 0.35);
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	z-index: 9998;
}

@media ( max-width : 600px) {
	.form-group input[type="text"], .form-group input[type="password"] {
		width: 100%;
	}
	.form-group label {
		line-height: normal;
	}
	.address-fieldset #postcode1 {
		width: calc(100% - 84px);
	}
	.phone-fieldset input[type="text"] {
		width: calc(50% - 47px);
	}
	.phone-fieldset+.field-button {
		width: 100%;
		margin-top: 5px;
	}
	.birthday-fieldset #birth_year {
		width: 70px;
	}
	.birthday-fieldset #birth_month, .birthday-fieldset #birth_day {
		width: 50px;
	}
}

.payment-loader {
	display: none;
}

.payment-loader .layerProgress {
	background-color: rgba(0, 0, 0, 0.35);
	position: fixed;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	z-index: 9998 !important;
}

.payment-loader .box {
	background-color: #fff;
	box-shadow: 0 20px 35px rgba(0, 0, 0, 0.15);
	font-size: 13px;
	position: fixed;
	top: 50% !important;
	left: 50% !important;
	transform: translate(-50%, -50%);
	width: 80%;
	max-width: 400px;
	z-index: 9999 !important;
}

.payment-loader .box .loader {
	background-color: rgba(217, 188, 186, 0.25);
	border-radius: 3px;
	width: 100%;
	height: 6px;
	overflow: hidden;
	position: relative;
	margin-bottom: 25px;
}

.payment-loader .box .loader span {
	background-color: #a36d6a;
	border-radius: 3px;
	display: block;
	position: absolute;
	top: 0;
	left: -50%;
	width: 50%;
	height: 6px;
	animation: paybar-animation 3s cubic-bezier(0.455, 0.03, 0.515, 0.955)
		infinite;
}

.payment-loader .box {
	height: 180px;
	padding: 50px;
}

.payment-loader .box p {
	color: #a36d6a;
	line-height: 1.65;
	text-align: center;
	margin-top: 3px;
	word-break: keep-all;
}

.payment-loader .box p strong {
	font-size: 15px;
	font-weight: 900;
}

@
keyframes paybar-animation {from { left:-50%;
	
}

to {
	left: 100%;
}

}
.pagination {
	text-align: center;
}

.pagination ul li {
	display: inline-block;
}

.pagination ul li a {
	display: block;
	font-weight: 700;
	opacity: 0.7;
	padding: 5px;
}

.pagination ul li a.this {
	opacity: 1;
}

.displaynone {
	display: none;
}

.dimmed {
	position: fixed;
	top: 0;
	left: 0;
	z-index: 99;
	width: 100%;
	height: 100%;
	background: #fff;
	opacity: 0.8;
}

html.remodal-is-locked {
	overflow: hidden;
	touch-action: none;
}

.remodal-overlay {
	background-color: rgba(0, 0, 0, 0.3);
	display: none;
	position: fixed;
	top: -5000px;
	right: -5000px;
	bottom: -5000px;
	left: -5000px;
	z-index: 999997;
}

.remodal-wrapper {
	position: fixed;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	display: none;
	overflow: auto;
	text-align: center;
	-webkit-overflow-scrolling: touch;
	z-index: 999998;
}

.remodal-wrapper:after {
	content: '';
	display: inline-block;
	height: 100%;
	margin-left: -0.05em;
}

.remodal-overlay, .remodal-wrapper {
	backface-visibility: hidden;
}

.remodal {
	background-color: #e6e5e0;
	display: none;
	outline: none;
	position: relative;
	text-size-adjust: 100%;
	transform: translate3d(0, 0, 0);
	width: 90%;
	max-width: 420px;
	padding: 30px;
}

.remodal, .remodal-wrapper:after {
	vertical-align: middle;
}

.remodal-is-initialized {
	display: inline-block;
}

.remodal-overlay.remodal-is-opening, .remodal-overlay.remodal-is-closing
	{
	animation-duration: 0.3s;
	animation-fill-mode: forwards;
}

.remodal-overlay.remodal-is-opening {
	animation-name: remodal-overlay-opening-keyframes;
}

.remodal-overlay.remodal-is-closing {
	animation-name: remodal-overlay-closing-keyframes;
}

.remodal.remodal-is-opening {
	animation-duration: 0.5s;
	animation-fill-mode: forwards;
}

.remodal.remodal-is-closing {
	animation-duration: 0.3s;
	animation-fill-mode: forwards;
}

.remodal.remodal-is-opening {
	animation-name: remodal-opening-keyframes;
}

.remodal.remodal-is-closing {
	animation-name: remodal-closing-keyframes;
}

.remodal .close-button {
	background-image:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz48c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkxheWVyXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMzAgMzAiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDMwIDMwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+PHN0eWxlIHR5cGU9InRleHQvY3NzIj4uc3Qwe2ZpbGw6bm9uZTtzdHJva2U6IzBFMzc3MztzdHJva2Utd2lkdGg6MS41O3N0cm9rZS1taXRlcmxpbWl0OjEwO308L3N0eWxlPjxsaW5lIGNsYXNzPSJzdDAiIHgxPSI2LjUiIHkxPSI2LjUiIHgyPSIyMy41IiB5Mj0iMjMuNSIvPjxsaW5lIGNsYXNzPSJzdDAiIHgxPSI2LjUiIHkxPSIyMy41IiB4Mj0iMjMuNSIgeTI9IjYuNSIvPjwvc3ZnPg==);
	background-size: 24px 24px;
	background-position: center center;
	background-repeat: no-repeat;
	cursor: pointer;
	display: block;
	position: absolute;
	top: 10px;
	right: 10px;
	width: 30px;
	height: 30px;
}

@
keyframes remodal-opening-keyframes {from { transform:scale(1.02);
	opacity: 0;
}

to {
	transform: none;
	opacity: 1;
	filter: blur(0);
}

}
@
keyframes remodal-closing-keyframes {from { transform:scale(1);
	opacity: 1;
}

to {
	transform: scale(0.95);
	opacity: 0;
	filter: blur(0);
}

}
@
keyframes remodal-overlay-opening-keyframes {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
@
keyframes remodal-overlay-closing-keyframes {from { opacity:1;
	
}

to {
	opacity: 0;
}

}
.slick-slider * {
	outline: none;
}

.slick-slider .slick-dots li button {
	font-family: 'Avenir Next';
}

.accordion-list {
	border-top: 1px solid #0e3773;
}

.accordion-list .accordion-item {
	border-bottom: 1px solid #0e3773;
	height: 55px;
	overflow: hidden;
	transition: height 0.6s cubic-bezier(0.165, 0.84, 0.44, 1);
}

.accordion-list .accordion-item .accordion-header {
	cursor: pointer;
	font-size: 14px;
	padding: 15px;
	position: relative;
}

.accordion-list .accordion-item .accordion-header:after {
	background-image: url(/Team1_project/src/main/webapp/images/toggle-arrow.png);
	background-size: contain;
	content: '';
	width: 14px;
	height: 14px;
	position: absolute;
	top: 50%;
	right: 22px;
	transform: translateY(-50%);
	transition: transform 0.3s ease-out;
}

.accordion-list .accordion-item.is-active .accordion-header:after {
	transform: translateY(-50%) rotateX(180deg);
}

.accordion-list .accordion-item .accordion-header .title {
	display: inline-block;
}

.accordion-list .accordion-item .accordion-header .number {
	display: none;
	font-weight: 500;
	width: 85px;
}

.accordion-list .accordion-item .accordion-header .category.displaynone+.number
	{
	display: inline-block;
}

.accordion-list .accordion-item .accordion-header .category {
	display: inline-block;
	font-weight: 500;
	width: 85px;
}

.accordion-list .accordion-item .accordion-header .date {
	float: right;
	font-weight: 500;
	margin-right: 50px;
}

.accordion-list .accordion-item .accordion-header .description {
	display: inline-block;
	font-size: 12px;
	font-weight: 400;
	opacity: 0.8;
}

.accordion-list .accordion-item .accordion-content {
	font-size: 13px;
	opacity: 0;
	padding: 0 22px 22px;
	position: relative;
	transition: opacity 0.3s cubic-bezier(0.165, 0.84, 0.44, 1);
}

.accordion-list .accordion-item .accordion-content * {
	font-family: 'Avenir Next', 'Noto Sans KR', sans-serif !important;
}

.accordion-list .accordion-item .accordion-content img {
	width: 100% !important;
	height: auto !important;
}

.accordion-list .accordion-item.is-active .accordion-content {
	opacity: 1;
}

@media ( max-width : 900px) {
	.accordion-list .accordion-item {
		height: 55px;
	}
	.accordion-list .accordion-item .accordion-header {
		padding: 15px 12px;
	}
	.accordion-list .accordion-item .accordion-header:after {
		right: 12px;
		width: 12px;
		height: 12px;
	}
	.accordion-list .accordion-item .accordion-header .title {
		font-size: 13px;
	}
	.accordion-list .accordion-item .accordion-header .number,
		.accordion-list .accordion-item .accordion-header .category {
		width: auto;
		font-size: 13px;
		margin-right: 5px;
	}
	.accordion-list .accordion-item .accordion-header .description {
		display: none;
	}
	.accordion-list .accordion-item .accordion-content {
		padding: 0 12px 22px;
	}
}

.container {
	width: 100%;
	max-width: 1710px;
	margin: 0 auto;
	padding-left: 65px;
	padding-right: 65px;
}

@media ( max-width : 1300px) {
	.container {
		padding-left: 50px;
		padding-right: 50px;
	}
}

@media ( max-width : 900px) {
	.container {
		padding-left: 30px;
		padding-right: 30px;
	}
}

@media ( max-width : 600px) {
	.container {
		padding-left: 20px;
		padding-right: 20px;
	}
}

.site-header {
	padding-top: 70px;
	padding-bottom: 50px;
	position: relative;
	width: 100%;
	z-index: 99;
}

.site-header .container {
	display: flex;
	align-items: flex-end;
	justify-content: space-between;
}

.site-logo {
	width: 200px;
	position: relative;
}

.site-logo .logo {
	background-image: url('/Team1_project/src/main/webapp/images/faderoom-logo-apr3.png');
	background-size: contain;
	display: block;
	width: 100%;
	height: 0;
	padding-top: 30%;
	margin-left: -8px;
}

.site-header .user-menu li {
	display: inline-block;
	text-transform: uppercase;
	margin-left: 10px;
}

@media ( min-width : 1200px) {
	.site-nav.fixed {
		position: fixed;
		top: 60px;
	}
}

.site-nav .site-menu {
	margin-bottom: 25px;
}

.site-nav .site-menu .menu-item {
	font-weight: 700;
}

.site-nav .cs-info ul li {
	margin-bottom: 20px;
}

.site-nav .search-bar input[type="text"] {
	background-color: transparent;
	border: none;
	border-bottom: 1px solid #0e3773;
	border-radius: 0;
	box-shadow: none;
	color: #0e3773;
	font-size: 14px;
	font-family: 'Montserrat', 'Noto Sans KR', sans-serif;
	height: auto;
	line-height: normal;
	outline: none;
	padding: 5px 0;
	width: 120px;
	transition: width 0.2s ease-out;
}

.site-nav .search-bar input[type="text"]:focus {
	width: 150px;
}

.site-nav .search-bar input[type="image"] {
	width: 30px;
	height: 30px;
	position: relative;
	top: 2px;
}

@media ( max-width : 1300px) {
	.site-header {
		padding-top: 50px;
		padding-bottom: 50px;
	}
}

@media ( min-width : 901px) {
	.site-nav .user-menu {
		display: none;
	}
}

@media ( max-width : 900px) {
	.site-header {
		padding-top: 30px;
		padding-bottom: 30px;
		position: fixed;
	}
	.site-logo {
		width: 170px;
		position: absolute;
		top: 30px;
		left: 50%;
		transform: translateX(-50%);
	}
	.site-logo .logo {
		margin: 0;
	}
	.site-header .user-menu {
		display: none;
	}
	.site-nav .site-menu {
		margin-bottom: 15px;
	}
	.site-nav .nav-col {
		border-top: 1px solid #0e3773;
		padding: 30px 10px 0;
	}
	.site-nav .col-left {
		width: 60%;
		float: left;
	}
	.site-nav .col-left .site-menu .menu-item {
		font-size: 15px;
		padding: 3px 0;
	}
	.site-nav .col-right {
		width: 40%;
		float: right;
	}
	.site-nav .col-right .site-menu .menu-item {
		font-weight: 600;
		padding: 2px 0;
	}
	.site-nav .cs-info ul li {
		margin-bottom: 10px;
	}
	.site-nav .search-bar {
		padding: 20px 30px;
		position: fixed;
		bottom: 0;
		left: 0;
		width: 100%;
	}
	.site-nav .search-bar fieldset {
		position: relative;
	}
	.site-nav .search-bar input[type="text"] {
		width: 100% !important;
		padding: 10px 5px;
	}
	.site-nav .search-bar input[type="image"] {
		position: absolute;
		top: 4px;
		right: -4px;
	}
}

@media ( max-width : 600px) {
	.site-header {
		padding-top: 20px;
		padding-bottom: 20px;
	}
	.site-logo {
		width: 130px;
		top: 20px;
	}
	.site-nav .search-bar {
		padding: 20px;
	}
}

@media ( max-width : 350px) {
	.site-nav .site-menu {
		margin-bottom: 7px;
	}
	.site-nav .nav-col {
		padding: 20px 10px 0;
	}
	.site-nav .col-left, .site-nav .col-right {
		width: 50%;
	}
	.site-nav .col-left .site-menu .menu-item {
		font-size: 14px;
		padding: 2px 0;
	}
	.site-nav .col-right .site-menu .menu-item {
		font-size: 12px;
		padding: 1px 0;
	}
	.site-nav .cs-info ul li {
		font-size: 12px;
		margin-bottom: 3px;
	}
}

.site-header .hamburger {
	cursor: pointer;
	display: none;
	padding: 5px;
	position: absolute;
	left: 25px;
	top: 40px;
	width: 34px;
	height: 34px;
	z-index: 999;
}

.site-header .patty {
	display: block;
	top: 50%;
	margin-top: -2px;
	transition-duration: 0.075s;
	transition-timing-function: cubic-bezier(0.55, 0.055, 0.675, 0.19);
}

.site-header .patty, .site-header .patty:before, .site-header .patty:after
	{
	background-color: #0e3773;
	width: 24px;
	height: 1.5px;
	position: absolute;
	transition: transform 0.15s ease;
}

.site-header .patty:before, .site-header .patty:after {
	content: "";
	display: block;
}

.site-header .patty:before {
	right: 0;
	top: -7px;
	transition: top 0.075s 0.12s ease, opacity 0.075s ease;
}

.site-header .patty:after {
	bottom: -7px;
	transition: bottom 0.075s 0.12s ease, transform 0.075s
		cubic-bezier(0.55, 0.055, 0.675, 0.19);
}

body.nav-expanded .site-header .hamburger .patty {
	transform: rotate(45deg);
	transition-delay: 0.12s;
	transition-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
}

body.nav-expanded .site-header .hamburger .patty:before {
	top: 0;
	opacity: 0;
	transition: top 0.075s ease, opacity 0.075s 0.12s ease;
}

body.nav-expanded .site-header .hamburger .patty:after {
	bottom: 0;
	transform: rotate(-90deg);
	transition: bottom 0.075s ease, transform 0.075s 0.12s
		cubic-bezier(0.215, 0.61, 0.355, 1);
}

.site-header .mobile-cart {
	background-image:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz48c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkxheWVyXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMzQgMzQiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDM0IDM0OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+PHN0eWxlIHR5cGU9InRleHQvY3NzIj4uc3Qwe2ZpbGw6bm9uZTtzdHJva2U6IzBFMzc3MztzdHJva2Utd2lkdGg6MS41O3N0cm9rZS1taXRlcmxpbWl0OjEwO308L3N0eWxlPjxyZWN0IHg9IjUuOSIgeT0iOC40IiBjbGFzcz0ic3QwIiB3aWR0aD0iMjIuMyIgaGVpZ2h0PSIxOS42Ii8+PHBhdGggY2xhc3M9InN0MCIgZD0iTTEzLjQsNy43YzAtMiwxLjYtMy42LDMuNi0zLjZzMy42LDEuNiwzLjYsMy42Ii8+PC9zdmc+);
	background-size: 30px 30px;
	background-position: center center;
	background-repeat: no-repeat;
	display: none;
	position: absolute;
	right: 25px;
	top: 38px;
	width: 34px;
	height: 34px;
	z-index: 999;
}

.site-header .mobile-cart a {
	display: block;
	width: 34px;
	height: 34px;
}

.site-header .mobile-cart .badge {
	position: absolute;
	top: 11px;
	left: 50%;
	font-size: 10px;
	font-weight: 700;
	transform: translateX(-50%);
}

@media ( max-width : 900px) {
	.site-header .hamburger, .site-header .mobile-cart {
		display: block;
	}
}

@media ( max-width : 600px) {
	.site-header .hamburger {
		top: 25px;
		left: 15px;
	}
	.site-header .mobile-cart {
		top: 23px;
		right: 15px;
	}
}

.site-main .container:after {
	content: '';
	clear: both;
	display: table;
}

.site-main .site-nav {
	float: left;
	width: 300px;
}

.site-main .main {
	float: right;
	width: calc(100% - 300px);
}

@media ( max-width : 900px) {
	.site-main {
		padding-top: 110px;
	}
	.site-main .main {
		float: none;
		width: 100%;
	}
	.site-main .site-nav {
		background-color: rgba(212, 204, 187, 0.95);
		float: none;
		width: 100%;
		height: 100%;
		opacity: 0;
		padding: 110px 30px 0;
		position: fixed;
		top: 0;
		left: 0;
		transform: translateX(-100%);
		transition: opacity 0.4s cubic-bezier(0.645, 0.045, 0.355, 1);
		z-index: 98;
	}
	body.nav-expanded .site-main .site-nav {
		opacity: 1;
		transform: translateX(0);
	}
}

@media ( max-width : 600px) {
	.site-main {
		padding-top: 80px;
	}
	.site-main .site-nav {
		padding: 80px 20px 0;
	}
}

.site-footer {
	font-size: 13px;
	font-weight: 700;
	text-align: center;
	padding: 100px 0 50px;
}

.site-footer ul li {
	margin-bottom: 10px;
}

.site-footer ul li span {
	border-right: 1px solid #0e3773;
	display: inline-block;
	line-height: 0.9;
	padding: 0 6px;
}

.site-footer ul li span:last-child {
	border-right: none;
}

.site-footer ul li.legal-links a {
	display: inline-block;
	line-height: 0.9;
	padding: 0 4px;
}

@media ( max-width : 600px) {
	.site-footer {
		font-size: 12px;
	}
}

@media ( max-width : 600px) {
	.site-footer {
		font-size: 11px;
	}
	.site-footer ul li span {
		padding: 0 4px;
	}
}

.chat-button {
	cursor: pointer;
	display: inline-block;
	background-image: url('/_fm/images/kakaotalk-icon.png');
	background-size: 20px 20px;
	background-position: center center;
	background-repeat: no-repeat;
	border: 3px solid #0e3773;
	border-radius: 50%;
	width: 50px;
	height: 50px;
	position: fixed;
	bottom: 40px;
	right: 40px;
	z-index: 9;
}

@media ( max-width : 600px) {
	.chat-button {
		bottom: 20px;
		right: 20px;
		width: 40px;
		height: 40px;
		background-size: 16px 16px;
		border-width: 2px;
	}
}

.terms {
	width: 100%;
	max-width: 700px;
	margin: 0 auto;
}

.terms-header {
	text-transform: uppercase;
	margin-bottom: 60px;
}

.terms-content {
	font-size: 13px;
	line-height: 1.8;
	text-align: justify;
}

.terms-content p {
	margin-bottom: 15px;
}

.plusapp-modal {
	background-color: #e6e5e0;
	padding-bottom: 85px;
}

.plusapp-modal .app-link {
	position: absolute;
	bottom: 0;
	left: 0;
	width: 100%;
}

.plusapp-modal .app-description {
	color: #000;
	font-weight: 600;
	padding: 20px 0;
}

.plusapp-modal .app-icon {
	background-image: url('/_fm/images/faderoom-app-icon.jpg');
	background-size: contain;
	border-radius: 20px;
	display: inline-block;
	width: 100px;
	height: 100px;
	margin-bottom: 30px;
}

.plusapp-modal .app-link .primary-button {
	background-color: #1a294b;
	border: none;
	color: #e6e5e0;
	font-weight: 700;
	width: 100%;
	padding: 17px;
}

.plusapp-modal .close-app-modal {
	background-image:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz48c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkxheWVyXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMzAgMzAiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDMwIDMwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+PHN0eWxlIHR5cGU9InRleHQvY3NzIj4uc3Qwe2ZpbGw6bm9uZTtzdHJva2U6IzBFMzc3MztzdHJva2Utd2lkdGg6MS41O3N0cm9rZS1taXRlcmxpbWl0OjEwO308L3N0eWxlPjxsaW5lIGNsYXNzPSJzdDAiIHgxPSI2LjUiIHkxPSI2LjUiIHgyPSIyMy41IiB5Mj0iMjMuNSIvPjxsaW5lIGNsYXNzPSJzdDAiIHgxPSI2LjUiIHkxPSIyMy41IiB4Mj0iMjMuNSIgeTI9IjYuNSIvPjwvc3ZnPg==);
	background-size: 24px 24px;
	background-position: center center;
	background-repeat: no-repeat;
	cursor: pointer;
	display: block;
	position: absolute;
	top: 10px;
	right: 10px;
	width: 30px;
	height: 30px;
}

#header {
	position: relative;
	border-bottom: 1px solid #d8d8d8;
}

#header:before {
	position: absolute;
	top: 35px;
	left: 0;
	content: "";
	width: 100%;
	height: 0;
	border-top: 1px solid #d8d8d8;
}

#header:after {
	position: absolute;
	bottom: 45px;
	left: 0;
	content: "";
	width: 100%;
	height: 0;
	border-top: 1px solid #d8d8d8;
}

#header .inner {
	position: relative;
	width: 1218px;
	margin: 0 auto;
	*zoom: 1;
}

#header .inner:after {
	content: "";
	display: block;
	clear: both;
}

#header .topArea {
	height: 112px;
	padding: 83px 0 0;
	text-align: center;
	*zoom: 1;
}

#header .topArea:after {
	content: "";
	display: block;
	clear: both;
}

#header .special {
	float: left;
	border-left: 1px solid #d8d8d8;
}

#header .special li {
	float: left;
}

#header .special a {
	display: block;
	height: 20px;
	padding: 16px 15px 9px;
	border-right: 1px solid #d8d8d8;
	color: #353535;
	text-decoration: none;
}

#header .special a:hover {
	color: #008bcc;
	padding-bottom: 7px;
	border-bottom: 2px solid #008bcc;
}

#header .link {
	position: absolute;
	left: 0;
	top: 0;
	height: 35px;
	line-height: 35px;
}

#header .link>a, #header .link>span {
	float: left;
}

#header .link>a {
	margin: 0 9px 0 0;
	padding: 0 10px 0 0;
	color: #666;
	text-decoration: none;
	background:
		url("//img.echosting.cafe24.com/skin/base/common/ico_bar.gif")
		no-repeat 100% 12px;
}

#header .link>span img {
	vertical-align: middle;
}

#header .link .xans-layout-bookmark span {
	padding-left: 17px;
	background:
		url("//img.echosting.cafe24.com/skin/base/layout/ico_bookmark.png")
		no-repeat 0 1px;
}

#wrap {
	position: relative;
	width: 1460px;
	margin: 27px auto 0;
}

#container {
	width: 1218px;
	margin: 0 auto;
	*zoom: 1;
}

#container:after {
	content: "";
	display: block;
	clear: both;
}

#sidebar {
	float: left;
	width: 180px;
}

#sidebar .banner {
	padding: 0 0 20px;
	border-bottom: 1px solid #e8e8e8;
}

#sidebar .banner p a {
	display: block;
	position: relative;
	height: 20px;
	margin: 0 0 0 10px;
	padding: 10px 0 10px 25px;
	font-size: 13px;
	font-weight: bold;
	line-height: 20px;
}

#sidebar .banner [class*="Banner"]:before {
	position: absolute;
	top: 11px;
	left: 0;
	content: "";
	display: block;
	width: 20px;
	height: 20px;
	background:
		url("//img.echosting.cafe24.com/skin/base/layout/sfix_sidebar_banner.png")
		no-repeat;
}

#sidebar .banner p a.giftBanner:before {
	background-position: 0 0;
}

#sidebar .banner p a.opdiaryBanner:before {
	background-position: -50px 0;
}

#sidebar .banner p a.sosBanner:before {
	background-position: -100px 0;
}

#sidebar .banner p a.attendBanner:before {
	background-position: 0 -50px;
}

#sidebar .banner p a.couponzoneBanner:before {
	background-position: -50px -50px;
}

#sidebar .banner p a.calendarBanner:before {
	background-position: -100px -50px;
}

#sidebar .banner [class*="Banner"]:hover {
	text-decoration: none;
}

#contents {
	float: right;
	width: 1014px;
}

#contents .visual img {
	max-width: 100%;
}

#banner {
	position: absolute;
	top: 0;
	left: 0;
	width: 90px;
}

#quick {
	position: absolute;
	top: 0;
	right: 0;
	width: 90px;
}

#quick .banner a {
	display: block;
	margin: 15px 0 0;
}

#footer {
	position: relative;
	margin: 40px 0 0 0;
	border-top: 1px solid #e8e8e8;
	border-bottom: 45px solid #e8e8e8;
}

#footer:before {
	position: absolute;
	top: 44px;
	left: 0;
	content: "";
	width: 100%;
	height: 0;
	border-bottom: 1px solid #e8e8e8;
}

#footer .inner {
	overflow: hidden;
	position: relative;
	width: 1218px;
	margin: 0 auto -45px;
	*zoom: 1;
}

#footer .inner:after {
	content: "";
	display: block;
	clear: both;
}

#boardArea {
	overflow: hidden;
	margin: 50px 0 0;
	border-top: 1px solid #d8d8d8;
}

#bannerArea {
	margin: 22px 0 0;
}

#bannerArea h2 {
	margin: 0 0 16px;
	font-weight: normal;
	font-size: 20px;
	color: #2e2e2e;
	text-align: center;
}

.path {
	overflow: hidden;
	height: 30px;
	line-height: 30px;
	*zoom: 1;
}

.path span {
	overflow: hidden;
	position: absolute;
	width: 0;
	height: 0;
	white-space: nowrap;
	text-indent: 100%;
}

.path ol {
	float: right;
}

.path li {
	float: left;
	padding: 0 0 0 12px;
	margin: 0 0 0 8px;
	color: #757575;
	background:
		url("//img.echosting.cafe24.com/skin/base/layout/ico_path.gif")
		no-repeat 0 10px;
}

.path li:first-child {
	background: none;
}

.path li a {
	color: #757575;
}

.path li strong, .path li strong a {
	color: #2e2e2e;
}

.titleArea {
	min-height: 30px;
	margin: 10px 0 20px;
	border-bottom: 1px solid #e8e8e8;
}

.titleArea h2 {
	display: inline-block;
	color: #2e2e2e;
	font-size: 16px;
	*display: inline;
}

.titleArea p {
	display: inline-block;
	position: relative;
	margin: 0 0 0 6px;
	padding: 0 0 0 10px;
	color: #939393;
	*display: inline;
}

.titleArea p:before {
	display: inline-block;
	position: absolute;
	top: 0;
	left: 0;
	content: "";
	width: 1px;
	height: 13px;
	border-left: 1px solid #d9d9d9;
}

.titleArea ul {
	padding: 5px 0;
	color: #939393;
	line-height: 18px;
}

.titleArea ul li {
	position: relative;
	padding: 0 0 0 9px;
}

.titleArea ul li:before {
	display: block;
	position: absolute;
	top: 50%;
	left: 0;
	content: "";
	width: 2px;
	height: 2px;
	margin: -2px 0 0 0;
	background: #939393;
}

.boardMain {
	overflow: hidden;
	*zoom: 1;
}

.boardMain td img {
	vertical-align: middle;
	margin: 1px;
}

.boardMain .board {
	position: relative;
	margin: 0 0 65px;
}

.boardMain .leftArea {
	float: left;
	width: 50%;
}

.boardMain .leftArea .board {
	margin: 0 23px 65px 0;
}

.boardMain .rightArea {
	float: right;
	width: 50%;
}

.boardMain .rightArea .board {
	margin: 0 0 65px 23px;
}

.boardMain .board h3 {
	margin: 0 0 13px;
	height: 28px;
	font-size: 16px;
	color: #2e2e2e;
	border-bottom: 2px solid #626672;
}

.boardMain .board .btnLink {
	position: absolute;
	top: 3px;
	right: 0;
}

.boardMain .board .ec-base-table.typeList td {
	color: #a4a4a4;
}

.boardMain .board .ec-base-table.typeList td.title a, .boardMain .board .ec-base-table.typeList td.title a:hover
	{
	color: #4f4f4f;
}

.boardMain .board .galleryList {
	overflow: hidden;
}

.boardMain .board .galleryList ul {
	overflow: hidden;
	margin: 0 -10px;
}

.boardMain .board .galleryList li {
	float: left;
	position: relative;
	width: 20%;
	padding: 0 0 12px 0;
	word-break: break-all;
}

.boardMain .board .galleryList li span {
	display: block;
	margin: 0 10px;
	font-size: 11px;
	color: #a4a4a4;
}

.boardMain .board .galleryList li .imgLink, .boardMain .board .galleryList li .imgLink:hover
	{
	display: block;
	margin: 0 10px 5px;
	font-size: 12px;
}

.boardMain .board .galleryList li .imgLink img {
	width: 100%;
	max-height: 110px;
	border: 1px solid #ededed;
}

#modalBackpanel {
	display: none;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 10000;
	width: 100%;
	height: 100%;
	background: #000;
}

#modalContainer {
	display: none;
	position: absolute;
	top: 100px;
	left: 100px;
	z-index: 10001;
	width: 975px;
	height: 720px;
	border: 1px solid #333;
	background: #fff;
}

#modalContainer #modalContent {
	width: 100%;
	height: 100%;
}

.txtInfo {
	color: #707070;
}

.txtWarn {
	color: #f76560;
}

.txtEm {
	color: #008bcc;
}

.txtDel, .strike, .discount {
	text-decoration: line-through;
	font-weight: normal;
}

.strike strong, .discount strong {
	font-weight: normal;
}

.txtNormal {
	font-weight: normal;
	font-style: normal;
}

.txtNum {
	display: inline-block;
	font-size: 11px;
	color: #939393;
	word-break: normal;
}

.txt11 {
	font-size: 11px;
}

.txt12 {
	font-size: 12px;
}

.txt14 {
	font-size: 14px;
}

.txt16 {
	font-size: 16px;
}

.txt18 {
	font-size: 18px;
	letter-spacing: -1px;
}

.txtIcon {
	font-size: 12px;
	font-style: normal;
}

.txtBreak {
	word-break: break-all;
	word-wrap: break-word;
}

html:lang(ja) .txt11, html:lang(zh) .txt11, html:lang(zh-tw) .txt11 {
	font-size: 12px;
}

.gBlank5 {
	display: block;
	margin-top: 5px;
}

.gBlank10 {
	display: block;
	margin-top: 10px;
}

.gBlank20 {
	display: block;
	margin-top: 20px;
}

.gBlank30 {
	display: block;
	margin-top: 30px;
}

.gIndent10 {
	margin-left: 10px;
}

.gIndent20 {
	margin-left: 20px;
}

.gSpace10 {
	margin-right: 10px;
}

.gSpace20 {
	margin-right: 20px;
}

.gMerge {
	position: relative;
	z-index: 1;
	margin-top: -1px;
}

.ec-base-qty {
	position: relative;
	display: inline-block;
	width: 50px;
	margin: 0 1px 0 0;
	text-align: left;
}

.ec-base-qty input[type="text"] {
	width: 22px;
	height: 23px;
	padding: 0 0 0 5px;
	line-height: 25px;
	border: 1px solid #d4d8d9;
	border-radius: 3px 0 0 3px;
}

.ec-base-qty .up {
	position: absolute;
	left: 27px;
	top: 0;
}

.ec-base-qty .down {
	position: absolute;
	left: 27px;
	bottom: 0;
}

.ec-base-qty .qtyUp {
	position: absolute;
	left: 27px;
	top: 0;
}

.ec-base-qty .qtyDown {
	position: absolute;
	left: 27px;
	bottom: 0;
}

.ec-base-qty .qtyUp .up {
	position: static;
	left: auto;
	top: auto;
}

.ec-base-qty .qtyDown .down {
	position: static;
	left: auto;
	top: auto;
}

.ec-base-chk {
	display: inline-block;
	position: relative;
	margin: 0 8px 0 0;
	width: 22px;
	height: 22px;
	vertical-align: top;
	cursor: pointer;
}

.ec-base-chk input {
	z-index: 1;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	opacity: 0;
	cursor: pointer;
}

.ec-base-chk .checkbox {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background:
		url("//img.echosting.cafe24.com/skin/base/common/bg_join_check.png")
		no-repeat 0 0;
}

.ec-base-chk input:checked+.checkbox {
	background-position: -34px 0;
}

input, select, textarea {
	font-size: 100%;
	font-family: "돋움", Dotum;
	color: #353535;
	vertical-align: middle;
}

input[type=radio], input[type=checkbox] {
	width: 13px;
	height: 13px;
	border: 0;
}

input[type=text], input[type=password] {
	height: 18px;
	line-height: 20px;
	padding: 2px 4px;
	border: 1px solid #d5d5d5;
	color: #353535;
	font-size: 12px;
}

input[type=radio]+label, input[type=checkbox]+label {
	margin: 0 4px 0 2px;
}

select {
	height: 24px;
	border: 1px solid #d5d5d5;
}

textarea {
	padding: 5px 6px;
	border: 1px solid #d5d5d5;
	line-height: 1.5;
}

input:-ms-input-placeholder, textarea:-ms-input-placeholder {
	color: #c1c1c1;
}

input::-webkit-input-placeholder, textarea::-webkit-input-placeholder {
	color: #c1c1c1;
}

input::-moz-placeholder, textarea::-moz-placeholder {
	color: #c1c1c1;
	opacity: 1;
}

legend {
	visibility: hidden;
	position: absolute;
	left: -9999px;
	top: -9999px;
	width: 0;
	height: 0;
	line-height: 0;
}

table tr.radioType input, span.noBorder input {
	border: none !important;
	width: auto !important;
	height: auto !important;
	margin: 0 3px 0 0 !important;
	vertical-align: middle !important;
	background: none !important;
}

.gLabel {
	display: inline-block;
}

.gLabel label {
	margin-right: 20px;
	line-height: 22px;
}

.fWidthFull input[type=text] {
	width: 100%;
	height: 24px;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.fWidthFull textarea {
	width: 100%;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.fWidthFull select {
	width: 100%;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.fList.typeHor .gLabel {
	margin-right: 20px;
}

.fList.typeVer .gLabel {
	display: block;
}

.ec-base-tooltip {
	display: none;
	z-index: 2;
	position: absolute;
	top: 24px;
	padding: 15px;
	border: 1px solid #565960;
	background: #fff;
	-webkit-box-shadow: 3px 3px 3px 0px rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 3px 3px 3px 0px rgba(0, 0, 0, 0.15);
	box-shadow: 3px 3px 3px 0px rgba(0, 0, 0, 0.15);
}

.ec-base-tooltip h3 {
	margin: 0 0 8px;
	padding: 0 10px;
	font-size: 12px;
	border-bottom: 0;
	background:
		url("//img.echosting.cafe24.com/skin/base/common/ico_layer_title.gif")
		no-repeat 0 50%;
}

.ec-base-tooltip h3+p {
	margin: 0 5px 10px;
}

.ec-base-tooltip h4 {
	margin: 15px 10px 8px 5px;
	font-size: 12px;
}

.ec-base-tooltip h4:before {
	display: inline-block;
	content: "";
	margin: 0 5px 0 0;
	width: 3px;
	height: 3px;
	background: #666;
	vertical-align: middle;
}

.ec-base-tooltip .btnClose {
	position: absolute;
	right: 14px;
	top: 14px;
}

.ec-base-tooltip .edge {
	z-index: 20;
	position: absolute;
	left: 50%;
	top: -6px;
	display: block;
	margin: 0 0 0 -5px;
	width: 10px;
	height: 6px;
}

.ec-base-tooltip .edge:before, .ec-base-tooltip .edge:after {
	display: inline-block;
	content: "";
	position: absolute;
	top: 0;
	width: 0;
	height: 0;
	border: solid transparent;
}

.ec-base-tooltip .edge:before {
	margin: 1px 0 0;
	border-bottom-color: #565960;
	border-width: 0 5px 5px 5px;
}

.ec-base-tooltip .edge:after {
	left: 1px;
	margin: 2px 0 0;
	border-bottom-color: #fff;
	border-width: 0 4px 4px 4px;
}

.ec-base-tooltip table th, .ec-base-tooltip table td {
	padding: 8px 10px 7px 10px;
	border: 1px solid #e8e8e8;
	line-height: 1.5em;
}

.ec-base-tooltip table th {
	padding-right: 0;
	background: #fbf9fa;
}

.ec-base-tooltip table thead th {
	text-align: center;
}

.ec-base-tooltip table tbody th {
	text-align: left;
}

.ec-base-tooltip table .left {
	text-align: left;
}

.ec-base-tooltip table .center {
	text-align: center;
}

.ec-base-tooltip table .right {
	text-align: right;
}

.ec-base-tooltip table .info {
	padding: 0;
	color: #757575;
}

.ec-base-tooltip table p.info:before, .ec-base-tooltip table ul.info li:before
	{
	display: inline-block;
	content: "";
	margin: 0 3px 0 0;
	width: 4px;
	height: 1px;
	background: #757575;
	vertical-align: middle;
}

.ec-base-tooltip .info {
	padding: 10px 10px 0;
	margin: 5px 0 0;
}

.ec-base-tooltip p.bullet, .ec-base-tooltip ul.bullet {
	margin: 8px 10px;
}

.ec-base-tooltip p.bullet:before, .ec-base-tooltip ul.bullet li:before {
	display: inline-block;
	content: "";
	margin: -3px 3px 0 0;
	width: 0;
	height: 0;
	border: solid transparent;
	border-left-color: #333;
	border-width: 2px 0 2px 2px;
	vertical-align: middle;
}

.ec-base-tooltip ul.bullet li {
	line-height: 1.5em;
}

.ec-base-tooltip .txtEm {
	color: #008bcc;
}

.ec-base-tooltip .txtWarn {
	color: #f65b54;
}

.ec-base-tooltip.typeUpper {
	top: auto;
	bottom: 34px;
}

.ec-base-tooltip.typeUpper .edge {
	top: auto;
	bottom: -6px;
}

.ec-base-tooltip.typeUpper .edge:before {
	margin: 0 0 -5px;
	border-top-color: #565960;
	border-width: 5px 5px 0 5px;
}

.ec-base-tooltip.typeUpper .edge:after {
	left: 1px;
	margin: 0 0 -4px;
	border-top-color: #fff;
	border-width: 4px 4px 0 4px;
}

span.ec-base-help, p.ec-base-help, ul.ec-base-help li {
	margin: 2px 9px;
	padding: 1px 0 1px 20px;
	line-height: 1.4;
	background:
		url('//img.echosting.cafe24.com/skin/base/common/ico_info.gif')
		no-repeat 0 2px;
}

div.ec-base-help {
	margin: 20px 0;
	border: 1px solid #d6d4d4;
	line-height: 18px;
}

div.ec-base-help>h2, div.ec-base-help>h3 {
	padding: 9px 0 6px 10px;
	border-bottom: 1px solid #e8e7e7;
	color: #101010;
	font-size: 12px;
	background: #fbfbfb;
}

div.ec-base-help .inner {
	padding: 0 9px 12px;
}

div.ec-base-help h4 {
	margin: 22px 0 -4px;
	color: #404040;
	font-size: 12px;
	font-weight: normal;
}

div.ec-base-help h4:first-child {
	margin-top: 13px;
}

div.ec-base-help p {
	margin: 15px 0 0 10px;
	color: #707070;
}

div.ec-base-help ul, div.ec-base-help ol {
	margin: 15px 0 0 11px;
}

div.ec-base-help li {
	color: #707070;
}

div.ec-base-help ol li {
	padding: 0 0 0 25px;
	background:
		url('//img.echosting.cafe24.com/skin/base/common/ico_number.png')
		no-repeat;
}

div.ec-base-help ol .item1 {
	background-position: -484px 0;
}

div.ec-base-help ol .item2 {
	background-position: -434px -100px;
}

div.ec-base-help ol .item3 {
	background-position: -384px -200px;
}

div.ec-base-help ol .item4 {
	background-position: -334px -300px;
}

div.ec-base-help ol .item5 {
	background-position: -284px -400px;
}

div.ec-base-help ol .item6 {
	background-position: -234px -500px;
}

div.ec-base-help ol .item7 {
	background-position: -184px -600px;
}

div.ec-base-help ol .item8 {
	background-position: -134px -700px;
}

div.ec-base-help ol .item9 {
	background-position: -84px -800px;
}

div.ec-base-help ol .item10 {
	background-position: -34px -900px;
}

div.ec-base-help ul li {
	padding: 0 0 0 11px;
	background:
		url('//img.echosting.cafe24.com/skin/base/common/ico_dash.gif')
		no-repeat 0 7px;
}

.ec-base-help.typeDash li {
	padding: 0 0 0 11px;
	background:
		url("//img.echosting.cafe24.com/skin/base/common/ico_dash.gif")
		no-repeat 0 7px;
}

.ec-base-tooltip .ec-base-help.typeDash li {
	margin: 2px 0;
}

.ec-base-product {
	margin: 22px 0 0;
}

.ec-base-product .title {
	margin: 0 0 17px;
}

.ec-base-product .title h2 {
	font-weight: normal;
	font-size: 20px;
	color: #2e2e2e;
	text-align: center;
}

.ec-base-product .title h3 {
	font-weight: normal;
	font-size: 20px;
	color: #2e2e2e;
	text-align: center;
}

.ec-base-product img {
	vertical-align: middle;
}

.ec-base-product a[href^='/product/detail.html']>img {
	border: 1px solid #ececec;
}

.ec-base-product .prdList {
	width: 100%;
	min-width: 756px;
	margin: -20px 0 0;
	font-size: 0;
	line-height: 0;
}

.ec-base-product .prdList>li {
	position: relative;
	display: inline-block;
	margin: 30px 0 20px;
	color: #757575;
	vertical-align: top;
}

.ec-base-product .prdList .chk {
	position: absolute;
	top: -10px;
	left: 0;
	right: 0;
	display: block;
	margin: 0 0 10px;
}

.ec-base-product .prdList .thumbnail {
	position: relative;
	margin: 10px 7px;
	text-align: center;
}

.ec-base-product .prdList .thumbnail .prdImg {
	position: relative;
}

.ec-base-product .prdList .thumbnail a img {
	max-width: 100%;
	box-sizing: border-box;
}

.ec-base-product .prdList .thumbnail .wish {
	position: absolute;
	right: 3px;
	bottom: 4px;
	z-index: 1;
	cursor: pointer;
}

.ec-base-product .prdList .thumbnail .prdIcon {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-repeat: no-repeat;
}

.ec-base-product .prdList .thumbnail .icon {
	margin: 10px 0 0;
	border-bottom: 1px solid #e8e8e8;
	vertical-align: middle;
}

.ec-base-product .prdList .thumbnail .icon:after {
	content: "";
	display: block;
	clear: both;
}

.ec-base-product .prdList .thumbnail .promotion {
	float: left;
	margin: 0 0 4px;
	text-align: left;
}

.ec-base-product .prdList .thumbnail .promotion img {
	margin: 0 4px 0 0;
}

.ec-base-product .prdList .thumbnail .button {
	float: right;
	margin: 0 0 4px;
}

.ec-base-product .prdList .thumbnail .button img {
	margin: 0 2px 0 0;
	cursor: pointer;
}

.ec-base-product .prdList .thumbnail .button .option {
	display: inline;
	position: relative;
}

.ec-base-product .prdList .thumbnail .button .likeButton {
	display: inline-block;
	margin: 0 5px;
}

.ec-base-product .prdList .thumbnail .button .likeButton button {
	font-family: verdana;
	color: #9a9a9a;
	letter-spacing: -1px;
	background: none;
}

.ec-base-product .prdList .thumbnail .button .likeButton button img {
	margin: 0;
	vertical-align: middle;
}

.ec-base-product .prdList .thumbnail .button .likeButton button strong {
	height: 16px;
	vertical-align: middle;
}

.ec-base-product .prdList .thumbnail .button .likeButton.selected button
	{
	color: #353535;
}

.ec-base-product .prdList .description {
	margin: 0 auto;
	padding: 0 7px;
	font-size: 12px;
	line-height: 18px;
	text-align: center;
}

.ec-base-product .prdList .description .name {
	display: block;
	text-align: left;
	font-weight: normal;
}

.ec-base-product .prdList .description .name a {
	color: #2e2e2e;
}

.ec-base-product .prdList .description .mileage {
	display: block;
}

.ec-base-product .prdList .description span.grid {
	display: block;
}

.ec-base-product ul.grid2>li {
	width: 50%;
}

.ec-base-product ul.grid3>li {
	width: 33.33%;
}

.ec-base-product ul.grid4>li {
	width: 25%;
}

.ec-base-product ul.grid5>li {
	width: 20%;
}

.ec-base-product ul.grid3>li .color {
	max-width: 230px;
}

.ec-base-product ul.grid4>li .color {
	max-width: 190px;
}

.ec-base-product ul.grid5>li .color {
	max-width: 130px;
}

.ec-base-product ul.grid2 li:after {
	content: "";
	display: block;
	clear: both;
}

.ec-base-product ul.grid2 li .thumbnail {
	float: left;
	width: 220px;
	text-align: left;
	margin: 0;
}

.ec-base-product ul.grid2 li .description {
	float: left;
	width: 247px;
	padding: 0 20px;
}

.ec-base-product ul.grid2 li .description .chk {
	position: static;
	text-align: left;
}

.ec-base-product .spec {
	margin: 0;
}

.ec-base-product .spec li {
	text-align: left;
}

.ec-base-product .spec li .title {
	font-weight: normal;
	vertical-align: top;
}

.ec-base-product .spec li .title span {
	vertical-align: top;
}

.ec-base-product .spec li .color {
	overflow: hidden;
	display: inline-block;
	margin: 3px 0 0 0;
}

.ec-base-product .spec li .chips {
	float: left;
	width: 10px;
	height: 10px;
	margin: 0 2px 2px 0;
	border: 1px solid #e3e3e3;
	font-size: 0;
	line-height: 0;
}

.ec-base-product .discountPeriod {
	display: inline-block;
	z-index: 10;
	position: relative;
	width: 55px;
	height: 19px;
	vertical-align: middle;
}

.ec-base-product .layerDiscountPeriod {
	left: 50%;
	top: 26px;
	width: 247px;
	margin: 0 0 0 -124px;
}

.ec-base-product .layerDiscountPeriod strong.title {
	display: block;
	margin: 0 0 12px;
	padding: 0 35px 0 0;
	font-weight: bold;
	color: #2e2e2e;
}

.ec-base-product .layerDiscountPeriod .content p {
	margin: 2px 0 0;
	font-size: 11px;
	line-height: 16px;
	color: #757575;
	letter-spacing: -1px;
}

.ec-base-product .layerDiscountPeriod .content p strong {
	font-weight: normal;
	font-size: 12px;
	color: #2e2e2e;
}

.ec-base-product .layerDiscountPeriod .content p strong span {
	font-size: 11px;
}

.ec-base-product .prdList .shippingFee {
	position: relative;
	display: inline-block;
}

.ec-base-product .prdList .shippingFee .button {
	display: inline-block;
	float: none;
}

.ec-base-product .prdList .shippingFee .ec-base-tooltip {
	z-index: 11;
	display: block;
	margin: 0 0 0 -170px;
	width: 360px;
}

.ec-base-product .prdList .shippingFee .ec-base-tooltip table th {
	width: 40px;
}

.ec-base-product .prdList .shippingFee .ec-base-tooltip table th,
	.ec-base-product .prdList .shippingFee .ec-base-tooltip table td {
	padding: 7px 10px 8px 10px;
}

.ec-base-product .btnTooltip {
	position: relative;
	display: inline-block;
}

.differentialShipping {
	display: none;
	overflow: hidden;
	position: absolute;
	left: 50%;
	top: 17px;
	z-index: 100;
	width: 350px;
	margin: 0 0 0 -176px;
}

.differentialShipping h3.title {
	margin: 0;
	height: 35px;
	padding: 0 35px 0 19px;
	border: 0;
	color: #fff;
	font-size: 14px;
	line-height: 35px;
	background: #495164;
}

.differentialShipping .content {
	padding: 12px 18px 14px 18px;
	border: 1px solid #757575;
	border-top: 0;
	text-align: center;
	background: #fff;
}

.differentialShipping .close {
	position: absolute;
	right: 14px;
	top: 12px;
}

.differentialShipping .close img {
	cursor: pointer;
}

.differentialShipping .content ul {
	color: #757575;
	line-height: 25px;
}

.differentialShipping .content li {
	overflow: hidden;
}

.differentialShipping .content li strong {
	float: left;
	font-weight: normal;
}

.differentialShipping .content li span {
	float: right;
	color: #2e2e2e;
}

.differentialShipping .content .info {
	margin: 7px 0 0;
	padding: 7px 0 0;
	border-top: 1px dotted #b0b1b3;
	color: #80aeef;
	text-align: right;
}

.ec-product-bgLT {
	background-position: left top;
}

.ec-product-bgLC {
	background-position: left center;
}

.ec-product-bgLB {
	background-position: left bottom;
}

.ec-product-bgRT {
	background-position: right top;
}

.ec-product-bgRC {
	background-position: right center;
}

.ec-product-bgRB {
	background-position: right bottom;
}

.ec-product-bgCT {
	background-position: center top;
}

.ec-product-bgCC {
	background-position: center center;
}

.ec-product-bgCB {
	background-position: center bottom;
}

.ec-base-tab {
	position: relative;
}

.ec-base-tab .menu {
	margin: 0 0 20px;
	border: 1px solid #cbcdce;
	border-bottom-color: #202020;
	border-left: 0;
	background: #f2f2f2;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
}

.ec-base-tab .menu:after {
	content: "";
	display: block;
	clear: both;
}

.ec-base-tab .menu li {
	float: left;
	border-left: 1px solid #cbcdce;
	background: #f2f2f2;
}

.ec-base-tab .menu li a {
	display: block;
	min-width: 187px;
	margin: 0 0 0 -1px;
	padding: 12px 5px 11px;
	border-right: 1px solid #cbcdce;
	color: #707070;
	text-decoration: none;
	outline: 0;
	text-align: center;
	background: #f2f2f2;
}

.ec-base-tab .menu li:first-child a {
	margin-left: 0;
}

.ec-base-tab .menu li.selected a {
	position: relative;
	top: -1px;
	left: -2px;
	margin: 0 0 -1px;
	border: 1px solid #202020;
	border-bottom: 0;
	color: #fff;
	font-weight: bold;
	background: #4a5164;
}

.ec-base-tab .menu li.selected:first-child a {
	left: -1px;
}

.ec-base-tab>.right {
	position: absolute;
	top: 8px;
	right: 10px;
	line-height: 24px;
	color: #909090;
}

.ec-base-tab.typeLight .menu li.selected a {
	margin: 0 0 -2px;
	border-bottom: 1px solid #fff;
	color: #404040;
	background: #fff;
}

.ec-base-tab[class*="grid"] .menu {
	display: table;
	table-layout: fixed;
	width: 100%;
}

.ec-base-tab[class*="grid"] .menu li {
	float: none;
	display: table-cell;
	vertical-align: middle;
}

.ec-base-tab[class*="grid"] .menu li a {
	display: inline-block;
	width: 100%;
	min-width: 0;
	margin: 0;
	padding: 11px 0;
	border: 0;
}

.ec-base-tab[class*="grid"] .menu li.selected {
	position: relative;
	top: 0;
	right: -1px;
	border: 1px solid #292929;
	border-bottom: 0;
	background: #4a5164;
}

.ec-base-tab[class*="grid"] .menu li:first-child.selected {
	right: 0;
}

.ec-base-tab[class*="grid"] .menu li.selected a {
	position: static;
	background: none;
}

.ec-base-tab.grid2 .menu li {
	width: 50.5%;
}

.ec-base-tab.grid3 .menu li {
	width: 34%;
}

.ec-base-tab.grid4 .menu li {
	width: 25.5%;
}

.ec-base-tab.grid5 .menu li {
	width: 20.5%;
}

.ec-base-tab.grid6 .menu li {
	width: 17%;
}

.ec-base-tab.grid7 .menu li {
	width: 14.8%;
	width: 15% \0/;
}

.ec-base-tab.grid7 .menu li:first-child {
	width: 13% \0/;
}

.ec-base-tab.gFlex .menu {
	display: flex;
	border-right: 0;
}

.ec-base-tab.gFlex .menu:after {
	display: none;
}

.ec-base-tab.gFlex .menu li {
	display: flex;
	align-items: center;
	float: none;
	flex: 1;
	position: relative;
}

.ec-base-tab.gFlex .menu li:last-child {
	border-right: 1px solid #cbcdce;
}

.ec-base-tab.gFlex .menu li a {
	width: 100%;
	min-width: 0;
	border-right: 0;
	background: none;
	word-break: break-all;
}

.ec-base-tab.gFlex .menu li a:after {
	content: '';
	width: 100%;
	height: 100%;
	position: absolute;
	top: 0;
	left: 0;
}

.ec-base-tab.gFlex .menu li.selected {
	border: 1px solid #292929;
	border-bottom: 0;
	background: #4a5164;
}

.ec-base-tab.gFlex .menu li.selected a {
	left: 0;
	margin: 0 0 -1px -1px;
	background: #4a5164;
	border: 0;
	position: initial;
}

[class^='btnNormal'], a[class^='btnNormal'] {
	display: inline-block;
	box-sizing: border-box;
	padding: 2px 8px;
	border: 1px solid #d1d1d1;
	border-radius: 2px;
	font-family: "굴림", Gulim;
	font-size: 12px;
	line-height: 18px;
	font-weight: normal;
	text-decoration: none;
	vertical-align: middle;
	word-spacing: -0.5px;
	letter-spacing: 0;
	text-align: center;
	white-space: nowrap;
	color: #222;
	background-color: #fff;
}

[class^='btnSubmit'], a[class^='btnSubmit'] {
	display: inline-block;
	box-sizing: border-box;
	padding: 2px 8px;
	border: 1px solid transparent;
	border-radius: 2px;
	font-family: "굴림", Gulim;
	font-size: 12px;
	line-height: 18px;
	font-weight: normal;
	text-decoration: none;
	vertical-align: middle;
	word-spacing: -0.5px;
	letter-spacing: 0;
	text-align: center;
	white-space: nowrap;
	color: #fff;
	background-color: #4a5164;
}

[class^='btnEm'], a[class^='btnEm'] {
	display: inline-block;
	box-sizing: border-box;
	padding: 2px 8px;
	border: 1px solid transparent;
	border-radius: 2px;
	font-family: "굴림", Gulim;
	font-size: 12px;
	line-height: 18px;
	font-weight: normal;
	text-decoration: none;
	vertical-align: middle;
	word-spacing: -0.5px;
	letter-spacing: 0;
	text-align: center;
	white-space: nowrap;
	color: #fff;
	background-color: #84868b;
}

[class^='btnBasic'], a[class^='btnBasic'] {
	display: inline-block;
	box-sizing: border-box;
	padding: 2px 8px;
	border: 1px solid #d1d1d1;
	border-radius: 2px;
	font-family: "굴림", Gulim;
	font-size: 12px;
	line-height: 18px;
	font-weight: normal;
	text-decoration: none;
	vertical-align: middle;
	word-spacing: -0.5px;
	letter-spacing: 0;
	text-align: center;
	white-space: nowrap;
	color: #222;
	background-color: #f0f0f0;
}

[class^='btnNormal']:not(.disabled):hover {
	background-color: #f3f3f3;
}

[class^='btnSubmit']:not(.disabled):hover {
	background-color: #43495a;
}

[class^='btnEm']:not(.disabled):hover {
	background-color: #77797d;
}

[class^='btnBasic']:not(.disabled):hover {
	background-color: #e5e5e5;
}

[class^='btnNormal'].disabled {
	border-color: #e3e3e3;
	color: #999;
}

[class^='btnSubmit'].disabled {
	background-color: #9297a2;
	color: #f0f0f0;
}

[class^='btnEm'].disabled {
	background-color: #b5b6b9;
	color: #f0f0f0;
}

[class^='btnBasic'].disabled {
	color: #999;
}

[class^='btn'].sizeS {
	padding: 6px 8px;
}

[class^='btn'].sizeM {
	padding: 10px 16px;
}

[class^='btn'].sizeL {
	padding: 14px 16px;
	min-width: 80px;
	font-weight: bold;
}

[class^='btn'][class*='Fix'] {
	width: 72px;
	word-break: keep-all;
	word-wrap: break-word;
}

[class^='btn'][class*='Fix'].sizeS {
	width: 96px;
}

[class^='btn'][class*='Fix'].sizeM {
	width: 120px;
	padding-left: 8px;
	padding-right: 8px;
}

[class^='btn'][class*='Fix'].sizeL {
	width: 160px;
	padding-left: 8px;
	padding-right: 8px;
}

a.btnLink {
	color: #222;
}

a.btnLink:hover {
	text-decoration: none;
	-webkit-box-shadow: 0 1px 0 0 #222;
	-moz-box-shadow: 0 1px 0 0 #222;
	box-shadow: 0 1px 0 0 #222;
}

a.btnLink:after {
	content: "";
	display: inline-block;
	margin: -2px -2px 0 3px;
	vertical-align: middle;
	border: 0 0 0 10px;
	border-style: solid;
	border-color: transparent transparent transparent #77797d;
}

[class^='btn'] i {
	display: none \0/IE8;
}

[class^='btn'] .icoArrow {
	display: inline-block;
	width: 3px;
	height: 3px;
	margin: -2px 1px 0 1px;
	border: 2px solid #77797d;
	border-width: 0 2px 2px 0;
	vertical-align: middle;
	transform: rotate(-45deg);
	-webkit-transform: rotate(-45deg);
	-moz-transform: rotate(-45deg);
	-ms-transform: rotate(-45deg);
	-o-transform: rotate(-45deg);
}

[class^='btnSubmit'] .icoArrow, [class^='btnEm'] .icoArrow {
	border-color: #f0f0f0;
}

[class^='btn'] .icoDelete {
	position: relative;
	overflow: hidden;
	display: inline-block;
	width: 10px;
	height: 10px;
	margin: -2px 2px 0 0;
	vertical-align: middle;
	-webkit-transform: rotate(45deg);
	transform: rotate(45deg);
}

[class^='btn'] .icoDelete:before {
	content: "";
	position: absolute;
	top: 0;
	right: 4px;
	width: 2px;
	height: 10px;
	background: #77797d;
}

[class^='btn'] .icoDelete:after {
	content: "";
	position: absolute;
	top: 4px;
	right: 0;
	width: 10px;
	height: 2px;
	background: #77797d;
}

[class^='btnSubmit'] .icoDelete:before, [class^='btnSubmit'] .icoDelete:after,
	[class^='btnEm'] .icoDelete:before, [class^='btnEm'] .icoDelete:after {
	background: #f0f0f0;
}

[class^='btn'] .icoAdd, [class^='btn'] .icoRemove {
	position: relative;
	overflow: hidden;
	display: inline-block;
	width: 8px;
	height: 8px;
	margin: -2px 2px 0 0;
	vertical-align: middle;
}

[class^='btn'] .icoAdd:before, [class^='btn'] .icoAdd:after, [class^='btn'] .icoRemove:before
	{
	content: "";
	position: absolute;
	top: 50%;
	left: 50%;
	width: 8px;
	height: 8px;
	border-radius: 2px;
	background: #77797d;
}

[class^='btn'] .icoAdd:before, [class^='btn'] .icoRemove:before {
	height: 2px;
	margin: -1px 0 0 -4px;
}

[class^='btn'] .icoAdd:after {
	width: 2px;
	margin: -4px 0 0 -1px;
}

[class^='btn'] img {
	margin: -2px 1px 0;
	vertical-align: middle;
}

.btnLogin, a.btnLogin {
	display: inline-block;
	box-sizing: border-box;
	width: 100px;
	height: 70px;
	line-height: 70px;
	border-radius: 2px;
	text-align: center;
	font-family: "굴림", Gulim;
	font-size: 12px;
	font-weight: bold;
	text-decoration: none;
	color: #fff;
	background-color: #4a5164;
}

.btnLogin:hover {
	background-color: #43495a;
}

.btnAgree, a.btnAgree {
	display: inline-block;
	box-sizing: border-box;
	width: 80px;
	height: 70px;
	line-height: 70px;
	border: 1px solid #d1d1d1;
	border-radius: 2px;
	text-align: center;
	font-family: "굴림", Gulim;
	font-size: 12px;
	font-weight: bold;
	color: #222;
	text-decoration: none;
	background-color: #fff;
}

.btnAgree:hover {
	background-color: #f3f3f3;
}

.btnToggle {
	display: inline-block;
	font-size: 0;
	line-height: 0;
}

.btnToggle button {
	display: inline-block;
	box-sizing: border-box;
	border: 1px solid #d1d1d1;
	margin: 0 -1px 0 0;
	padding: 0 7px;
	height: 24px;
	line-height: 24px;
	text-align: center;
	font-family: "굴림", Gulim;
	font-size: 12px;
	outline: 0;
	text-decoration: none;
	color: #222;
	background: #fff;
}

.btnToggle button:first-child {
	border-radius: 2px 0 0 2px;
}

.btnToggle button:last-child {
	border-radius: 0 2px 2px 0;
}

.btnToggle button.selected {
	position: relative;
	border: 1px solid #84868b;
	color: #fff;
	background: #84868b;
}

.ec-base-button {
	padding: 10px 0;
	text-align: center;
}

.ec-base-button.justify {
	position: relative;
}

.ec-base-button:after {
	display: block;
	content: "";
	clear: both;
}

.ec-base-button .gLeft {
	float: left;
	text-align: left;
}

.ec-base-button .gRight {
	float: right;
	text-align: right;
}

.ec-base-button.justify .gLeft {
	position: absolute;
	left: 0;
}

.ec-base-button.justify .gRight {
	position: absolute;
	right: 0;
}

.ec-base-button .text {
	margin: 0 6px 0 10px;
	color: #353535;
	line-height: 24px;
}

.ec-base-button.typeBorder {
	margin-top: -1px;
	padding: 10px 20px;
	border: 1px solid #d7d5d5;
}

.ec-base-button.typeBG {
	padding: 10px 20px;
	border: 1px solid #d7d5d5;
	background: #fbfafa;
}

.ec-base-button[class*="gColumn"] {
	margin: 0 auto;
	display: -webkit-flex;
	display: -moz-flex;
	display: -ms-flex;
	display: flex;
	-webkit-justify-content: center;
	-moz-justify-content: center;
	-ms-justify-content: center;
	justify-content: center;
}

.ec-base-button[class*="gColumn"]:after {
	display: none;
}

.ec-base-button[class*="gColumn"] [class^='btn'] {
	margin: 0 2px;
	padding-left: 8px;
	padding-right: 8px;
	word-break: keep-all;
	word-wrap: break-word;
	white-space: normal;
	-webkit-flex: 1;
	-moz-flex: 1;
	-ms-flex: 1;
	flex: 1;
	display: -webkit-flex;
	display: -moz-flex;
	display: -ms-flex;
	display: flex;
	-webkit-align-items: center;
	-moz-align-items: center;
	-ms-align-items: center;
	align-items: center;
	-webkit-justify-content: center;
	-moz-justify-content: center;
	-ms-justify-content: center;
	justify-content: center;
}

.ec-base-button[class*="gColumn"] [class^='btn'][class*='Fix'] {
	-webkit-flex: none;
	-moz-flex: none;
	-ms-flex: none;
	flex: none;
}

.ec-base-button[class*="gColumn"] .gFlex2 {
	-webkit-flex: 2;
	-moz-flex: 2;
	-ms-flex: 2;
	flex: 2;
}

.ec-base-button[class*="gColumn"] .gFlex3 {
	-webkit-flex: 3;
	-moz-flex: 3;
	-ms-flex: 3;
	flex: 3;
}

.ec-base-button[class*="gColumn"] .gFlex4 {
	-webkit-flex: 4;
	-moz-flex: 4;
	-ms-flex: 4;
	flex: 4;
}

.ec-base-box {
	padding: 20px;
	margin-left: auto;
	margin-right: auto;
	border: 5px solid #e8e8e8;
	color: #404040;
}

.ec-base-box.gHalf {
	position: relative;
	padding: 20px 0;
}

.ec-base-box.gHalf:before {
	position: absolute;
	top: 0;
	left: 50%;
	display: block;
	content: "";
	width: 1px;
	height: 100%;
	background-color: #e6e6e6;
}

.ec-base-box.typeBg {
	background-color: #fbfafa;
}

.ec-base-box.typeThin {
	border-width: 1px;
	border-color: #d7d5d5;
}

.ec-base-box.typeThin h3.boxTitle {
	margin: 0 0 20px;
	font-size: 20px;
	text-align: center;
}

.ec-base-box.typeThinBg {
	border-width: 1px;
	border-color: #d7d5d5;
	background-color: #fbfafa;
}

.ec-base-box.center {
	text-align: center;
}

.ec-base-box.typeThinBg>.agree {
	padding: 20px;
	border: 1px solid #e6e6e6;
	background: #fff;
}

.ec-base-box.typeThinBg>.agree p {
	padding: 0 0 17px;
}

.ec-base-box.typeMember {
	padding: 0;
}

.ec-base-box.typeMember .information {
	display: table;
	table-layout: fixed;
	padding: 10px 0;
	width: 100%;
	box-sizing: border-box;
}

.ec-base-box.typeMember .information>.title, .ec-base-box.typeMember .information>.thumbnail
	{
	display: table-cell;
	padding: 0 15px;
	width: 70px;
	text-align: center;
	vertical-align: middle;
}

.ec-base-box.typeMember .information>.title {
	vertical-align: middle;
}

.ec-base-box.typeMember .information>.thumbnail img {
	max-width: 70px;
}

.ec-base-box.typeMember .information .description {
	display: table-cell;
	padding: 0 10px;
	width: auto;
	line-height: 1.5em;
	border-left: 1px solid #e8e8e8;
	vertical-align: middle;
}

.ec-base-box.typeMember.gMessage {
	border-width: 1px;
	border-color: #d7d5d5;
}

.ec-base-box .message {
	display: block;
	padding: 10px 0 10px 35px;
	border-bottom: 1px solid #e8e7e7;
	background: #fbfbfb
		url("//img.echosting.cafe24.com/skin/base/common/ico_info.gif")
		no-repeat 10px center;
}

.ec-base-box.typeProduct {
	display: table;
	table-layout: fixed;
	padding: 15px 0;
	width: 100%;
	box-sizing: border-box;
}

.ec-base-box.typeProduct .thumbnail, .ec-base-box.typeProduct .information
	{
	display: table-cell;
	padding: 0 20px;
	vertical-align: middle;
}

.ec-base-box.typeProduct .thumbnail {
	width: 100px;
}

.ec-base-box.typeProduct .thumbnail img {
	max-width: 90px;
	border: 1px solid #d7d5d5;
}

.ec-base-box.typeProduct .information {
	padding-left: 0;
}

.ec-base-table table {
	position: relative;
	margin: 10px 0 0;
	border: 1px solid #d7d5d5;
	border-top: 0;
	color: #fff;
	line-height: 1.5;
}

.ec-base-table.gLayoutFixed table {
	table-layout: fixed;
}

.ec-base-table.gLayoutFixed .gLayoutAuto table {
	table-layout: auto;
}

.ec-base-table table:before {
	position: absolute;
	top: 0;
	left: 0;
	display: block;
	content: "";
	width: 100%;
	height: 1px;
	background: #d7d5d5;
}

.ec-base-table thead th {
	padding: 11px 0 10px;
	border-left: 1px solid #dfdfdf;
	border-bottom: 1px solid #dfdfdf;
	color: #353535;
	vertical-align: middle;
	font-weight: normal;
	background: #fbfafa;
}

.ec-base-table tbody th {
	padding: 11px 0 10px 18px;
	border: 1px solid #dfdfdf;
	border-bottom-width: 0;
	color: #353535;
	text-align: left;
	font-weight: normal;
	background-color: #fbfafa;
}

.ec-base-table th {
	word-break: break-all;
	word-wrap: break-word;
}

.ec-base-table th:first-child {
	border-left: 0;
}

.ec-base-table td {
	padding: 11px 10px 10px;
	border-top: 1px solid #dfdfdf;
	color: #353535;
	vertical-align: middle;
	word-break: break-all;
	word-wrap: break-word;
}

.ec-base-table td.clear {
	padding: 0 !important;
	border: 0 !important;
}

.ec-base-table.typeWrite td {
	padding: 8px 10px 7px;
}

.ec-base-table.typeWrite img {
	max-width: 100% !important;
	height: auto !important;
}

.ec-base-table.typeList table {
	border-top: 1px solid #d7d5d5;
}

.ec-base-table.typeList table:before {
	display: none;
}

.ec-base-table.typeList td {
	padding: 8px 10px 7px;
}

.ec-base-table.typeList tfoot td {
	padding: 15px 10px 17px;
	background: #fbfafa;
}

.ec-base-table .message {
	border: 1px solid #d7d5d5;
	padding: 50px 0;
	text-align: center;
	color: #757575;
	font-weight: bold;
}

.ec-base-table table+.message {
	margin: -1px 0 0;
}

.ec-base-table table td.message {
	padding: 50px 0;
}

.ec-base-table .scroll .message {
	border: 0;
}

.ec-base-table.typeList .head td {
	padding: 11px 0 10px;
	border-left: 1px solid #dfdfdf;
	border-bottom: 1px solid #dfdfdf;
	color: #353535;
	vertical-align: middle;
	text-align: center;
	background: #fbfafa;
}

.ec-base-table.typeList .head td:first-child {
	border-left: 0;
}

.ec-base-table.typeList .scroll {
	position: relative;
	overflow-x: hidden;
	overflow-y: scroll;
	max-height: 185px;
	min-height: 100px;
	border: 1px solid #d7d5d5;
	border-top-width: 0;
	margin-top: -1px;
}

.ec-base-table.typeList .scroll table {
	border: 0;
	margin: 0;
}

.ec-base-table.typeList .scroll table:before {
	display: none;
}

.ec-base-table.typeList .scroll .message {
	border: 0;
}

.ec-base-table thead.blind, .ec-base-table thead.blind th {
	display: none;
}

.ec-base-table thead.blind+tbody tr:first-child th, .ec-base-table thead.blind+tbody tr:first-child td
	{
	border-top-width: 0;
}

.ec-base-table.typeList.gLine table {
	border-width: 0;
	border-bottom-width: 1px;
}

.ec-base-table.typeClear table:before {
	display: none;
}

.ec-base-table.typeClear table, .ec-base-table.typeClear th,
	.ec-base-table.typeClear td {
	border: 0 none;
	background: none;
}

.ec-base-table.typeClear th {
	font-weight: bold;
}

.ec-base-table.gBorder td {
	border-left: 1px solid #dfdfdf;
}

.ec-base-table.gBorder td:first-child {
	border-left: 0;
}

.ec-base-table.gBorder td.gClearLine {
	border-left: 0;
}

.ec-base-table.typeList.gBorder tbody td {
	border-color: #eee;
}

.ec-base-table .left {
	text-align: left;
}

.ec-base-table .center {
	text-align: center;
}

.ec-base-table .right {
	text-align: right;
}

.ec-base-table.typeList .center td, .ec-base-table.typeList td.center {
	padding-left: 0;
	padding-right: 0;
}

.ec-base-table.typeList .center td.left {
	padding-left: 10px;
}

.ec-base-table.typeList .center td.right {
	padding-right: 10px;
}

.ec-base-table .top th, .ec-base-table th.top, .ec-base-table .top td,
	.ec-base-table td.top {
	vertical-align: top;
}

.ec-base-table .middle th, .ec-base-table th.middle, .ec-base-table .middle td,
	.ec-base-table td.middle {
	vertical-align: middle;
}

.ec-base-table img {
	vertical-align: middle;
}

@media print {
	.ec-base-table table:before {
		display: none;
	}
}

.ec-base-desc {
	overflow: hidden;
	text-align: left;
}

.ec-base-desc:after {
	content: "";
	display: block;
	clear: both;
}

.ec-base-desc dt, .ec-base-desc .term {
	float: left;
	width: 100px;
	margin: 0 0 2px;
	padding: 0 4px 0 0;
	line-height: 22px;
	-webkit-box-sizing: border-box;
	-moz-webkit-box: border-box;
	box-sizing: border-box;
	font-weight: normal;
}

.ec-base-desc dd, .ec-base-desc .desc {
	display: block;
	margin: 0 0 2px;
	padding: 0 5px 0 100px;
	min-height: 22px;
	line-height: 22px;
	word-wrap: break-word;
	word-break: break-all;
}

.ec-base-desc dd:after, .ec-base-desc .desc:after {
	content: "";
	display: block;
	clear: left;
}

.ec-base-desc.gSmall dt, .ec-base-desc.gSmall .term {
	width: 30%;
}

.ec-base-desc.gSmall dd, .ec-base-desc.gSmall .desc {
	padding-left: 30%;
}

.ec-base-desc.gMedium dt, .ec-base-desc.gMedium .term {
	width: 40%;
}

.ec-base-desc.gMedium dd, .ec-base-desc.gMedium .desc {
	padding-left: 40%;
}

.ec-base-desc.gLarge dt, .ec-base-desc.gLarge .term {
	width: 50%;
}

.ec-base-desc.gLarge dd, .ec-base-desc.gLarge .desc {
	padding: 0 0 0 50%;
}

.ec-base-desc.centerDT dt, .ec-base-desc.centerDD dd, .ec-base-desc.centerDT .term,
	.ec-base-desc.centerDD .desc, .ec-base-desc.center, .ec-base-desc .center
	{
	text-align: center;
}

.ec-base-desc.rightDT dt, .ec-base-desc.rightDD dd, .ec-base-desc.rightDT .term,
	.ec-base-desc.rightDD .desc, .ec-base-desc.right, .ec-base-desc .right
	{
	text-align: right;
}

.ec-base-desc.rightDD dd, .ec-base-desc.rightDD .desc {
	padding-right: 0;
	
}

.ec-base-desc.typeBullet dt, .ec-base-desc.typeBullet .term {
	padding: 0 4px 0 10px;
	background:
		url("//img.echosting.cafe24.com/skin/base/common/ico_arrow.png")
		no-repeat 0 7px;
}

.ec-base-desc.typeDot dt, .ec-base-desc.typeDot .term {
	position: relative;
	padding: 0 4px 0 10px;
}

.ec-base-desc.typeDot dt:before, .ec-base-desc.typeDot .term:before {
	position: absolute;
	top: 50%;
	left: 0;
	content: "";
	display: block;
	width: 2px;
	height: 2px;
	margin: -2px 0 0 0;
	background: #383838;
}
</style>
</head>
<body>

	<!DOCTYPE html>
<html xmlns="//www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<script>
	(function(i, s, o, g, r) {
		var a = s.createElement(o);
		var m = s.getElementsByTagName(o)[0];
		a.src = g;
		a.onload = function() {
			if (i[r].init) {
				i[r]
						.init(
								'https://js-error-tracer-api.cafe24.com',
								'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJmYWRlcm9vbS5jYWZlMjQuY29tIiwiYXVkIjoianMtZXJyb3ItdHJhY2VyLWFwaS5jYWZlMjQuY29tIiwibWFsbF9pZCI6ImZhZGVyb29tIiwic2hvcF9ubyI6MSwicGF0aF9yb2xlIjoiQk9BUkRfRlJFRV9MSVNUIiwibGFuZ3VhZ2VfY29kZSI6ImtvX0tSIiwiY291bnRyeV9jb2RlIjoiS1IiLCJvcmlnaW4iOiJodHRwczpcL1wvZmFkZXJvb20uY28ua3IiLCJpc19jb250YWluZXIiOnRydWUsImhvc3RuYW1lIjoiIn0.Nu2voZyZB_GNQDCQZ1PNvFbUlQgnxksPk-W5WVblu4U',
								{
									"errors" : {
										"path" : "\/api\/v1\/store",
										"collectWindowErrors" : true,
										"preventDuplicateReports" : true,
										"storageKeyPrefix" : "EC_JET.BOARD_FREE_LIST",
										"samplingEnabled" : true,
										"samplingRate" : 0.5
									},
									"vitals" : {
										"path" : "\/api\/v1\/vitals",
										"samplingEnabled" : true,
										"samplingRate" : 0.1
									},
									"resources" : {
										"path" : "\/api\/v1\/resources",
										"samplingEnabled" : true,
										"samplingRate" : 0.5,
										"durationThreshold" : 2000
									}
								});
			}
		};
		m.parentNode.insertBefore(a, m);
	}(window, document, 'script', '//optimizer.poxo.com/jet/jet.js', 'EC_JET'));
</script>
<script type="text/javascript">
	window.CAFE24 = window.CAFE24 || {};
	CAFE24.ROUTE = {
		"is_mobile" : false,
		"is_need_route" : false,
		"language_code" : "ZZ",
		"path" : {
			"origin" : "\/board\/faq\/3\/",
			"result" : "\/board\/faq\/3\/",
			"prefix" : ""
		},
		"shop_no" : 0,
		"skin_code" : "default",
		"support_language_list" : {
			"ar" : "ar_EG",
			"ar-EG" : "ar_EG",
			"de" : "de_DE",
			"de-DE" : "de_DE",
			"en" : "en_US",
			"en-IN" : "en_IN",
			"en-PH" : "en_PH",
			"en-US" : "en_US",
			"es" : "es_ES",
			"es-ES" : "es_ES",
			"hi" : "hi_IN",
			"hi-IN" : "hi_IN",
			"id" : "id_ID",
			"id-ID" : "id_ID",
			"it" : "it_IT",
			"it-IT" : "it_IT",
			"ja" : "ja_JP",
			"ja-JP" : "ja_JP",
			"ko" : "ko_KR",
			"ko-KR" : "ko_KR",
			"ms" : "ms_MY",
			"ms-MY" : "ms_MY",
			"pt" : "pt_PT",
			"pt-PT" : "pt_PT",
			"ru" : "ru_RU",
			"ru-RU" : "ru_RU",
			"th" : "th_TH",
			"th-TH" : "th_TH",
			"tr" : "tr_TR",
			"tr-TR" : "tr_TR",
			"vi" : "vi_VN",
			"vi-VN" : "vi_VN",
			"zh" : "zh_CN",
			"zh-CN" : "zh_CN",
			"zh-HK" : "zh_HK",
			"zh-MO" : "zh_MO",
			"zh-SG" : "zh_SG",
			"zh-TW" : "zh_TW"
		}
	};
</script>
</script>
<script type="text/javascript">
	if (typeof EC_ROUTE === "undefined") {
		/**
		 * 프론트용 라우트 플러그인
		 * @type {{bInit: boolean, init: EC_ROUTE.init}}
		 * CAFE24.ROUTE 참조
		 */
		var EC_ROUTE = {
			EC_DOMAIN_PATH_INFO : 'EC_DOMAIN_PATH_INFO',
			bInit : false,
			aFromList : [],
			aToList : [],
			aCleanFilter : null,
			init : function() {
				if (this.bInit || typeof CAFE24.ROUTE === 'undefined') {
					return;
				}
				this.bInit = true;
				this.aCleanFilter = [
						/^shop[1-9][0-9]*$/,
						/^(m|p)$/,
						new RegExp('^('
								+ Object.keys(
										CAFE24.ROUTE.support_language_list)
										.join('|') + ')$'),
						/^skin-(base|skin[1-9][0-9]*|mobile[0-9]*)$/, ];
			},
			isNeedRoute : function() {
				return CAFE24.ROUTE.is_need_route;
			},
			/**
			 *
			 * @param iShopNo
			 * @param bMobile
			 * @param sFrontLanguage
			 * @param sSkinCode
			 * @returns {*|string}
			 */
			getUrlDomain : function(iShopNo, bMobile, sFrontLanguage, sSkinCode) {
				var oRouteConfig = {};
				if (typeof iShopNo == 'undefined') {
					oRouteConfig.shop_no = CAFE24.SDE_SHOP_NUM;
				} else {
					oRouteConfig.shop_no = iShopNo;
				}
				if (typeof bMobile == 'undefined') {
					oRouteConfig.is_mobile = false;
				} else {
					oRouteConfig.is_mobile = bMobile;
				}
				if (typeof sFrontLanguage == 'undefined') {
					oRouteConfig.language_code = '';
				} else {
					oRouteConfig.language_code = sFrontLanguage; // 내부에서 로직으로 동작할땐 언어_지역 형태의 로케일 형태를 따른다.
				}
				if (typeof sSkinCode == 'undefined') {
					oRouteConfig.skin_code = '';
				} else {
					oRouteConfig.skin_code = sSkinCode;
				}

				var sDomain = '';
				if (oRouteConfig.shop_no != CAFE24.SDE_SHOP_NUM) {
					// 접근된 다른 멀티샵 도메인 정보는 primary domain 를 조회해야함으로 ajax 를 통해 정보를 얻는다.
					sDomain = this._getUrlDomainMultishop(oRouteConfig);
				} else {
					// 샵이 동일할 경우에는 접근된 domain 에 path 정보만 정리하여 반환함.
					sDomain = this._getUrlDomain(oRouteConfig);
				}
				return sDomain;
			},
			_getUrlDomainMultishop : function(oRouteConfig) {
				var sDomain = '';
				EC$.ajax({
					type : 'GET',
					url : '/exec/front/Shop/Domain',
					data : {
						'_shop_no' : oRouteConfig.shop_no,
						'is_mobile' : oRouteConfig.is_mobile,
						'language_code' : oRouteConfig.language_code,
						'skin_code' : oRouteConfig.skin_code,
					},
					async : false,
					dataType : 'json',
					cache : true,
					success : function(oResult) {
						switch (oResult.code) {
						case '0000':
							sDomain = oResult.data;
							break;
						default:
							break;
						}
						return false;
					}
				});
				return sDomain;
			},
			_getUrlDomain : function(oRouteConfig) {
				oRouteConfig.domain = this._getCreateHost(oRouteConfig);
				return location.protocol + '//' + oRouteConfig.domain
						+ this._getCreateUri(oRouteConfig);
			},
			_getCreateHost : function(oRouteConfig) {
				var sHost = location.host;
				var aHost = sHost.split('.');
				if (this.isBaseDomain(sHost)) {
					if (aHost.length > 3) {
						aHost[0] = '';
					}
				} else if (oRouteConfig.is_mobile) {
					if (this.isMobileDomain()) {
						oRouteConfig.is_mobile = false;
					}
				}
				return aHost.filter(Boolean).join('.');
			},
			_getCreateUri : function(oRouteInfo) {
				var aUrl = [];
				if (this.isBaseDomain() && oRouteInfo.shop_no > 1) {
					aUrl.push('shop' + oRouteInfo.shop_no);
				}
				if (oRouteInfo.is_mobile) {
					aUrl.push('m');
				}
				if (oRouteInfo.language_code != 'ZZ'
						&& oRouteInfo.language_code != '') {
					var iIndex = Object.values(
							CAFE24.ROUTE.support_language_list).indexOf(
							oRouteInfo.language_code);
					if (iIndex !== -1) {
						aUrl
								.push(Object
										.keys(CAFE24.ROUTE.support_language_list)[iIndex]);
					}
				}
				if (this.isBaseDomain() && oRouteInfo.skin_code != 'default'
						&& oRouteInfo.skin_code != '') {
					aUrl.push('skin-' + oRouteInfo.skin_code);
				}
				var sUrl = '/';
				if (aUrl.length > 0) {
					sUrl = '/' + aUrl.join('/');
					sUrl = this.rtrim(sUrl, '/');
				}
				return sUrl;
			},
			/**
			 * en, en-US => en_US
			 */
			convertValidLanguageCode : function(sUrlLanguageCode) {
				if (typeof CAFE24.ROUTE.support_language_list[sUrlLanguageCode] != 'undefined') {
					return CAFE24.ROUTE.support_language_list[sUrlLanguageCode];
				}
				return false;
			},
			isMobileDomain : function(sHost) {
				if (typeof sHost == 'undefined') {
					sHost = location.host;
				}
				var aMatched = sHost
						.match(/^(m|mobile|skin\-mobile|skin\-mobile[0-9]+[\-]{2}shop[0-9]+|skin\-mobile[0-9]+|mobile[\-]{2}shop[0-9]+)\./i);
				return aMatched != null;
			},
			isBaseDomain : function(sHost) {
				if (typeof sHost == 'undefined') {
					sHost = location.host;
				}
				return sHost.indexOf(CAFE24.GLOBAL_INFO.getRootDomain()) !== -1;
			},
			removePrefixUrl : function(sUrl) {
				if (this.isNeedRoute()) {
					sUrl = sUrl.replace(this.getPrefixUrl('/'), '/'); // 자동으로  prefix 붙은 영역을 제거해준다.
				}
				return sUrl;
			},
			getPrefixUrl : function(sUrl) {
				if (this.isNeedRoute() === false) {
					return sUrl;
				}
				if (sUrl.indexOf('/') !== 0) {
					return sUrl;
				}
				if (sUrl.match(/^\/{2,}/) !== null) {
					return sUrl;
				}

				var iCachedPosition = this.aFromList.indexOf(sUrl);
				if (iCachedPosition > -1) {
					return this.aToList[iCachedPosition];
				}

				var bTailSlash = (sCleanUrl !== '/' && sUrl.substr(-1) === '/');
				var sCleanUrl = this.getCleanUrl(sUrl);
				var aPrefixPart = CAFE24.ROUTE.path.prefix.split('/');
				var aUrlPart = sCleanUrl.split('/');
				var bMatched = true;
				var sReturnUrl = sCleanUrl;
				if (aUrlPart.length < aPrefixPart.length) {
					bMatched = false;
				} else {
					for (var i = 0; i < aPrefixPart.length; i++) {
						if (aPrefixPart[i] != aUrlPart[i]) {
							bMatched = false;
							break;
						}
					}
				}
				if (bMatched === false) {
					if (sCleanUrl == '/') {
						sReturnUrl = CAFE24.ROUTE.path.prefix;
					} else {
						sReturnUrl = CAFE24.ROUTE.path.prefix + sCleanUrl;
					}
					sReturnUrl = bTailSlash ? sReturnUrl : this.rtrim(
							sReturnUrl, '/')
					this.aFromList.push(sUrl);
					this.aToList.push(sReturnUrl);
				}
				return sReturnUrl;
			},
			/**
			 * document.location.pathname 이 필요할 경우 사용한다.
			 * @returns {*}
			 */
			getPathName : function() {
				if (typeof CAFE24.ROUTE.path.result == 'undefined') {
					return document.location.pathname;
				}
				return CAFE24.ROUTE.path.result;
			},
			rtrim : function(str, chr) {
				var rgxtrim = (!chr) ? new RegExp('\\s+$') : new RegExp(chr
						+ '+$');
				return str.replace(rgxtrim, '');
			},
			getShopNo : function() {
				return CAFE24.ROUTE.shop_no;
			},
			getSkinCode : function() {
				return CAFE24.ROUTE.skin_code;
			},
			getLanguageCode : function() {
				return CAFE24.ROUTE.language_code;
			},
			getMobile : function() {
				return CAFE24.ROUTE.is_mobile;
			},
			getIsMobile : function() {
				return CAFE24.ROUTE.is_mobile
						|| CAFE24.ROUTE.skin_code.match(/^mobile[0-9]*$/);
			},
			getCleanUrl : function(sUrl) {
				if (sUrl === '/') {
					return sUrl;
				}

				var aUrl = sUrl.split('/');
				aUrl.shift();

				if (aUrl.length < 1) {
					return sUrl;
				}

				// 현재 4 depth 까지 미리보기 기능이 구현되어있음
				var iPos = 0;
				var bFind = false;
				for (var i = 0; i < aUrl.length; i++) {
					bFind = false;
					for (var iSub = iPos, iSubCount = this.aCleanFilter.length; iSub < iSubCount; iSub++) {
						if (aUrl[i].match(this.aCleanFilter[iSub]) !== null) {
							bFind = true;
							iPos = iSub + 1;
							aUrl.splice(i, 1);
							i--; // aUrl 을 삭제해 주었으니 검색 조건을 -1 제거하여 초기화 한다. 다음 for i++ 로 증감 조회됨.
							break;
						}
					}
					if (bFind === false) {
						break;
					}
				}
				return '/' + aUrl.join('/');
			},
			getIsEasyUrl : function() {
				return !window.location.pathname
						.match(/^[\w\/\-\.]+(php|html|htm)$/i);
			}
		};
		EC_ROUTE.init();
	}
</script>
<meta name="path_role" content="BOARD_FREE_LIST" />
<meta name="author" content="페이드룸" />
<meta name="description" content="FAQ" />
<meta name="keywords" content="FAQ" />
<meta name="design_html_path" content="/board/free/list.html" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<meta http-equiv="Pragma" content="no-cache">
<link rel="icon" type="image/png" href="/_fm/images/icon-32x32.jpg"
	sizes="32x32">
<link rel="icon" type="image/png" href="/_fm/images/icon-96x96.jpg"
	sizes="96x96">
<link rel="icon" type="image/png" href="/_fm/images/icon-196x196.1jpg"
	sizes="196x196">
<link rel="apple-touch-icon" href="/_fm/images/icon-167x167.jpg"
	sizes="167x167">
<link rel="apple-touch-icon" href="/_fm/images/icon-180x180.jpg"
	sizes="180x180">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat:500,700%7CNoto+Sans+KR:400,700&amp;display=swap">
<link rel="stylesheet" href="/_fm/css/slick.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="/_fm/js/slick.min.js"></script>
<script type="text/javascript" src="/_fm/js/remodal.min.js"></script>
<script type="text/javascript" src="/_fm/js/js.cookie.js"></script>
<!-- Cafe24 Defaults -->
<meta name="naver-site-verification"
	content="92c838e20f5ef2838e6ac24800f81df69c7406ad" />
<meta name="google-site-verification"
	content="_mHFUJEBcqqAvJZpWpuiABzS4FSu2txTR8gDuk6WZ5E" />
<!-- Facebook Channel Site Verification -->
<meta name="facebook-domain-verification"
	content="znqr907ss8ccy2i8gmrlfcgrngrp99" />
<!-- Facebook Channel Site Verification -->

<link rel="canonical" href="https://faderoom.co.kr/board/faq/3/" />
<meta property="og:url" content="https://faderoom.co.kr/board/faq/3/" />
<meta property="og:title" content="FAQ - 페이드룸" />
<meta property="og:description" content="FAQ" />
<meta property="og:site_name" content="페이드룸" />
<meta property="og:type" content="article" />
<script type="text/javascript"
	src="/app/Eclog/js/cid.generate.js?vs=93e12acab47e53568a2d8214591c74b9&u=faderoom.1"></script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
	window.CAFE24 = window.CAFE24 || {};
	CAFE24.MANIFEST_CACHE_REVISION = '2402011281';
	CAFE24.getDeprecatedNamespace = function(sDeprecatedNamespace,
			sSupersededNamespace) {
		var sNamespace = sSupersededNamespace ? sSupersededNamespace
				: sDeprecatedNamespace.replace(/^EC_/, '');
		return CAFE24[sNamespace];
	}
	CAFE24.FRONT_LANGUAGE_CODE = "ko_KR";
	CAFE24.MOBILE = false;
	CAFE24.MOBILE_DEVICE = false;
	CAFE24.MOBILE_USE = false;
	var EC_MOBILE = CAFE24.MOBILE;
	var EC_MOBILE_DEVICE = CAFE24.MOBILE_DEVICE;
	var EC_MOBILE_USE = CAFE24.MOBILE_USE;
	CAFE24.SKIN_CODE = "base";
	CAFE24.FRONT_EXTERNAL_SCRIPT_VARIABLE_DATA = {
		"common_member_id_crypt" : ""
	};
	var EC_FRONT_EXTERNAL_SCRIPT_VARIABLE_DATA = CAFE24
			.getDeprecatedNamespace('EC_FRONT_EXTERNAL_SCRIPT_VARIABLE_DATA');
	CAFE24.SDE_SHOP_NUM = 1;
	CAFE24.SHOP = {
		getLanguage : function() {
			return "ko_KR";
		},
		getCurrency : function() {
			return "KRW";
		},
		getFlagCode : function() {
			return "KR";
		},
		getTimezone : function() {
			return "Asia/Seoul"
		},
		getDateFormat : function() {
			return "Y-m-d"
		},
		isMultiShop : function() {
			return false;
		},
		isDefaultShop : function() {
			return true;
		},
		isDefaultLanguageShop : function(sLanguageCode) {
			return SHOP.isDefaultShop() && SHOP.isLanguageShop(sLanguageCode);
		},
		isKR : function() {
			return true;
		},
		isUS : function() {
			return false;
		},
		isJP : function() {
			return false;
		},
		isCN : function() {
			return false;
		},
		isTW : function() {
			return false;
		},
		isES : function() {
			return false;
		},
		isPT : function() {
			return false;
		},
		isVN : function() {
			return false;
		},
		isPH : function() {
			return false;
		},
		getCountryAndLangMap : function() {
			return {
				"KR" : "ko_KR",
				"US" : "en_US",
				"JP" : "ja_JP",
				"CN" : "zh_CN",
				"TW" : "zh_TW",
				"VN" : "vi_VN",
				"PH" : "en_PH"
			}
		},
		isLanguageShop : function(sLanguageCode) {
			return sLanguageCode === "ko_KR";
		},
		getDefaultShopNo : function() {
			return 1;
		},
		getProductVer : function() {
			return 2;
		},
		isSDE : function() {
			return true;
		},
		isMode : function() {
			return false;
		},
		getModeName : function() {
			return false;
		},
		isMobileAdmin : function() {
			return false;
		},
		isNewProMode : function() {
			return true;
		},
		isExperienceMall : function() {
			return false;
		},
		isDcollection : function() {
			return false;
		},
		getAdminID : function() {
			return ''
		},
		getMallID : function() {
			return 'faderoom'
		},
		getCurrencyFormat : function(sPriceTxt, bIsNumberFormat) {
			sPriceTxt = String(sPriceTxt);
			var aCurrencySymbol = [ "", "\uc6d0", false ];
			if (typeof CAFE24.SHOP_PRICE !== 'undefined'
					&& isNaN(sPriceTxt.replace(/[,]/gi, '')) === false
					&& bIsNumberFormat === true) {
				// bIsNumberFormat 사용하려면 Ui(':libUipackCurrency')->plugin('Currency') 화폐 라이브러리 추가 필요
				sPriceTxt = CAFE24.SHOP_PRICE.toShopPrice(sPriceTxt.replace(
						/[,]/gi, ''), true, CAFE24.SDE_SHOP_NUM);
			}
			try {
				var sPlusMinusSign = (sPriceTxt.toString()).substr(0, 1);
				if (sPlusMinusSign === '-' || sPlusMinusSign === '+') {
					sPriceTxt = (sPriceTxt.toString()).substr(1);
					return sPlusMinusSign + aCurrencySymbol[0] + sPriceTxt
							+ aCurrencySymbol[1];
				} else {
					return aCurrencySymbol[0] + sPriceTxt + aCurrencySymbol[1];
				}
			} catch (e) {
				return aCurrencySymbol[0] + sPriceTxt + aCurrencySymbol[1];
			}
		}
	};
	CAFE24.CURRENCY_INFO = {
		getOriginReferenceCurrency : function() {
			return 'USD'
		},
		getCurrencyList : function(sCurrencyCode) {
			var aCurrencyList = {
				"JPY" : {
					"currency_symbol" : "&yen;",
					"decimal_place" : 0,
					"round_method_type" : "F"
				},
				"VND" : {
					"currency_symbol" : "&#8363;",
					"decimal_place" : 0,
					"round_method_type" : "F"
				},
				"PHP" : {
					"currency_symbol" : "&#8369;",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"USD" : {
					"currency_symbol" : "$",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"CNY" : {
					"currency_symbol" : "&yen;",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"TWD" : {
					"currency_symbol" : "NT$",
					"decimal_place" : 0,
					"round_method_type" : "F"
				},
				"EUR" : {
					"currency_symbol" : "\u20ac",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"BRL" : {
					"currency_symbol" : "R$",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"AUD" : {
					"currency_symbol" : "A$",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"BHD" : {
					"currency_symbol" : ".&#1583;.&#1576;",
					"decimal_place" : 3,
					"round_method_type" : "R"
				},
				"BDT" : {
					"currency_symbol" : "&#2547;",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"GBP" : {
					"currency_symbol" : "&pound;",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"CAD" : {
					"currency_symbol" : "C$",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"CZK" : {
					"currency_symbol" : "K&#269;",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"DKK" : {
					"currency_symbol" : "kr",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"HKD" : {
					"currency_symbol" : "HK$",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"HUF" : {
					"currency_symbol" : "Ft",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"INR" : {
					"currency_symbol" : "&#8377;",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"IDR" : {
					"currency_symbol" : "Rp",
					"decimal_place" : 0,
					"round_method_type" : "F"
				},
				"ILS" : {
					"currency_symbol" : "&#8362;",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"JOD" : {
					"currency_symbol" : " &#1583;&#1610;&#1606;&#1575;&#1585;",
					"decimal_place" : 3,
					"round_method_type" : "R"
				},
				"KWD" : {
					"currency_symbol" : "&#1583;&#1610;&#1606;&#1575;&#1585;",
					"decimal_place" : 3,
					"round_method_type" : "R"
				},
				"MYR" : {
					"currency_symbol" : "RM",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"MXN" : {
					"currency_symbol" : "Mex$",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"NZD" : {
					"currency_symbol" : "NZ$",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"NOK" : {
					"currency_symbol" : "kr",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"PKR" : {
					"currency_symbol" : "&#8360;",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"PLN" : {
					"currency_symbol" : "z\u0142",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"RUB" : {
					"currency_symbol" : "\u0440\u0443\u0431",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"SAR" : {
					"currency_symbol" : "&#65020;",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"SGD" : {
					"currency_symbol" : "S$",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"ZAR" : {
					"currency_symbol" : "R",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"SEK" : {
					"currency_symbol" : "kr",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"CHF" : {
					"currency_symbol" : "Fr",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"THB" : {
					"currency_symbol" : "&#3647;",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"TRY" : {
					"currency_symbol" : "TL",
					"decimal_place" : 2,
					"round_method_type" : "R"
				},
				"AED" : {
					"currency_symbol" : "&#1601;&#1604;&#1587;",
					"decimal_place" : 2,
					"round_method_type" : "R"
				}
			};
			return aCurrencyList[sCurrencyCode]
		},
		isUseReferenceCurrency : function() {
			return false
		}
	};
	CAFE24.COMMON_UTIL = {
		convertSslForString : function(sString) {
			return sString.replace(/http:/gi, '');
		},
		convertSslForHtml : function(sHtml) {
			return sHtml
					.replace(
							/((?:src|href)\s*=\s*['"])http:(\/\/(?:[a-z0-9\-_\.]+)\/)/ig,
							'$1$2');
		},
		getProtocol : function() {
			return 'https';
		},
		moveSsl : function() {
			if (CAFE24.COMMON_UTIL.getProtocol() === 'http') {
				var oLocation = jQuery(window.location);
				var sUrl = 'https://' + oLocation.attr('host')
						+ oLocation.attr('pathname') + oLocation.attr('search');
				window.location.replace(sUrl);
			}
		},
		setEcCookie : function(sKey, sValue, iExpire) {
			var exdate = new Date();
			exdate.setDate(exdate.getDate() + iExpire);
			var setValue = escape(sValue) + "; domain=."
					+ CAFE24.GLOBAL_INFO.getBaseDomain() + "; path=/;expires="
					+ exdate.toUTCString();
			document.cookie = sKey + "=" + setValue;
		}
	};
	CAFE24.SHOP_LIB_INFO = {
		getBankInfo : function() {
			var oBankInfo = "";
			$.ajax({
				type : "GET",
				url : "/exec/front/Shop/Bankinfo",
				dataType : "json",
				async : false,
				success : function(oResponse) {
					oBankInfo = oResponse;
				}
			});
			return oBankInfo;
		}
	};
	var EC_SDE_SHOP_NUM = CAFE24.SDE_SHOP_NUM;
	var SHOP = CAFE24.getDeprecatedNamespace('SHOP');
	var EC_COMMON_UTIL = CAFE24.getDeprecatedNamespace('EC_COMMON_UTIL');
	var EC_SHOP_LIB_INFO = CAFE24.getDeprecatedNamespace('EC_SHOP_LIB_INFO');
	var EC_CURRENCY_INFO = CAFE24.getDeprecatedNamespace('EC_CURRENCY_INFO');
	CAFE24.ROOT_DOMAIN = "cafe24.com";
	CAFE24.API_DOMAIN = "cafe24api.com";
	CAFE24.TRANSLATE_LOG_STATUS = "F";
	CAFE24.GLOBAL_INFO = (function() {
		var oData = {
			"base_domain" : "faderoom.cafe24.com",
			"root_domain" : "cafe24.com",
			"api_domain" : "cafe24api.com",
			"is_global" : false,
			"is_global_standard" : false,
			"country_code" : "KR",
			"language_code" : "ko_KR",
			"admin_language_code" : "ko_KR"
		};
		return {
			getBaseDomain : function() {
				return oData['base_domain'];
			},
			getRootDomain : function() {
				return oData['root_domain'];
			},
			getApiDomain : function() {
				return oData['api_domain'];
			},
			isGlobal : function() {
				return oData['is_global'];
			},
			isGlobalStandard : function() {
				return oData['is_global_standard'];
			},
			getCountryCode : function() {
				return oData['country_code'];
			},
			getLanguageCode : function() {
				return oData['language_code'];
			},
			getAdminLanguageCode : function() {
				return oData['admin_language_code'];
			}
		};
	})();
	var EC_ROOT_DOMAIN = CAFE24.ROOT_DOMAIN;
	var EC_API_DOMAIN = CAFE24.API_DOMAIN;
	var EC_TRANSLATE_LOG_STATUS = CAFE24.TRANSLATE_LOG_STATUS;
	var EC_GLOBAL_INFO = CAFE24.getDeprecatedNamespace('EC_GLOBAL_INFO');
	CAFE24.AVAILABLE_LANGUAGE = [ "ko_KR", "zh_CN", "en_US", "zh_TW", "es_ES",
			"pt_PT", "vi_VN", "ja_JP", "en_PH" ];
	CAFE24.AVAILABLE_LANGUAGE_CODES = {
		"ko_KR" : "KOR",
		"zh_CN" : "CHN",
		"en_US" : "ENG",
		"zh_TW" : "TWN",
		"es_ES" : "ESP",
		"pt_PT" : "PRT",
		"vi_VN" : "VNM",
		"ja_JP" : "JPN",
		"en_PH" : "PHL"
	};
	var EC_AVAILABLE_LANGUAGE = CAFE24.AVAILABLE_LANGUAGE;
	var EC_AVAILABLE_LANGUAGE_CODES = CAFE24.AVAILABLE_LANGUAGE_CODES;
	CAFE24.GLOBAL_PRODUCT_LANGUAGE_CODES = {
		sClearanceCategoryCode : '',
		sManualLink : '//support.cafe24.com/hc/ko/articles/7739013909529',
		sHsCodePopupLink : 'https://www.wcotradetools.org/en/harmonized-system',
		aCustomRegex : '"PHL" : "^[0-9]{8}[A-Z]?$"',
		sCountryCodeData : 'kor',
		sEnglishExampleURlForGlobal : '',
		aReverseAddressCountryCode : [ "VNM", "PHL" ],
		aSizeGuideCountryAlign : '["US","UK","EU","KR","JP","CN"]',
		aIsSupportTran : [ "ja_JP", "zh_CN", "zh_TW", "en_US", "vi_VN",
				"en_PH", "pt_PT","es_ES"]
};
var EC_GLOBAL_PRODUCT_LANGUAGE_CODES = CAFE24.getDeprecatedNamespace('EC_GLOBAL_PRODUCT_LANGUAGE_CODES');
CAFE24.GLOBAL_ORDER_LANGUAGE_CODES = {
		aModifyOrderLanguage : {
			"KR" : "ko_KR",
			"JP" : "ja_JP",
			"CN" : "zh_CN",
			"TW" : "zh_TW",
			"VN" : "vi_VN",
			"PH" : "en_PH"
		},
		aUseIdCardKeyCountry : [ "CN", "TW" ],
		aLanguageWithCountryCode : {
			"zh_CN" : [ "CN", "CHN", "HK", "HNK" ],
			"ja_JP" : [ "JP", "JPN" ],
			"zh_TW" : [ "TW", "TWN" ],
			"ko_KR" : [ "KR", "KOR" ],
			"vi_VN" : [ "VN", "VNM" ],
			"en_PH" : [ "PH", "PHL" ]
		},
		aCheckDisplayRequiredIcon : [ "ja_JP", "zh_CN", "zh_TW", "en_US",
				"vi_VN", "en_PH" ],
		aSetReceiverName : {
			"zh_CN" : {
				"sCountry" : "CN",
				"bUseLastName" : true
			},
			"zh_TW" : {
				"sCountry" : "TW",
				"bUseLastName" : false
			},
			"ja_JP" : {
				"sCountry" : "JP",
				"bUseLastName" : true
			}
		},
		aSetDeferPaymethodLanguage : {
			"ja_JP" : "\uc77c\ubcf8",
			"zh_CN" : "\uc911\uad6d"
		},
		aUseDeferPaymethod : [ "ja_JP", "zh_CN" ],
		aCheckShippingCompanyAndPaymethod : [ "ja_JP", "zh_CN" ],
		aSetDeferPaymethodLanguageForShipping : {
			"ja_JP" : "\u65e5\u672c",
			"zh_CN" : "\uc911\uad6d"
		},
		aCheckStoreByPaymethod : [ "ja_JP", "zh_CN" ],
		aCheckIsEmailRequiredForJs : [ "en_US", "zh_CN", "zh_TW", "ja_JP",
				"vi_VN", "en_PH" ],
		aSetIdCardKeyCountryLanguage : {
			"CN" : "\uc911\uad6d\uc758",
			"TW" : "\ub300\ub9cc\uc758"
		},
		aReverseGlobalAddress : [ "en_PH", "vi_VN", "PHL", "VNM", "VN", "PH" ],
		aNoCheckZipCode : [ "KOR", "JPN" ],
		aNotPostCodeAPICountryList : [ "en_US", "es_ES", "pt_PT", "en_PH" ],
		aEnableSearchExchangeAddr : [ "KR", "JP", "CN", "VN", "TW", "PH" ],
		aDuplicatedBaseAddr : [ "TW", "JP" ],
		aReverseAddressCountryCode : [ "VN", "PH" ],
		aCheckZipCode : [ "PHL", "en_PH", "PH" ]
	};
	var EC_GLOBAL_ORDER_LANGUAGE_CODES = CAFE24
			.getDeprecatedNamespace('EC_GLOBAL_ORDER_LANGUAGE_CODES');
	CAFE24.GLOBAL_MEMBER_LANGUAGE_CODES = {
		sAdminWebEditorLanguageCode : 'ko',
		oNotAvailDecimalPointLanguages : [ "ko_KR", "ja_JP", "zh_TW", "vi_VN" ],
		oAddressCountryCode : {
			"KOR" : "ko_KR",
			"JPN" : "ja_JP",
			"CHN" : "zh_CN",
			"TWN" : "zh_TW",
			"VNM" : "vi_VN",
			"PHL" : "en_PH"
		},
	};
	var EC_GLOBAL_MEMBER_LANGUAGE_CODES = CAFE24
			.getDeprecatedNamespace('EC_GLOBAL_MEMBER_LANGUAGE_CODES');
	CAFE24.GLOBAL_BOARD_LANGUAGE_CODES = {
		bUseLegacyBoard : true
};
var EC_GLOBAL_BOARD_LANGUAGE_CODES = CAFE24.getDeprecatedNamespace('EC_GLOBAL_BOARD_LANGUAGE_CODES');
CAFE24.GLOBAL_MALL_LANGUAGE_CODES = {
oDesign: {
			oDesignAddReplaceInfo : {
				"group_id" : "SKIN.ADD.ADMIN.DESIGNDETAIL",
				"replacement" : {
					"KR" : "KOREAN",
					"US" : "ENGLISH",
					"JP" : "JAPANESE",
					"CN" : "SIMPLIFIED.CHINESE",
					"TW" : "TRADITIONAL.CHINESE",
					"ES" : "SPANISH",
					"PT" : "PORTUGUESE",
					"PH" : "ENGLISH"
				}
			},
			oDesignDetailLanguageCountryMap : {
				"KR" : "ko_KR",
				"JP" : "ja_JP",
				"CN" : "zh_CN",
				"TW" : "zh_TW",
				"US" : "en_US",
				"ES" : "es_ES",
				"PT" : "pt_PT",
				"PH" : "en_PH"
			},
			oSmartDesignSwitchTipLink : {
				"edibot" : {
					"img" : "\/\/img.echosting.cafe24.com\/smartAdmin\/img\/design\/img_editor_dnd.png",
					"link" : "\/\/ecsupport.cafe24.com\/board\/free\/list.html?board_act=list&board_no=12&category_no=9&cate_no=9"
				},
				"smart" : {
					"img" : "\/\/img.echosting.cafe24.com\/smartAdmin\/img\/design\/ko_KR\/img_editor_smart.png",
					"link" : "\/\/sdsupport.cafe24.com"
				}
			},
			oSmartDesignDecoShopList : [ "ko_KR", "ja_JP", "zh_CN", "en_US",
					"zh_TW", "es_ES", "pt_PT" ],
			oSmartDesignDecoMultilingual : {
				"list" : {
					"ko_KR" : "KOREAN",
					"en_US" : "ENGLISH",
					"ja_JP" : "JAPANESE",
					"zh_CN" : "SIMPLIFIED.CHINESE",
					"zh_TW" : "TRADITIONAL.CHINESE",
					"es_ES" : "SPANISH",
					"pt_PT" : "PORTUGUESE",
					"vi_VN" : "VIETNAMESE"
				},
				"group_id" : "EDITOR.LAYER.EDITING.DECO"
			},
			aSmartDesignModuleShopList : [ "ko_KR", "ja_JP", "zh_CN", "en_US",
					"zh_TW", "es_ES", "pt_PT" ]
		},
		oStore : {
			oMultiShopCurrencyInfo : {
				"en_US" : {
					"currency" : "USD"
				},
				"zh_CN" : {
					"currency" : "USD",
					"sub_currency" : "CNY"
				},
				"ja_JP" : {
					"currency" : "JPY"
				},
				"zh_TW" : {
					"currency" : "TWD"
				},
				"es_ES" : {
					"currency" : "EUR"
				},
				"pt_PT" : {
					"currency" : "EUR"
				},
				"ko_KR" : {
					"currency" : "KRW"
				},
				"vi_VN" : {
					"currency" : "VND"
				},
				"en_PH" : {
					"currency" : "PHP"
				}
			},
			oBrowserRedirectLanguage : {
				"ko" : {
					"primary" : "ko_KR",
					"secondary" : "en_US"
				},
				"en" : {
					"detail" : {
						"en-ph" : {
							"primary" : "en_PH",
							"secondary" : "en_US"
						},
						"en-us" : {
							"primary" : "en_US",
							"secondary" : "es_ES"
						},
						"default" : {
							"primary" : "en_US",
							"secondary" : "es_ES"
						}
					}
				},
				"ja" : {
					"primary" : "ja_JP",
					"secondary" : "en_US"
				},
				"zh" : {
					"detail" : {
						"zh-cn" : {
							"primary" : "zh_CN",
							"secondary" : "en_US"
						},
						"zh-tw" : {
							"primary" : "zh_TW",
							"secondary" : "zh_CN"
						},
						"default" : {
							"primary" : "en_US",
							"secondary" : "ko_KR"
						}
					}
				},
				"es" : {
					"primary" : "es_ES",
					"secondary" : "en_US"
				},
				"pt" : {
					"primary" : "pt_PT",
					"secondary" : "en_US"
				},
				"vi" : {
					"primary" : "vi_VN",
					"secondary" : "en_US"
				},
				"default" : {
					"primary" : "en_US",
					"secondary" : "ko_KR"
				}
			},
			aChangeableLanguages : [ "en_US", "ja_JP", "ko_KR" ],
			aNoZipCodeLanguage : [ "ko_KR", "ja_JP" ]
		},
		oMobile: {
			sSmartWebAppFaqUrl : "https://support.cafe24.com/hc/ko/articles/8466586607641",
			sAmpFaqUrl : "https://ecsupport.cafe24.com/board/free/read.html?no=1864&board_no=5&category_no=13&cate_no=13&category_no=13&category_no=13",
		},
		oPromotion : {
			bQrCodeAvailable : true,
			bSnsMarketingAvailable : true
		},
		oShippingReverseAddressLanguage : [ "vi_VN", "en_PH" ],
		oGlobalStandardSwitchHelpCodeLink : {
			"SH.DS" : {
				"link" : "\/\/serviceguide.cafe24shop.com\/en_PH\/SH.DS.html"
			},
			"PR.DS" : {
				"link" : "\/\/serviceguide.cafe24shop.com\/en_PH\/PR.DS.html"
			},
			"OR.SM.BO" : {
				"link" : "\/\/serviceguide.cafe24shop.com\/en_PH\/OR.SM.BO.html"
			},
			"DE.DS" : {
				"link" : "\/\/serviceguide.cafe24shop.com\/en_PH\/DE.DS.html"
			},
			"MB.DS" : {
				"link" : "\/\/serviceguide.cafe24shop.com\/en_PH\/MB.DS.html"
			},
			"PM.DS" : {
				"link" : "\/\/serviceguide.cafe24shop.com\/en_PH\/PM.DS.html"
			}
		},
		getAdminMainLocaleLanguage : function(sSkinLocaleCode) {
			var oLocaleData = [];
			var locale = "";
			var shopLangName = "";
			if (sSkinLocaleCode == "US") {
				locale = "en_US";
				shopLangName = "ENGLISH";
			} else if (sSkinLocaleCode == "JP") {
				locale = "ja_JP";
				shopLangName = "JAPANESE";
			} else if (sSkinLocaleCode == "CN") {
				locale = "zh_CN";
				shopLangName = "SIMPLIFIED.CHINESE";
			} else if (sSkinLocaleCode == "TW") {
				locale = "zh_TW";
				shopLangName = "TRADITIONAL.CHINESE";
			} else if (sSkinLocaleCode == "ES") {
				locale = "es_ES";
				shopLangName = "SPANISH";
			} else if (sSkinLocaleCode == "PT") {
				locale = "pt_PT";
				shopLangName = "PORTUGUESE";
			} else if (sSkinLocaleCode == "VN") {
				locale = "vi_VN";
				shopLangName = "VIETNAMESE";
			} else if (sSkinLocaleCode == "PH") {
				locale = "en_PH";
				shopLangName = "ENGLISH.PH";
			}
			oLocaleData["locale"] = locale;
			oLocaleData["shopLangName"] = shopLangName;
			return oLocaleData;
		}
	};
	var EC_GLOBAL_MALL_LANGUAGE_CODES = CAFE24
			.getDeprecatedNamespace('EC_GLOBAL_MALL_LANGUAGE_CODES');
	CAFE24.GLOBAL_DATETIME_INFO = {
		oConstants : {
			"STANDARD_DATE_REGEX" : "\/([12]\\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\\d|3[01]))\/",
			"IN_ZONE" : "inZone",
			"OUT_ZONE" : "outZone",
			"IN_FORMAT" : "inFormat",
			"OUT_FORMAT" : "outFormat",
			"IN_DATE_FORMAT" : "inDateFormat",
			"IN_TIME_FORMAT" : "inTimeFormat",
			"OUT_DATE_FORMAT" : "outDateFormat",
			"OUT_TIME_FORMAT" : "outTimeFormat",
			"IN_FORMAT_DATE_ONLY" : 1,
			"IN_FORMAT_TIME_ONLY" : 2,
			"IN_FORMAT_ALL" : 3,
			"OUT_FORMAT_DATE_ONLY" : 1,
			"OUT_FORMAT_TIME_ONLY" : 2,
			"OUT_FORMAT_ALL" : 3,
			"DATE_ONLY" : "YYYY-MM-DD",
			"TIME_ONLY" : "HH:mm:ss",
			"FULL_TIME" : "YYYY-MM-DD HH:mm:ss",
			"ISO_8601" : "YYYY-MM-DD[T]HH:mm:ssZ",
			"YEAR_ONLY" : "YYYY",
			"MONTH_ONLY" : "MM",
			"DAY_ONLY" : "DD",
			"WEEK_ONLY" : "e",
			"TIME_H_I_ONLY" : "HH:mm",
			"TIME_HOUR_ONLY" : "HH",
			"TIME_MINUTE_ONLY" : "mm",
			"POSTGRE_FULL_TIME" : "YYYY-MM-DD HH24:MI:SS",
			"POSTGRE_TIME_ONLY" : " HH24:MI:SS",
			"MICRO_SECOND_ONLY" : "u",
			"SEOUL" : "Asia\/Seoul",
			"TOKYO" : "Asia\/Tokyo",
			"SHANGHAI" : "Asia\/Shanghai",
			"TAIPEI" : "Asia\/Taipei",
			"HANOI" : "Asia\/Bangkok",
			"LOS_ANGELES" : "America\/Los_Angeles",
			"LISBON" : "Europe\/Lisbon",
			"MADRID" : "Europe\/Madrid",
			"SINGAPORE" : "Asia\/Singapore",
			"UTC" : "Etc\/UTC",
			"MAX_DATETIME" : "9999-12-31 23:59:59"
		},
		oOptions : {
			"inZone" : "Asia\/Seoul",
			"inFormat" : "YYYY-MM-DD HH:mm:ss",
			"inDateFormat" : "YYYY-MM-DD",
			"inTimeFormat" : "HH:mm:ss",
			"outZone" : "Asia\/Seoul",
			"outFormat" : "YYYY-MM-DD HH:mm:ss",
			"outDateFormat" : "YYYY-MM-DD",
			"outTimeFormat" : "HH:mm:ss"
		},
		oPolicies : {
			"shop" : {
				"outZone" : "Asia\/Seoul",
				"outFormat" : "YYYY-MM-DD HH:mm:ss",
				"outDateFormat" : "YYYY-MM-DD",
				"outTimeFormat" : "HH:mm:ss"
			}
		},
		sOverrideTimezone : '',
		sMomentNamespace : 'EC_GLOBAL_MOMENT'
	};
	CAFE24.FRONT_JS_CONFIG_MANAGE = {
		"sSmartBannerScriptUrl" : "https:\/\/app4you.cafe24.com\/SmartBanner\/tunnel\/scriptTags?vs=1563164396689206",
		"sMallId" : "faderoom",
		"sDefaultAppDomain" : "https:\/\/app4you.cafe24.com",
		"sWebLogOffFlag" : "F"
	};
	var EC_FRONT_JS_CONFIG_MANAGE = CAFE24
			.getDeprecatedNamespace('EC_FRONT_JS_CONFIG_MANAGE');
	CAFE24.FRONT_JS_CONFIG_MEMBER = {
		"sAuthUrl" : "https:\/\/i-pin.cafe24.com\/certify\/1.0\/?action=auth"
	};
	var EC_FRONT_JS_CONFIG_MEMBER = CAFE24
			.getDeprecatedNamespace('EC_FRONT_JS_CONFIG_MEMBER');
	typeof window.CAFE24 === "undefined" && (window.CAFE24 = {});
	CAFE24.BOARD = {
		"config_3" : {
			"board_no" : 3,
			"use_block" : "F",
			"use_report" : "F"
		}
	};
	CAFE24.FRONTEND = {
		"FW_MANIFEST_CACHE_REVISION" : 2402011281,
		"IS_WEB_VIEW" : "F"
	};
	CAFE24.ROUTE = {
		"is_mobile" : false,
		"is_need_route" : false,
		"language_code" : "ZZ",
		"path" : {
			"origin" : "\/board\/faq\/3\/",
			"result" : "\/board\/faq\/3\/",
			"prefix" : ""
		},
		"shop_no" : 0,
		"skin_code" : "default",
		"support_language_list" : {
			"ar" : "ar_EG",
			"ar-EG" : "ar_EG",
			"de" : "de_DE",
			"de-DE" : "de_DE",
			"en" : "en_US",
			"en-IN" : "en_IN",
			"en-PH" : "en_PH",
			"en-US" : "en_US",
			"es" : "es_ES",
			"es-ES" : "es_ES",
			"hi" : "hi_IN",
			"hi-IN" : "hi_IN",
			"id" : "id_ID",
			"id-ID" : "id_ID",
			"it" : "it_IT",
			"it-IT" : "it_IT",
			"ja" : "ja_JP",
			"ja-JP" : "ja_JP",
			"ko" : "ko_KR",
			"ko-KR" : "ko_KR",
			"ms" : "ms_MY",
			"ms-MY" : "ms_MY",
			"pt" : "pt_PT",
			"pt-PT" : "pt_PT",
			"ru" : "ru_RU",
			"ru-RU" : "ru_RU",
			"th" : "th_TH",
			"th-TH" : "th_TH",
			"tr" : "tr_TR",
			"tr-TR" : "tr_TR",
			"vi" : "vi_VN",
			"vi-VN" : "vi_VN",
			"zh" : "zh_CN",
			"zh-CN" : "zh_CN",
			"zh-HK" : "zh_HK",
			"zh-MO" : "zh_MO",
			"zh-SG" : "zh_SG",
			"zh-TW" : "zh_TW"
		}
	};
</script>
<link rel="stylesheet" type="text/css"
	href="//img.echosting.cafe24.com/editors/froala/css/froala_style_ec.min.css?vs=2402011281"
	charset="utf-8" />

<link rel="stylesheet" type="text/css"
	href="/ind-script/optimizer.php?filename=nZExDgIxDAT7KC3vsOAJPIEfOMFwJxJv5DgS_J6jggYJ0o52doulBVVofzBqhqtxJZOOYVko904Xgzpl1AqNG9jRL3nJoaMMX6Eh4T4pDvfZ0cIPsTnVORWZVNFCWVVCYtWv-9waHcF2ptNn3YZjeuGYCvJtVjZpMP_Pft_7BA&type=css&k=ecd691e0c80070ef935d0e961272742f67437a3c&t=1706863992" />
<link rel="stylesheet" type="text/css"
	href="/ind-script/optimizer_user.php?filename=tdBBDgMhCAXQ_dhtz8GZFJlqgoMRTNrbV9MbdHT3CfAWH5IUAkLXlZrC6SM1kQK1B87okhUGjeQiaX5dELwSuLMAqkIQ3-JjpCfcUcZwG2H_kW5_M7_3mTNu8QiPuTh6Xm-aCFuu6-FEvEGtTWLHDd2aD-vR0M3k2uDKe0sDTOvZcYRT_QI&type=css&k=24b810abbe7be5cf148dc3d6751201b71f4a6e8f&t=1633578614&user=T" />

<title>FAQ - 페이드룸</title>
</head>
<body>
	<div class="site-header">
		<div class="container">
			<div class="site-logo">
				<a href="/" class="logo"></a>
			</div>
			<ul
				class="xans-element- xans-layout xans-layout-statelogoff user-menu ">
				<li class="menu-item"><a href="/member/login.html">Login</a></li>
				<li class="menu-item"><a
					href="/member/login.html?noMemberOrder&amp;returnUrl=%2Fmyshop%2Forder%2Flist.html">Mypage</a></li>
				<li class="menu-item menu--cart"><a href="/order/basket.html">Cart<span
						class="badge displaynone">()</span></a></li>
			</ul>
			<div class="hamburger" role="button" aria-expanded="false">
				<span class="patty"></span>
			</div>
			<div class="mobile-cart">
				<a href="/order/basket.html"><span class="badge"></span></a>
			</div>
		</div>
	</div>

	<div class="site-main">
		<div class="container">

			<div class="site-nav sidebar">
				<div class="nav-col col-left">
					<div class="site-menu">
						<ul>
							<li class="menu-item"><a href="/about/">About us</a></li>
						</ul>
					</div>
					<div
						class="xans-element- xans-layout xans-layout-category site-menu">
						<ul>
							<li class="menu-item xans-record-"><a
								href="/category/best-100/91/">BEST 100</a></li>
							<li class="menu-item xans-record-"><a
								href="/category/all-in-one/77/">All-in-one</a></li>
							<li class="menu-item xans-record-"><a
								href="/category/outer/24/">Outer</a></li>
							<li class="menu-item xans-record-"><a
								href="/category/topshort-sleeve/85/">Top(short sleeve)</a></li>
							<li class="menu-item xans-record-"><a
								href="/category/toplong-sleeve/25/">Top(long sleeve)</a></li>
							<li class="menu-item xans-record-"><a
								href="/category/bottoms/26/">Bottoms</a></li>
							<li class="menu-item xans-record-"><a
								href="/category/bags/27/">Bags</a></li>
							<li class="menu-item xans-record-"><a
								href="/category/accessories/28/">Accessories</a></li>
							<li class="menu-item xans-record-"><a
								href="/category/shoes/55/">Shoes</a></li>
							<li class="menu-item xans-record-"><a
								href="/category/women-only/58/">Women only</a></li>
						</ul>
					</div>
				</div>
				<div class="nav-col col-right">
					<div class="site-menu">
						<ul
							class="xans-element- xans-layout xans-layout-statelogoff user-menu ">
							<li class="menu-item"><a href="/member/login.html">Login</a></li>
							<li class="menu-item"><a
								href="/member/login.html?noMemberOrder&amp;returnUrl=%2Fmyshop%2Forder%2Flist.html">Mypage</a></li>
						</ul>
					</div>
					<div class="site-menu">
						<ul>
							<li class="menu-item"><a
								href="https://www.youtube.com/channel/UCNzODSZC2sraPyh4lDMQhpQ?view_as=subscriber"
								target="_blank">YouTube</a></li>
							<li class="menu-item"><a
								href="https://www.instagram.com/faderoom_official/"
								target="_blank">Instagram</a></li>
						</ul>
					</div>
					<div class="site-menu">
						<ul>
							<li class="menu-item"><a href="/board/notice/1/">Notice</a></li>
							<li class="menu-item"><a href="/board/review/4/">Review</a></li>
							<li class="menu-item"><a
								href="/board/free/qna.html?board_no=5">Q&amp;A</a></li>
							<li class="menu-item"><a href="/board/faq/3/">FAQ</a></li>
						</ul>
					</div>
					<div class="cs-info">
						<ul>
							<li>Counseling Center <br>02 436 1009
							</li>
							<li>13:00 - 17:00 <br>sat.sun.holiday off
							</li>
						</ul>
					</div>
					<form id="searchBarForm" name="" action="/product/search.html"
						method="get" target="_self" enctype="multipart/form-data">
						<input id="banner_action" name="banner_action" value=""
							type="hidden" />
						<div
							class="xans-element- xans-layout xans-layout-searchside search-bar ">
							<!--
	                    $search_page = /product/search.html
	                    $product_page = /product/detail.html
	                -->
							<fieldset>
								<legend>검색</legend>
								<input id="keyword" name="keyword" fw-filter="" fw-label="검색어"
									fw-msg="" class="inputTypeText" placeholder=""
									onmousedown="SEARCH_BANNER.clickSearchForm(this)" value=""
									type="text" /><input type="image"
									src="/_fm/images/search-icon.png" alt="검색"
									onclick="SEARCH_BANNER.submitSearchBanner(this); return false;">
							</fieldset>
						</div>
					</form>
				</div>
			</div>

			<div class="main">




				<div class="board">
					<div
						class="xans-element- xans-board xans-board-title board-header ">
						<h3>
							<font color="#555555">FAQ</font>
						</h3>
						<div
							class="xans-element- xans-board xans-board-category board-categories ">
							<select id="board_category" name="board_category" fw-filter=""
								fw-label="" fw-msg="">
								<option value="" selected="selected">전체</option>
								<option value="1">상품</option>
								<option value="2">주문/결제</option>
								<option value="3">배송</option>
								<option value="4">교환/환불</option>
								<option value="5">기타</option>
							</select>
						</div>
					</div>

					<div
						class="xans-element- xans-board xans-board-listpackage board-list ">
						<div class="xans-element- xans-board xans-board-notice accordion-list notice-list">
							<div class="accordion-item xans-record-">
								<h3 class="accordion-header">
									<span class="number">공지</span> <span class="title">교환/환불
										방법</span> <span class="date displaynone">2020.04.07</span>
										
										
								</h3>
								<div class="accordion-content">
									<div class="images"></div>
									<div class="article">
										<p>
											<span
												style='color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">교환</span></span></span></span></span><br
												style="color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica,&amp; amp;">
											<br
												style="color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica,&amp; amp;">
											<span
												style='color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">- 카톡 상담, Q&amp;A 게시판을
																통해 교환 의사를 밝힙니다.</span></span></span></span></span><br
												style="color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica,&amp; amp;">
											<span
												style='color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">- 상품</span></span></span></span><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">&nbsp;</span></span></span></span></span><span
												class="green_text"
												style='margin: 0px; padding: 0px; color: rgb(0, 199, 60); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">포장 시</span></span></span></span></span><span
												style='color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">&nbsp;</span></span></span></span><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">왕복 배송비 6000원을 동봉합니다.</span></span></span></span></span><br
												style="color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica,&amp; amp;">
											<span
												style='color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">- 상품</span></span></span></span><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">&nbsp;</span></span></span></span></span><span
												class="green_text"
												style='margin: 0px; padding: 0px; color: rgb(0, 199, 60); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">포장 시</span></span></span></span></span><span
												style='color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">&nbsp;</span></span></span></span><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">성함, 연락처, 교환 희망하는 상품명,
																사이즈, 컬러를 기재합니다.</span></span></span></span></span><br
												style="color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica,&amp; amp;">
											<br
												style="color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica,&amp; amp;">
											<br
												style="color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica,&amp; amp;">
											<span
												style='color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">반품</span></span></span></span></span><br
												style="color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica,&amp; amp;">
											<br
												style="color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica,&amp; amp;">
											<span
												style='color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">- 카톡 상담, Q&amp;A 게시판을
																통해 반품 의사를 밝힙니다.</span></span></span></span></span><br
												style="color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica,&amp; amp;">
											<span
												style='color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">- 상품</span></span></span></span><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">&nbsp;</span></span></span></span></span><span
												class="green_text"
												style='margin: 0px; padding: 0px; color: rgb(0, 199, 60); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">포장 시</span></span></span></span></span><span
												style='color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">&nbsp;</span></span></span></span><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">왕복 배송비 6000원 동봉합니다.</span></span></span></span></span><br
												style="color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica,&amp; amp;">
											<span
												style='color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">-</span></span></span></span><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">&nbsp;</span></span></span></span></span><span
												class="green_text"
												style='margin: 0px; padding: 0px; color: rgb(0, 199, 60); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">주문 시</span></span></span></span></span><span
												style='color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">&nbsp;</span></span></span></span><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">배송비를</span></span></span></span><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">&nbsp;</span></span></span></span></span><span
												class="green_text"
												style='margin: 0px; padding: 0px; color: rgb(0, 199, 60); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">결제했어도</span></span></span></span></span><span
												style='color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">&nbsp;6</span></span></span></span><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">000원을 동봉해야 합니다.</span></span></span></span></span><br
												style="color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica,&amp; amp;">
											<span
												style='color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">(배송비를 포함한 총 주문금액이
																환불되기 때문입니다.)</span></span></span></span></span><br
												style="color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica,&amp; amp;">
											<br
												style="color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica,&amp; amp;">
											<br
												style="color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica,&amp; amp;">
											<span
												style='color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">교환/반품 공통</span></span></span></span></span><br
												style="color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica,&amp; amp;">
											<br
												style="color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica,&amp; amp;">
											<span
												style='color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">- 준비가 끝났다면
																대한통운(1588-1255) 에 전화하여 받았던 송장 번호로 반품</span></span></span></span><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">&nbsp;</span></span></span></span></span><span
												class="green_text"
												style='margin: 0px; padding: 0px; color: rgb(0, 199, 60); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">접수합니다.</span></span></span></span></span><br
												style="color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica,&amp; amp;">
											<span
												style='color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">- 평일 기준 7일 이내 상품</span></span></span></span><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">&nbsp;</span></span></span></span></span><span
												class="red_text"
												style='margin: 0px; padding: 0px; color: rgb(255, 87, 87); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">훼손</span></span></span></span></span><span
												style='color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">&nbsp;</span></span></span></span><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">없이</span></span></span></span><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">&nbsp;</span></span></span></span></span><span
												class="green_text"
												style='margin: 0px; padding: 0px; color: rgb(0, 199, 60); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">페이드룸으로</span></span></span></span></span><span
												style='color: rgb(95, 96, 102); font-family: 굴림, gulim, helvetica, "나눔바른고딕 옛한글", "NanumBarunGothic YetHangul", 새굴림, sans-serif;'><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">&nbsp;</span></span></span></span><span
												style="color: rgb(255, 0, 0);"><span
													style="color: rgb(255, 0, 0);"><span
														style="color: rgb(255, 0, 0);"><span
															style="color: rgb(0, 0, 0);">도착해야 교환/반품이 가능합니다.</span></span></span></span></span>
										</p>
									</div>
									<a href="/article/faq/3/37/" class="content-link"></a>
								</div>
							</div>
							<div class="accordion-item xans-record-">
								<h3 class="accordion-header">
									<span class="number">공지</span> <span class="title">사이즈
										가이드</span> <span class="date displaynone">2020.03.08</span>
								</h3>
								<div class="accordion-content">
									<div class="images"></div>
									<div class="article">
										<p></p>
										<p>
											<br>
										</p>
										<p>
											<img hspace="5" vspace="0"
												src="https://faderoom.co.kr/web/upload/NNEditor/20200308/copy-1583663250-EC8BA4ECB8A1ECA095EBB3B4-EC8381EC9D98.jpg"
												style="width: 1400px; height: 1750px;">
										</p>
										<p>
											<img hspace="5" vspace="0"
												src="https://faderoom.co.kr/web/upload/NNEditor/20200308/copy-1583663256-EC8BA4ECB8A1ECA095EBB3B4-ED9598EC9D98.jpg"
												style="width: 1400px; height: 1750px;">
										</p>
									</div>
									<a href="/article/faq/3/11/" class="content-link"></a>
								</div>
							</div>
							<div class="accordion-item xans-record-">
								<h3 class="accordion-header">
									<span class="number">공지</span> <span class="title">맴버쉽
										혜택</span> <span class="date displaynone">2020.03.08</span>
								</h3>
								<div class="accordion-content">
									<div class="images"></div>
									<div class="article">
										<p></p>
										<p>
											<img hspace="5" vspace="0"
												src="https://faderoom.co.kr/web/upload/NNEditor/20200308/copy-1583659782-FADE-ROOM28EBA7B4EBB284EC89BD29.jpg"
												style="width: 1400px; height: 1806px;">
										</p>
										<p>
											<br>
										</p>
									</div>
									<a href="/article/faq/3/9/" class="content-link"></a>
								</div>
							</div>
						</div>
						<div
							class="xans-element- xans-board xans-board-list accordion-list">
							<div class="accordion-item xans-record-">
								<h3 class="accordion-header">
									<span class="category ">교환/환불</span> <span class="number">5</span>
									<span class="title">교환 환불이 불가능 한 경우</span> <span
										class="date displaynone">2020.03.08</span>
								</h3>
								<div class="accordion-content">
									<div class="images"></div>
									<div class="article">
										<p>
											<span style="font-size: 9pt;"><span><span
													style="font-size: 10pt;">- 배송 완료 시점으로부터 주말 제외 7일 이내
														페이드룸 사무실에 도착하지 않을 시 교환/반품이 불가능합니다.</span></span></span>
										</p>
										<p>
											<br>
										</p>
										<p>
											<span style="font-size: 9pt;"><span><span
													style="font-size: 10pt;">- 일반적인 시착 외에 외출의 흔적(이염,
														늘어짐, 보풀 등, 택 제거)이 발견되면 교환/반품이 불가능합니다.</span></span></span>
										</p>
										<p>
											<br>
										</p>
										<p>
											<span style="font-size: 9pt;"><span><span
													style="font-size: 10pt;">- 1~3 cm 이내의 실측 오차는 교환/반품은
														가능하나 배송비가 청구됩니다.</span></span></span>
										</p>
										<p>
											<br>
										</p>
										<p>
											<span style="font-size: 9pt;"><span><span
													style="font-size: 10pt;">- 린넨 제품의 경우 보풀처럼 보이는 부위는
														원단의 특성으로 무료 교환/반품 대상이 아닙니다.</span></span></span>
										</p>
										<p>
											<span style="font-size: 9pt;"><br /></span>
										</p>
										<p>
											<span style="font-size: 9pt;"><span
												style="font-size: 9pt;"><span><span
														style="font-size: 10pt;">- 소가죽 수제화의 경우 미세한 스크래치가 있을
															수 있으며 이는 무료 교환/반품 대상이 아닙니다.</span></span></span></span>
										</p>
										<p>
											<span style="font-size: 9pt;"><br /></span>
										</p>
										<p>
											<span style="font-size: 9pt;"><span
												style="font-size: 9pt;"><span><span
														style="font-size: 10pt;">- 워싱, 대미지 데님의 경우 수작업이기 때문에
															개체 차이가 있을 수 있으며 이는 무료 교환/반품 대상이 아닙니다.</span></span></span></span>
										</p>
										<p>
											<br>
										</p>
										<p>&nbsp;</p>
									</div>
									<a href="/article/faq/3/16/" class="content-link"></a>
								</div>
							</div>
							<div class="accordion-item xans-record-">
								<h3 class="accordion-header">
									<span class="category ">배송</span> <span class="number">4</span>
									<span class="title">무료 배송 안내</span> <span
										class="date displaynone">2020.03.08</span>
								</h3>
								<div class="accordion-content">
									<div class="images"></div>
									<div class="article">
										총 주문금액이 10만원 이상일 시 무료 배송으로 발송됩니다.
										<div>
											<br>
										</div>
										<div>교환, 환불 등의 이유로 최종 구매액이 10만원 이하로 내려가면 배송비가 청구됩니다.</div>
										<div>
											<br>
										</div>
										<div>
											<br>
										</div>
									</div>
									<a href="/article/faq/3/15/" class="content-link"></a>
								</div>
							</div>
							<div class="accordion-item xans-record-">
								<h3 class="accordion-header">
									<span class="category ">주문/결제</span> <span class="number">3</span>
									<span class="title">카드 취소가 되지 않을 때</span> <span
										class="date displaynone">2020.03.08</span>
								</h3>
								<div class="accordion-content">
									<div class="images"></div>
									<div class="article">
										<p>카드 취소 신청을 한 후 실제 승인까지 2~3일 소요되며 2~3일 뒤 카드사에서 확인 가능합니다.</p>
										<p>
											<br>
										</p>
										<p>체크 카드의 경우 7일 이내 현금 환불됩니다.</p>
									</div>
									<a href="/article/faq/3/14/" class="content-link"></a>
								</div>
							</div>
							<div class="accordion-item xans-record-">
								<h3 class="accordion-header">
									<span class="category ">주문/결제</span> <span class="number">2</span>
									<span class="title">휴대폰 결제 취소 주의사항</span> <span
										class="date displaynone">2020.03.08</span>
								</h3>
								<div class="accordion-content">
									<div class="images"></div>
									<div class="article">
										핸드폰 결제 취소는 당월에만 가능합니다.
										<div>
											<br>
										</div>
										<div>예를 들어 03.31 주문, 04.01 취소가 불가능합니다.</div>
										<div>
											<br>
										</div>
										<div>이런 경우에는 현금 환불로 진행됩니다.</div>
										<div>
											<br>
										</div>
										<div>
											<br>
										</div>
									</div>
									<a href="/article/faq/3/13/" class="content-link"></a>
								</div>
							</div>
							<div class="accordion-item xans-record-">
								<h3 class="accordion-header">
									<span class="category ">상품</span> <span class="number">1</span>
									<span class="title">구매 전 확인해야 할 것들은 무엇인가요?</span> <span
										class="date displaynone">2020.03.08</span>
								</h3>
								<div class="accordion-content">
									<div class="images"></div>
									<div class="article">
										온라인 쇼핑은 상품을 직접 보고 구매하는 것이 아니므로 상품구매 전에는 상품 정보를 꼼꼼히 살펴보시기 바랍니다.
										<div>페이드룸은 최대한 실물 색상에 가까운 사진과 정확한 사이즈 기재를 하고 있으나 컴퓨터
											해상도에 따라 색상 차이가 있을 수 있으며,</div>
										<div>1~3cm 가량은 재는 방법에 따라 실제 사이즈와 차이가 있을 수 있으니 참고하시기
											바랍니다.</div>
									</div>
									<a href="/article/faq/3/2/" class="content-link"></a>
								</div>
							</div>
						</div>
						<div
							class="xans-element- xans-board xans-board-empty message displaynone "></div>
						<div
							class="xans-element- xans-board xans-board-buttonlist board-admin-actions displaynone ">
							<a href="/board/free/write.html?board_no=3"
								class="primary-button displaynone"><span>WRITE</span></a>
						</div>
					</div>
				</div>

				<div class="site-footer">
					<ul>
						<li><span>FADE ROOM</span> <span>CEO Kim Han Kyung</span> <span>Personal
								Info Manager Kim Han Kyung</span> <span>Account No. KB
								450901-01-456435</span> <span>Email <a
								href="mailto:info@faderoom.co.kr">info@faderoom.co.kr</a></span></li>
						<li><span>201, 240, Bongujae-ro, Jungnang-gu, Seoul</span> <span>Reg.
								No. 174-05-01533</span> <span>Ecommerce Reg. No.
								2020-SeoulJungnang-0207</span></li>
						<li class="legal-links"><a href="/member/agreement.html">Terms
								of Use</a> <a href="/member/privacy.html">Privacy Policy</a>
							<p class="copyright">© 2020 FADE ROOM</p></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<a href="http://pf.kakao.com/_AWLGxb/chat" target="_blank"
		class="chat-button"></a>

	<div class="plusapp-modal remodal">
		<div class="app-description">
			<span class="app-icon"></span>
			<p>
				앱에서 더 편리하게 쇼핑하고<br>세일 및 최신 정보를 가장 먼저 받아보세요!
			</p>
		</div>
		<div class="app-link">
			<a
				href="https://m.faderoom.co.kr/apps/cafe24plusapp/marketing/appdown_link.html"
				class="primary-button" target="_blank">앱 설치 바로가기</a>
		</div>
		<span data-remodal-action="close" class="close-app-modal"></span>
	</div>

	<!-- 결제를 위한 필수 영역 -->
	<div id="progressPaybar" style="display: none;">
		<div id="progressPaybarBackground" class="layerProgress"></div>
		<div id="progressPaybarView">
			<div class="box">
				<p class="graph">
					<span><img
						src="//img.echosting.cafe24.com/skin/base_ko_KR/layout/txt_progress.gif"
						alt="현재 결제가 진행중입니다."></span> <span><img
						src="//img.echosting.cafe24.com/skin/base/layout/img_loading.gif"
						alt=""></span>
				</p>
				<p class="txt">
					본 결제 창은 결제완료 후 자동으로 닫히며,결제 진행 중에 본 결제 창을 닫으시면<br> 주문이 되지 않으니
					결제 완료 될 때 까지 닫지 마시기 바랍니다.
				</p>
			</div>
		</div>
	</div>
	<!-- // 결제를 위한 필수 영역 -->

	<script>
		(function($) {

			$(document)
					.ready(
							function() {

								var ua = navigator.userAgent
										|| navigator.vendor || window.opera;
								var isPlusApp = (ua.indexOf('Cafe24Plus') > -1) ? true
										: false;
								var isMobile = false;

								window.mobileCheck = function() {
									(function(a) {
										if (/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino/i
												.test(a)
												|| /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i
														.test(a.substr(0, 4)))
											isMobile = true;
									})(navigator.userAgent || navigator.vendor
											|| window.opera);
									return isMobile;
								};
								mobileCheck();

								var showApp = Cookies.get('show_app_modal');
								var appModal = $('.plusapp-modal').remodal();

								console.log(showApp);

								if (isMobile && !(isPlusApp)
										&& (showApp != 'hide')) {
									appModal.open();
								}

								$('.close-app-modal').click(function() {
									Cookies.set('show_app_modal', 'hide', {
										expires : 1
									});
								});

								// Toggle Buttons

								$('.hamburger').on('click', function() {
									$('body').toggleClass('nav-expanded');
								});

								// Form Selectors

								$('select')
										.each(
												function() {
													$(this)
															.wrap(
																	'<span class="select-field"></span>')
												});

								// Accordion List

								$('.accordion-header')
										.on(
												'click',
												function() {

													var parent = $(this)
															.parent(), headHeight = $(
															this).outerHeight();
													childHeight = $(this)
															.next()
															.outerHeight();

													if (parent
															.hasClass('is-active')) {
														parent
																.removeClass(
																		'is-active')
																.removeAttr(
																		'style');
													} else {
														$('.accordion-item')
																.removeClass(
																		'is-active')
																.removeAttr(
																		'style');
														parent
																.addClass(
																		'is-active')
																.css(
																		'height',
																		headHeight
																				+ childHeight);
													}
												});

								// Mobile Cart Badge

								if (!$('.menu--cart .badge').hasClass(
										'displaynone')) {
									var ct = $('.menu--cart .badge').text()
											.replace('(', '').replace(')', '');
									$('.mobile-cart .badge').text(ct);
								}

							});

			// Fix Sidebar

			$(window).scroll(function() {
				if ($(this).scrollTop() > 120) {
					$('.sidebar').addClass('fixed');
				} else {
					$('.sidebar').removeClass('fixed');
				}
			});

		})(jQuery);
	</script>

	<span itemscope="" itemtype="https://schema.org/Organization">
		<link itemprop="url" href="https://faderoom.co.kr">
	</span>

	<script>
		try {
			// Account ID 적용
			if (!wcs_add)
				var wcs_add = {};
			wcs_add["wa"] = "";

			// 마일리지 White list가 있을 경우
			wcs.mileageWhitelist = [ "faderoom.cafe24.com",
					"www.faderoom.cafe24.com", "m.faderoom.cafe24.com",
					"faderoom.co.kr", "www.faderoom.co.kr", "m.faderoom.co.kr" ];

			// 네이버 페이 White list가 있을 경우
			wcs.checkoutWhitelist = [ "faderoom.cafe24.com",
					"www.faderoom.cafe24.com", "m.faderoom.cafe24.com",
					"faderoom.co.kr", "www.faderoom.co.kr", "m.faderoom.co.kr" ];

			// 레퍼러 (스크립트 인젠션 공격 대응 strip_tags) ECQAINT-15101
			wcs.setReferer("");

			// 유입 추적 함수 호출
			wcs.inflow("faderoom.co.kr");

			// 로그수집
			wcs_do();
		} catch (e) {
		};
	</script>
	
	
	<!-- External Script Start -->
	
	<!-- fbe -->
	<!-- CMC3 script -->
	<div id="fbe_common_top_script" style="display: none;">
		<script type="text/javascript">
			if (typeof facebookChannel === 'undefined') {
				var facebookChannel = {
					mall_id : CAFE24.SHOP.getMallID(),
					shop_no : CAFE24.SDE_SHOP_NUM,
					shop_id : CAFE24.SHOP.getMallID() + '.'
							+ CAFE24.SDE_SHOP_NUM,
					external_id : null,
					event_id : null,

					setInitActivated : function(is_activated) {
						window.top.fbe_init_activated = !!is_activated;
					},
					getInitActivated : function() {
						return !!window.top.fbe_init_activated;
					},
					setEventActivated : function(event_type, is_activated) {
						if (typeof event_type === 'string' && event_type) {
							let key = 'fbe_' + event_type + '_activated'
							window.top[key] = !!is_activated;
						}
					},
					getEventActivated : function(event_type) {
						if (typeof event_type === 'string' && event_type) {
							let key = 'fbe_' + event_type + '_activated'
							return !!window.top[key];
						}
						return false;
					},
					getCookie : function(name) {
						return (name = (document.cookie + ';').match(name
								+ '=.*;'))
								&& name[0].split(/=|;/)[1];
					},
					getExternalId : function() {
						return facebookChannel.getCookie('fb_external_id');
					},
					getEventId : function() {
						return facebookChannel.getCookie('fb_event_id');
					},
					getInt : function(value) {
						let value_int = parseInt(value);
						value_int = isNaN(value_int) ? 0 : value_int;
						return value_int;
					},
					getFloat : function(value) {
						let value_float = parseFloat(value);
						value_float = isNaN(value_float) ? 0.00 : value_float
								.toFixed(2);
						return value_float;
					},
					init : function() {
						if (facebookChannel.getInitActivated()) {
							return;
						}
						facebookChannel.setInitActivated(true);

						!function(f, b, e, v, n, t, s) {
							if (f.fbq)
								return;
							n = f.fbq = function() {
								n.callMethod ? n.callMethod.apply(n, arguments)
										: n.queue.push(arguments)
							};
							if (!f._fbq)
								f._fbq = n;
							n.push = n;
							n.loaded = !0;
							n.version = '2.0';
							n.queue = [];
							t = b.createElement(e);
							t.async = !0;
							t.src = v;
							s = b.getElementsByTagName(e)[0];
							s.parentNode.insertBefore(t, s)
						}
								(window, document, 'script',
										'https://connect.facebook.net/en_US/fbevents.js');

						if ((typeof EC_GLOBAL_INFO !== 'undefined' && EC_GLOBAL_INFO
								.getCountryCode() === 'US')
								|| (typeof SHOP !== 'undefined' && SHOP
										.getLanguage() === 'en_US')) {
							fbq('dataProcessingOptions', [ 'LDU' ], 0, 0);
						}

						if (typeof ECLOG !== 'undefined' && !!ECLOG.EXTERNAL_ID) {
							ECLOG.EXTERNAL_ID
									.chk(
											facebookChannel.shop_id,
											function(error, external_id) {
												if (error || !external_id) {
													external_id = facebookChannel
															.getExternalId();
													console
															.info(
																	'external_id is cookie value.',
																	'(1)');
												}
												fbq(
														'init',
														'3134612316789445',
														{
															external_id : external_id
														}, {
															agent : 'plcafe24'
														});
												fbq('trackSingle',
														'3134612316789445',
														'PageView');
												facebookChannel.external_id = external_id;
											});
						} else {
							let external_id = facebookChannel.getExternalId();
							console.info('external_id is cookie value.', '(2)');

							fbq('init', '3134612316789445', {
								external_id : external_id
							}, {
								agent : 'plcafe24'
							});
							fbq('trackSingle', '3134612316789445', 'PageView');
							facebookChannel.external_id = external_id;
						}
					},
					pixelEvent : function(event_type, callback, is_cookie_event) {
						if (facebookChannel.getEventActivated(event_type)) {
							return;
						}
						facebookChannel.setEventActivated(event_type, true);
						is_cookie_event = !!is_cookie_event;

						let retry = 0;
						let execute = function() {
							if (!facebookChannel.external_id) {
								if (retry < 10) {
									retry++;
									if (retry >= 5) {
										console.warn('retry #' + retry,
												event_type);
									}
									setTimeout(execute, 1000);
								} else {
									console.warn('external_id is empty.');
								}
								return;
							}

							if (callback.length === 0) {
								callback();
							} else if (!is_cookie_event
									&& typeof ECLOG !== 'undefined'
									&& !!ECLOG.EVENT_ID) {
								ECLOG.EVENT_ID
										.chk(
												facebookChannel.shop_id,
												function(error, event_id) {
													if (error || !event_id) {
														event_id = facebookChannel
																.getEventId();
														console
																.info(
																		'event_id is cookie value.',
																		'(1)');
													}
													facebookChannel.event_id = event_id;
													if (event_id) {
														callback(event_id);
													} else {
														console
																.warn(
																		'event_id is empty.',
																		'(1)');
													}
												});
							} else {
								let event_id = facebookChannel.getEventId();
								console
										.info('event_id is cookie value.',
												'(2)');
								facebookChannel.event_id = event_id;
								if (event_id) {
									callback(event_id);
								} else {
									console.warn('event_id is empty.', '(2)');
								}
							}
						};
						execute();
					},
					messengerChatPlugin : function() {
						let event_type = 'messenger';
						let sdk_version = '';
						let locale = '';
						if (!sdk_version) {
							console.warn('sdk_version is empty.');
							return;
						}
						if (!locale) {
							console.warn('locale is empty.');
							return;
						}
						if (facebookChannel.getEventActivated(event_type)) {
							return;
						}
						facebookChannel.setEventActivated(event_type, true);

						window.fbAsyncInit = function() {
							FB.init({
								appId : '216637735743129',
								autoLogAppEvents : true,
								xfbml : true,
								version : sdk_version
							});
						};
						(function(d, s, id) {
							var js, fjs = d.getElementsByTagName(s)[0];
							if (d.getElementById(id))
								return;
							js = d.createElement(s);
							js.id = id;
							js.src = 'https://connect.facebook.net/' + locale
									+ '/sdk/xfbml.customerchat.js';
							fjs.parentNode.insertBefore(js, fjs);
						}(document, 'script', 'facebook-jssdk'));
					}
				};

				facebookChannel.init();
			}
		</script>
		<noscript>
			<img height="1" width="1" style="display: none"
				src="https://www.facebook.com/tr?id=3134612316789445&ev=PageView&noscript=1" />
		</noscript>
	</div>
	<!-- CMC3 script -->

	<!-- gfa -->
	<script type="text/javascript">
		document.addEventListener("DOMContentLoaded", function() {
			EC_PlusAppBridge.setBridgeFunction()
		});
	</script>
	<!-- External Script End -->

	<script type="text/javascript"
		src="/ind-script/i18n.php?lang=ko_KR&domain=front&v=2402011281"
		charset="utf-8"></script>

	<script
		src="/ind-script/optimizer.php?filename=zVjbbts4EH1P9LrfoWZ3Uexr4yBt0QQ1sin6PKJG8kQUh-Uljvr1Hcnubr2tbIlKgIUBWaZ5DodzORwp33CL-cXvLq8ctLhl1-QOPUenMH_wOV38ZbIH_1t-bF4kC6rJH75EdN3-64_sdfZqJhKfAjoD2u8HMsXcEC5liU4nbSFDlVUmGWpYsak0qZBEcZH9KZ-kxeXfwO4_frOOa8EfRLeEgIFkQiuzTMhR3Q43nyls7r9eQYCsJTODR1MhKLyX-9Mobx2ZUE2gZxV7s67ZtSs2wbHW6E7j1jr6N9ZeOirrCfbEQPr0rMrx4Kkzz1oQbM4C2zNNBs8KMGaKXTsKxW3LZursJzBSjUZS2zoM01cZcAFbqyUuvwaBtfktF6Qxv_sBv7PviFdGcC2XUYb8luy8BatoVO_Qfl4ZpWza0SSeynDECEnV_NOuen6k0PC10wzlLFAbA_Trfiw8usex4IyALeuuIj059UqsIOrQu8C34MLlL7JuvkgWNQ2g_4dklyIgxotH_VImBE-mXsrSYoCyl8PRbPx7w_YgrNdDsD5AA5w3_XVNT6iPadERmtVQi5-OluII9AqLWM9fUNSiZtfdkA-zwXdYoUOjcBVd_92tHan5m_YITm1m1VKAqup-PrNOBtzqWJMI5SNokjiz-x74fwYyuQG_mLbPLFP6n-mFwUq648utsEFt8cX3sQFT6tlyNGMBkVeSGL8Yv0hxeDY3aVYgZ1TDp8X9XwtG6-SSwZUH-S6jWdGPpoGiUmnAQjbWpEEdWnYhDat7NWqHc_9IXwAG6sO-YIticD1LSb5LV-5FnM7tuIBNwqv9r_NKWlgISy15LpppHe8mtFq6bwqE_vTslets4A_YzYoQ-M6o3TUZ12JboEuGf3QlOmVCMsEl-AbDcgZ7_LScxLHeN8CpLCuOchwt2cutFCnU6fu4Ep3wlL7-Z_Kb493LBALFcYELHCpcAL8b4A12cuaUC1nuOYBeLdrNUB_paYkGK1paGjfQLbDhrYMyPSHfxMAiuqQGGulZt-m1Ic9vtGYbbXqBRi_moJNCf6QlgbmVHr_BvV4sy5ADqkW1d0OPqMk0Y-9HpqbrO-rfhHXPkPh7pnsonoXnfcB2kYcGsit5LCX93lScnkcaqIVC4wKLLISNY43nE3rYU4EfffUyArYJB92uUTiXlpDm5ZffZtLPT3r36DgGvKYnmfkN&type=js&k=47fa026ee1eb2116d5a0569e6b8d1a1f418efcba&t=1706863992"></script>
	<script
		src="/ind-script/optimizer_user.php?filename=pc7BEYMwDETRApxr6tiajCyCiGUFhMLQPTCZoQBy-5d9sxhMGUwpnGdHnwvPZopPdFUoDYtWeOFU2OXV0GVn1LxZLGcLYfRfPEZ_4gZ27MlUrf0BqJWo168phN7pK7we5A4&type=js&k=8ec10779c4ee6168434c6123528458e01d40f227&t=1581186804&user=T"></script>
	<script type="text/javascript">
		var sIsChannelUi = 'F';
		var sChRef = '';
		var sUseShoppingpayPg = 'F';
		var sOwnMallLanding = 'F';
		var sShoppingPayCookie = '';
		if (sIsChannelUi === 'T') {
			sessionStorage.setItem('ch_ref', sChRef);
		}
		CAFE24.getChRefData = function() {
			if (sIsChannelUi === 'T') {
				return sessionStorage.getItem('ch_ref');
			}
		}
		// 자사몰랜딩/유튜브랜딩 공용
		CAFE24.checkChannelUI = function() {
			if ((sIsChannelUi === 'T' && sessionStorage.getItem('ch_ref') || (sUseShoppingpayPg === 'T' && sOwnMallLanding === 'T'))) {
				return true;
			} else {
				return false;
			}
		}
		// 자사몰랜딩 UI확인
		CAFE24.isOwnMallLandingUI = function() {
			return sUseShoppingpayPg === 'T' && sOwnMallLanding === 'T';
		}
		CAFE24.attachShoppingpayParam = function(sUrl) {
			if (sUrl) {
				var sChRef = CAFE24.getChRefData();
				if (sChRef) {
					var sSeparator = (sUrl.includes('?')) ? '&' : '?';
					sUrl += sSeparator + 'ch_ref=' + sChRef;
				} else if (sUseShoppingpayPg === 'T' && sOwnMallLanding === 'T') {
					var sSeparator = (sUrl.includes('?')) ? '&' : '?';
					sUrl += sSeparator + 'co_servicetype=shoppingpay';
				}
			}
			return sUrl;
		}
		CAFE24.attachChRef = function(sUrl) {
			if (sUrl) {
				var sChRef = CAFE24.getChRefData();
				if (sChRef) {
					var sSeparator = (sUrl.includes('?')) ? '&' : '?';
					sUrl += sSeparator + 'ch_ref=' + sChRef;
				}
			}
			return sUrl;
		};
		CAFE24.MOBILE_WEB = false;
		var mobileWeb = CAFE24.MOBILE_WEB;
		try {
			var isUseLoginKeepingSubmit = false;
			// isSeqNoKeyExpiretime
			function isSeqNoKeyExpiretime(iExpiretime) {
				var sDate = new Date();
				var iNow = Math.floor(sDate.getTime() / 1000);
				// 유효시간 확인
				if (iExpiretime > iNow) {
					return false;
				}
				return true;
			}
			function isUseLoginKeeping() {
				// 디바이스 확인
				if (EC_MOBILE_DEVICE === false) {
					return;
				}
				// 로그인 여부
				if (sessionStorage.getItem('member_' + CAFE24.SDE_SHOP_NUM) !== null) {
					return;
				}
				var sLoginKeepingInfo = localStorage
						.getItem('use_login_keeping_info');
				var iSeqnoExpiretime;
				var iSeqNoKey;
				if (sLoginKeepingInfo == null) {
					iSeqnoExpiretime = localStorage
							.getItem('seq_no_key_expiretime');
					iSeqNoKey = localStorage.getItem('seq_no_key');
					// 유효시간, key 값 확인
					if (iSeqnoExpiretime === null || iSeqNoKey === null) {
						return;
					}
				} else {
					var oLoginKeepingInfo = JSON.parse(sLoginKeepingInfo);
					iSeqNoKey = oLoginKeepingInfo.seq_no_key;
					iSeqnoExpiretime = oLoginKeepingInfo.seq_no_key_expiretime;
					if (isNaN(iSeqNoKey) === true
							|| isNaN(iSeqnoExpiretime) === true) {
						return;
					}
				}
				if (isSeqNoKeyExpiretime(iSeqnoExpiretime) === false) {
					return;
				}
				useLoginKeepingSubmit();
			}
			function findGetParamValue(paramKey) {
				var result = null, tmp = [];
				location.search.substr(1).split('&').forEach(function(item) {
					tmp = item.split('=');
					if (tmp[0] === paramKey)
						result = decodeURIComponent(tmp[1]);
				});
				return result;
			}
			function useLoginKeepingSubmit() {
				var iSeqnoExpiretime;
				var iSeqNoKey;
				var sUseLoginKeepingIp;
				var sLoginKeepingInfo = localStorage
						.getItem('use_login_keeping_info');
				if (sLoginKeepingInfo == null) {
					iSeqnoExpiretime = localStorage
							.getItem('seq_no_key_expiretime');
					iSeqNoKey = localStorage.getItem('seq_no_key');
				} else {
					var oLoginKeepingInfo = JSON.parse(sLoginKeepingInfo);
					iSeqNoKey = oLoginKeepingInfo.seq_no_key;
					iSeqnoExpiretime = oLoginKeepingInfo.seq_no_key_expiretime;
					sUseLoginKeepingIp = oLoginKeepingInfo.use_login_keeping_ip;
				}
				var oForm = document.createElement('form');
				oForm.method = 'post';
				oForm.action = '/exec/front/member/LoginKeeping';
				document.body.appendChild(oForm);
				var oSeqNoObj = document.createElement('input');
				oSeqNoObj.name = 'seq_no_key';
				oSeqNoObj.type = 'hidden';
				oSeqNoObj.value = iSeqNoKey;
				oForm.appendChild(oSeqNoObj);
				oSeqNoObj = document.createElement('input');
				oSeqNoObj.name = 'seq_no_key_expiretime';
				oSeqNoObj.type = 'hidden';
				oSeqNoObj.value = iSeqnoExpiretime;
				oForm.appendChild(oSeqNoObj);
				var returnUrl = findGetParamValue('returnUrl');
				if (returnUrl == '' || returnUrl == null) {
					returnUrl = location.pathname + location.search;
				}
				oSeqNoObj = document.createElement('input');
				oSeqNoObj.name = 'returnUrl';
				oSeqNoObj.type = 'hidden';
				oSeqNoObj.value = returnUrl;
				oForm.appendChild(oSeqNoObj);
				if (sUseLoginKeepingIp != undefined) {
					oSeqNoObj = document.createElement('input');
					oSeqNoObj.name = 'use_login_keeping_ip';
					oSeqNoObj.type = 'hidden';
					oSeqNoObj.value = sUseLoginKeepingIp;
					oForm.appendChild(oSeqNoObj);
				}
				oForm.submit();
				isUseLoginKeepingSubmit = true;
			}
			isUseLoginKeeping();
		} catch (e) {
		}
		var bUseElastic = false;
		var sSearchBannerUseFlag = 'F';
		EC$(function() {
			EC$('select[name=board_category]').change(function() {
				location.href = '?board_no=3&category_no=' + this.value
			});
		});
		var bIsUseSpread = false;
		var sIsSecret = false;
		var iBoardNo = "3";
		var aLogData = {
			"log_server1" : "eclog2-259.cafe24.com",
			"log_server2" : "elg-db-svcm-261.cafe24.com",
			"mid" : "faderoom",
			"stype" : "e",
			"domain" : "",
			"shop_no" : 1,
			"lang" : "ko_KR",
			"ver" : 2,
			"hash" : "c8a2c671af02a9986d66a42e51cec8a6",
			"ca" : "cfa-js.cafe24.com\/cfa.js",
			"etc" : "",
			"mobile_flag" : "F"
		};
		var sMileageName = '적립금';
		var sMileageUnit = '[:PRICE:]원';
		var sDepositName = '예치금';
		var sDepositUnit = '원';
		CAFE24.SHOP_CURRENCY_INFO = {
			"1" : {
				"aShopCurrencyInfo" : {
					"currency_code" : "KRW",
					"currency_no" : "410",
					"currency_symbol" : "\uffe6",
					"currency_name" : "South Korean won",
					"currency_desc" : "\uffe6 \uc6d0 (\ud55c\uad6d)",
					"decimal_place" : 0,
					"round_method_type" : "F"
				},
				
				"aShopSubCurrencyInfo" : null,
				"aBaseCurrencyInfo" : {
					"currency_code" : "KRW",
					"currency_no" : "410",
					"currency_symbol" : "\uffe6",
					"currency_name" : "South Korean won",
					"currency_desc" : "\uffe6 \uc6d0 (\ud55c\uad6d)",
					"decimal_place" : 0,
					"round_method_type" : "F"
				},
				"fExchangeRate" : 1,
				"fExchangeSubRate" : null,
				"aFrontCurrencyFormat" : {
					"head" : "",
					"tail" : "\uc6d0"
				},
				"aFrontSubCurrencyFormat" : {
					"head" : "",
					"tail" : ""
				}
			}
		};
		var SHOP_CURRENCY_INFO = CAFE24.SHOP_CURRENCY_INFO;
		var EC_ASYNC_LIVELINKON_ID = '';
	</script>


</body>
</html>