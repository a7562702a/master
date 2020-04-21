<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>무신사:제품상세보기</title>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#category").load("main_bar.html");
		$("#footer").load("footer.html");
	});
</script>
</head>
<body>
	<div class="conatainer-float" id="category"></div>

	<div class="container" id="productDetail">
		<div class="row row-cols-2">
			<div class="col">상품 대표 이미지</div>
			<div class="col">주문서</div>

		</div>
		<div class="row row-cols-1" id="product_info"></div>
		<div class="row row-cols-1" id="product_review"></div>

		<div class="row row-cols-1" id="product_review"></div>



	</div>


</body>
</html>
