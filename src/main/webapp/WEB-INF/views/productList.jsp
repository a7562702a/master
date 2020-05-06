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
	<!-------- main_menu -------->
	<header>
		<div id="main_bar">
			<c:import url="/main_bar.do" />
		</div>
	</header>

	<!-------- product_list -------->
	<div id="product_list" class="container contents">
		<div class="row row-cols-sm-2 row-cols-md-4 aling-items-center">
			<c:forEach var="product" items="${productList }" varStatus="status">
				<a href="productDetail.do?pid=${product.product_id }" class="text-reset">
					<div class="col card" style="height:inherit;">

						<img src="${product.product_img1 }" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">${product.product_name }</h5>
							<p class="card-text text-muted">
								size: ${product.product_size }<br> color:
								${product.product_color }
							</p>
							<p class="card-text">Price: ${product.product_price }</p>
						</div>

					</div>
				</a>
			</c:forEach>
		</div>

	</div>
</body>
</html>