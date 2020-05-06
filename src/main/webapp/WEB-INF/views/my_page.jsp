<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>MUSINSA CUSTOMER CENTER</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="MUSINSA, musinsa, 무신사, 남성의류쇼핑몰, 남성의류, 남성코디">
<meta name="keywords"
	content="남성의류쇼핑몰, 남성의류, 남자코디, 셔츠, 바지, 슬렉스, 청바지, 신발, 캐주얼">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/Home_css.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="http://malsup.github.com/jquery.cycle2.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
.contents #my_page_header {
	width: 100% border: 1px solid #000;
}

.contents #my_page_header #nav {
	width: 15%;;
	height: 100%;
	float: left;
	box-sizing: border-box;
	background: #f1f1f1;
}

.contents #my_page_header #import_menu {
	width: 85%;;
	height: 100%;
	/* 	float: right; */
	box-sizing: border-box;
	background: #0ff;
}

.contents #my_page_header #nav ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	width: 250px;
	background-color: #f1f1f1;
}

.contents #my_page_header #nav li a {
	display: block;
	color: #000;
	padding: 8px 16px;
	text-decoration: none;
}

.contents #my_page_header #nav li a.active {
	background-color: #4CAF50;
	color: white;
}
</style>
<script type="text/javascript">


$(window).ready(function(){
var stringVal = "${Previous_page}";
if(stringVal.indexOf("home") !== -1){
	window.alert("홈에서");
	$("#zzimG, #zzimGG").addClass("active");
	$("#zzimG").attr("aria-selected","true");
}
else if(stringVal.indexOf("productDetail.do") !== -1){
	window.alert("구매페이지에서");
	$("#zzimG, #zzimGG").addClass("active");
	$("#zzimG").attr("aria-selected","true");
}
else if(stringVal.indexOf("zzimInsert.do") !== -1){
	window.alert("찜리스트에서");
	$("#orderG, #orderGG").addClass("active");
	$("#orderG").attr("aria-selected","true");
}
else{
	$("#zzimG, #zzimGG").addClass("active");
	$("#zzimG").attr("aria-selected","true");
}
});
</script>
</head>

<body>
	<!-- main_menu -->
	<header>
		<div id="main_bar">
			<c:import url="/main_bar.do" />
		</div>
	</header>

	<div class="container contents">
		<div id="my_page_header">
			<!-- Nav -->
			<nav id="nav" style="height: 100%;">
<!-- 			
				<!-- List group -->
				<div class="list-group" id="myList" role="tablist">
					<a class="list-group-item list-group-item-action"  id="zzimG" 			data-toggle="list"
						href="#zzimGG" 			role="tab" style="text-align: center;">찜리스트</a> 
						
					<a class="list-group-item list-group-item-action"  id="customerG" 		data-toggle="list"
						href="#customerGG" 		role="tab" style="text-align: center;">고객문의</a> 
						
					<a class="list-group-item list-group-item-action"  id="orderG"			data-toggle="list"
						href="#orderGG" 		role="tab" style="text-align: center;">주문내역</a> 
						
					<a class="list-group-item list-group-item-action"  id="Detail_joinG"	data-toggle="list" 
						href="#Detail_joinGG" 	role="tab" style="text-align: center;">회원정보관련</a> 
						
					<a class="list-group-item list-group-item-action"
						href="logout.do" 		role="tab" style="text-align: center;">로그아웃</a>
				</div>

			</nav>

			<!-- Tab panes -->
			<div class="tab-content">
				<div class="tab-pane" id="Detail_joinGG" role="tabpanel">
					<c:import url="/Detail_join.do?uid=${userId}">
					</c:import></div>
				<div class="tab-pane" id="zzimGG" role="tabpanel">
				<c:import url="/zzimList.do"></c:import>
				</div>
				<div class="tab-pane" id="customerGG" role="tabpanel">
				<c:import url="/customerList.do"></c:import>
				</div>
				<div class="tab-pane" id="orderGG" role="tabpanel">
				<c:import url="/orderList.do"></c:import>
				</div>
			</div>
		</div>

	</div>





	<!-- footer -->
	<footer>
		<div id="footer">
			<c:import url="/footer.do" />
		</div>
	</footer>









</body>
</html>
