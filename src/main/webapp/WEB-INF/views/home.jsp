<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>MUSINSA STORE</title>
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

</head>
<body>
	<!-- main_menu -->
	<header class="main_menu">
		<div id="main_bar">
			<c:import url="/main_bar.do" />
		</div>
	</header>


	<div class="contents">
		<!-- main_slider -->
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="carousel-item active" style="max-height: 600px">
					<a href=""> <img class="d-block w-100"
						src="resources/images/musinsa_main_banner3.jpg" alt="First slide">
						<div class="carousel-caption d-block">
							<span> <img alt=""
								src="resources/images/musinsa_main_banner_title1.png">
							</span>
						</div>
					</a>
				</div>
				<div class="carousel-item" style="max-height: 600px">
					<a href=""> <img class="d-block w-100"
						src="resources/images/musinsa_main_banner4.jpg" alt="Second slide">
						<div class="carousel-caption d-block">
							<span> <img alt=""
								src="resources/images/musinsa_main_banner_title2.png">
							</span>
						</div>
					</a>
				</div>
				<div class="carousel-item" style="max-height: 600px">
					<a href=""> <img class="d-block w-100"
						src="resources/images/musinsa_main_banner5.jpg" alt="Third slide">
						<div class="carousel-caption d-block">
							<span> <img alt="" src="resources/images/Carrot_logo1.png">
							</span>
						</div>
					</a>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>


	<div class="container">
		<!-- 상단 이미지배너 -->
		<div class="wrap">
			<div class="first_wrap">
				<div class="first_wrap_i 01">
					<a href="productDetail.do?id=101a00001"> <img alt="1"
						src="resources/images/101a00001_1.jpg">
					</a>
				</div>
				<div class="first_wrap_i 02">
					<a href="productDetail.do?id=102b00001"> <img alt="1"
						src="resources/images/102b00001_1.jpg">
					</a>
				</div>
				<div class="first_wrap_i 03">
					<a href="productDetail.do?id=201c00001"> <img alt="1"
						src="resources/images/201c00001_1.jpg">
					</a>
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