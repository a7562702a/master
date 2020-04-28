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
	width: 100%;
	height: 300px;
	border: 1px solid #000;
}

.contents #my_page_header #nav {
	width: 50%;
	float: left;
	box-sizing: border-box;
	background: #ff0;
}

.contents #my_page_header #import_menu {
	width: 50%;
	float: right;
	box-sizing: border-box;
	background: #0ff;
}

.contents #my_page_header #nav ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	width: 200px;
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
		$('#action1').show(); //페이지를 로드할 때 표시할 요소
		$('#action2').hide(); //페이지를 로드할 때 숨길 요소
		$('#customerGG').click(function() {
			$('#action1').show(); //페이지를 로드할 때 표시할 요소
			$('#action2').hide(); //페이지를 로드할 때 숨길 요소
			return false;
		});
		$('#Detail_join').click(function() {
			$('#action1').show(); //페이지를 로드할 때 표시할 요소
			$('#action2').hide(); //페이지를 로드할 때 숨길 요소
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
			<nav id="nav">
				<ul class="w3-sidebar w3-bar-block" style="width:25%">
					<li><a id="orderGG" class="w3-bar-item w3-butto"><span class="icon solid fa-home">주문내역</span></a></li>
					<li><a id="zzimGG" class="w3-bar-item w3-butto"><span class="icon solid fa-th">찜리스트</span></a></li>
					<li><a href="" id="customerGG" class="w3-bar-item w3-butto"><span
							class="icon solid fa-user">고객문의</span></a></li>
					<li><a href="" id="Detail_join"><span
							class="icon solid fa-envelope">회원정보수정</span></a></li>
					<li><a href="logout.do" id="contact-link"><span
							class="icon solid fa-envelope">로그아웃</span></a></li>
				</ul>
			</nav>
		</div>

	</div>

	<div class="container">

		<div id="import_menu">
			<%-- 		<c:import url="/orderList.do?oid=${shopping_id}"></c:import> --%>
			<%-- 		<c:import url="/zzimList.do"></c:import> --%>
			<%-- 		<c:import url="/customerList.do"></c:import> --%>
			<div id="action1">
				<span>action1</span>
				<c:import url="/Detail_join.do?uid=${shopping_id}">
				</c:import>
			</div>
			<div id="action2">
				<span>action2</span>
				<c:import url="/Detail_join.do?uid=${shopping_id}">
				</c:import>
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