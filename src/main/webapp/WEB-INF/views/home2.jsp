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
	<header>
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
				<div class="carousel-item active" style="max-height: 600px;">
					<a href=""> <img class="d-block center-block<!-- w-100 -->"
						src="resources/images/Untitled1.png" alt="First slide">
						<div class="carousel-caption d-block">
							<!-- <span> <img alt="" src=""> </span> -->
						</div>
					</a>
				</div>
				<div class="carousel-item" style="max-height: 600px;">
					<a href=""> <img class="d-block center-block<!-- w-100 -->"
						src="resources/images/Untitled2.png" alt="Second slide">
						<div class="carousel-caption d-block">
							<!-- <span> <img alt="" src=""> </span> -->
						</div>
					</a>
				</div>
				<div class="carousel-item" style="max-height: 600px">
					<a href=""> <img class="d-block w-100"
						src="resources/images/Untitled1.png" alt="Third slide">
						<div class="carousel-caption d-block">
							<span> <img alt="" src="">
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


	<div class="container text-center" style="width:100%">
		<!-- 상단 이미지배너 -->
		<div class="wrap">
			<div class="first_wrap">
				<div class="first_wrap_i 01">
					<a class="text-secondary" href=""> <img alt="1"
						src="resources/images/musinsa_banner1.jpg">
						
					</a>
				</div>
				<div class="first_wrap_i 02">
					<a class="text-secondary" href=""> <img alt="1"
						src="resources/images/musinsa_banner3.jpg">
					</a>
				</div>
				<div class="first_wrap_i 03">
					<a class="text-secondary" href=""> <img alt="1"
						src="resources/images/musinsa_banner2.jpg">
					</a>
				</div>
			</div>
		</div>

		<div class="second_wrap text-center" style="width:100%">
			<div class="second_wrap_i 01">
				<a class="text-secondary" href="productDetail.do?pid=101a00001"> 
				<img alt="1" src="resources/images/101a00001_1.jpg">
					<br>
					천연황토로 염색한 줄 알았는데 진실은..
					<br>
					9000원
				</a>
			</div>
			<div class="second_wrap_i 02">
				<a class="text-secondary" href=""> <img alt="1"
					src="resources/images/1353727_1_big.jpg">
					<br>
					이것은 네이비인가 군청인가
					<br>
					9900원
				</a>
			</div>
			<div class="second_wrap_i 03">
				<a class="text-secondary" href=""> <img alt="1"
					src="resources/images/1353727_1_big.jpg">
					<br>
					왠지 아까랑 같은거 같다구요?
					<br>
					9990원
				</a>
			</div>
			<div class="second_wrap_i 04">
				<a class="text-secondary" href=""> <img alt="1"
					src="resources/images/1353727_1_big.jpg">
					<br>
					유감스럽게도 남색이었습니다
					<br>
					9999원
				</a>
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