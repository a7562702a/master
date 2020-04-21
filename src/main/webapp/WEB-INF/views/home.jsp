<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MUSINSA STORE</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="MUSINSA, musinsa, 무신사, 남성의류쇼핑몰, 남성의류, 남성코디">
	<meta name="keywords" content="남성의류쇼핑몰, 남성의류, 남자코디, 셔츠, 바지, 슬렉스, 청바지, 신발, 캐주얼">

<!--<link rel="stylesheet" href="Home_css.css">-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="./resources/css/Home_css(bootstrap).css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="http://malsup.github.com/jquery.cycle2.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    
	<script type="text/javascript">
		$(document).ready(function(){
			$("#main_bar").load("../pages/main_bar.html");
			$("#footer").load("../pages/footer.html");
			});
	</script>
</head>
<body>
	<!-- main_menu -->
	<div class="container-float">
	<header class="main_menu">
		<div id="main_bar"></div>
	</header>
	</div>
	<p>
	<div class="contents">
		<!-- main_slider -->
		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
	        <ol class="carousel-indicators">
	            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
	            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
	            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
	        </ol>
	        <div class="carousel-inner" role="listbox">
	            <div class="carousel-item active" style="max-height: 600px">
	                <img class="d-block w-100" src="" alt="First slide">
	                <div class="carousel-caption d-block">
	                    <span>
	                    	<img alt="" src="resources/images/musinsa_main_banner_title1.png">
	                    </span>
	                    <img alt="" src="resources/images/musinsa_main_banner4.jpg">
	                </div>
	            </div>
	            <div class="carousel-item" style="max-height: 600px">
	                <img class="d-block w-100" src="resources/images/musinsa_main_banner3.jpg" alt="Second slide">
	                <div class="carousel-caption d-block">
	                    2
	                </div>
	            </div>
	            <div class="carousel-item" style="max-height: 600px">
	                <img class="d-block w-100" src="resources/images/musinsa_main_banner2.jpg" alt="Third slide">
	                <div class="carousel-caption d-block">
	                    3
	                </div>
	            </div>
	        </div>
	        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
	            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	            <span class="sr-only">Previous</span>
	        </a>
	        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
	            <span class="carousel-control-next-icon" aria-hidden="true"></span>
	            <span class="sr-only">Next</span>
	        </a>
	    </div>
    </div>
</body>
</html>