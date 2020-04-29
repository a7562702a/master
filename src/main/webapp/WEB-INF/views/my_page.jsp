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
	width: 100%
	border: 1px solid #000;
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
	$(document).ready(function() {
		$('#orderGG').show(); //페이지를 로드할 때 표시할 요소
		$('#zzimGG').hide(); //페이지를 로드할 때 숨길 요소
		$('#customerGG').hide(); //페이지를 로드할 때 숨길 요소
		$('#Detail_join').hide(); //페이지를 로드할 때 숨길 요소
		
		$('#action1').click(function() {
			$('#orderGG').show(); 
			$('#zzimGG').hide(); 
			$('#customerGG').hide(); 
			$('#Detail_join').hide(); 
			return false;
		});
		$('#action2').click(function() {
			$('#orderGG').hide(); 
			$('#zzimGG').show(); 
			$('#customerGG').hide(); 
			$('#Detail_join').hide(); 
			return false;
		});
		$('#action3').click(function() {
			$('#orderGG').hide(); 
			$('#zzimGG').hide(); 
			$('#customerGG').show(); 
			$('#Detail_join').hide(); 
			return false;
		});
		$('#action4').click(function() {
			$('#orderGG').hide(); 
			$('#zzimGG').hide(); 
			$('#customerGG').hide(); 
			$('#Detail_join').show(); 
			return false;
		});
		$('#action5').click(function() {
			$('#orderGG').hide(); 
			$('#zzimGG').hide(); 
			$('#customerGG').hide(); 
			$('#Detail_join').hide(); 
			return false;
		});
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

	<div class="contents">
		<div id="my_page_header">
			<!-- Nav -->
			<nav id="nav" style="height: 450px;">
				<ul class="w3-sidebar w3-bar-block" style="width: 100%;"  align="center">
					<li ><button id="action1" class="w3-bar-item w3-butto">
						<span class="icon solid fa-home">주문내역</span></button></li>
					<li><button id="action2" class="w3-bar-item w3-butto">
						<span class="icon solid fa-th">찜리스트</span></button></li>
					<li><button id="action3" class="w3-bar-item w3-butto">
						<span class="icon solid fa-user">고객문의</span></button></li>
					<li><button id="action14">
						<span class="icon solid fa-envelope">회원정보수정</span></button></li>
					<li><a href="logout.do"><button id="action5">
						<span class="icon solid fa-envelope">로그아웃</span></button></a></li>
				</ul>

				
			</nav>

			<div id="import_menu" style="height: 450px;">
				<div id="orderGG">
					<span>action1</span>
<%-- 					<c:import url="/orderList.do?oid=${userId}"></c:import> --%>
				</div>
				<div id="zzimGG">
					<span>action2</span>
<%-- 					<c:import url="/zzimList.do"></c:import> --%>
				</div>
				<div id="customerGG">
					<span>action3</span>
<%-- 					<c:import url="/customerList.do"></c:import> --%>
					<c:import url="/Detail_join.do?uid=${userId}">
					</c:import>
				</div>
				<div id="Detail_join">
					<span>action4</span>
					<c:import url="/Detail_join.do?uid=${userId}">
					</c:import>
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
	</div>









</body>
</html>