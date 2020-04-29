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
.nav_cs ul li {
	list-style: none;
	padding-left: 0px;
	float: left;
	width: <%= 100/6%>%;
}

#customer_table1 ul li {
	list-style: none;
	padding-left: 0px;
	float: left;
	width: 10%;
}

#customer_table1 ul li:last-child {
	width: 70%;
}


#customer_table2 ul li {
	list-style: none;
	padding-left: 0px;
	float: left;
	width: 10%;
}

#customer_table2 ul li:last-child {
	width: 70%;
}


.btn-link {
	width: 100%;
}
</style>
</head>

<body>
	<!-- main_menu -->
<!-- 	<header> -->
<!-- 		<div id="main_bar"> -->
<%-- 			<c:import url="/main_bar.do" /> --%>
<!-- 		</div> -->
<!-- 	</header> -->


	<div class="container">
		<div align="center">
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
<br>
		<!-- 제품문의 -->
		<div align="right">문의갯수: ${Gtotal}/${GGtotal} &nbsp;</div>
		<br>
		<div id="customer_table1">
			<div class="accordion" id="accordionExample">
				<div class="card">
					<div class="card-header" id="headingOne">
						<h5 class="mb-0">
							<button class="btn btn-link" type="button" data-toggle="collapse"
								data-target="#collapseOne" aria-expanded="true"
								aria-controls="collapseOne">
								<ul>
									<li>번호</li>
									<li>분류</li>
									<li>제목</li>
								</ul>
							</button>
						</h5>
					</div>
				</div>
			</div>
		</div>
		<div id="customer_table2">
			<c:forEach var="customerdto" items="${listcustomer}">
				<div class="accordion" id="accordionExample">
					<div class="card">
						<div class="card-header" id="headingOne">
							<h5 class="mb-0">
								<button class="btn btn-link" type="button"
									data-toggle="collapse" data-target="#collapseOne"
									aria-expanded="true" aria-controls="collapseOne">
									<ul>
										<li>${customerdto.qna_Num}</li>
										<li>${customerdto.qna_Kategorie}</li>
										<li>${customerdto.qna_title}</li>
									</ul>
								</button>
							</h5>
						</div>

						<div id="collapseOne" class="collapse show"
							aria-labelledby="headingOne" data-parent="#accordionExample">
							<div class="card-body">${customerdto.qna_detail}</div>
						</div>
					</div>
				</div>
			</c:forEach>

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