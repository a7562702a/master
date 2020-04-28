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


</head>

<body>
	<!-- main_menu -->
	<header>
		<div id="main_bar">
			<c:import url="/main_bar.do" />
		</div>
	</header>

	<!-- 
	<div class="contents">
	
	</div>
 -->

	<div class="container">
		<div>
			<h1>
				<a href="">CUSTOMER CENTER</a>
			</h1>
		</div>


		<div class="nav_cs">
			<ul>
				<li><a>자주묻는질문</a></li>
				<li><a>상품관련문의</a></li>
				<li><a>입금/재결제</a></li>
				<li><a>발송전 변경/취소</a></li>
				<li><a>배송/기타</a></li>
				<li><a>교환/반품</a></li>
			</ul>

		</div>

		<!--  -->
		<div>
			<table width=800 border=1 cellspacing=0>
				<tr align="right">
					<td colspan="3">레코드갯수: ${Gtotal}/${GGtotal} &nbsp;</td>
				</tr>

				<tr>
					<td>번호</td>
					<td>분류</td>
					<td>제목</td>
				</tr>

				<c:forEach var="dto_customer" items="${list_customer}">
					<div class="accordion" id="accordionExample">
						<div class="card">
							<div class="card-header" id="headingOne">
								<h5 class="mb-0">
									<button class="btn btn-link" type="button"
										data-toggle="collapse" data-target="#collapseOne"
										aria-expanded="true" aria-controls="collapseOne">
										<tr>
											<td>${dto_customer.QnA_num}</td>
											<td>${dto_customer.QnA_Kategorie}</td>
											<td>${dto_customer.QnA_title}</td>
										</tr>
									</button>
								</h5>
							</div>

							<div id="collapseOne" class="collapse show"
								aria-labelledby="headingOne" data-parent="#accordionExample">
								<div class="card-body">${dto_customer.QnA_detail}</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</table>

		</div>





				<!-- footer -->
				<footer>
					<div id="footer">
						<c:import url="/footer.do" />
					</div>
				</footer>
</body>
</html>