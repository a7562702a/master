<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>무신사:제품상세보기</title>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="http://malsup.github.com/jquery.cycle2.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#category").load("main_bar.html");
		$("#footer").load("footer.html");
	});

	$(".option1").onChange(function(){
		$(".option2").value("");
		});

	$(".option2").onChange(function(){
		var o1 = $(".option1").val();
		var o2 = $(".option2").val();
		if(o1==""||o1==null) return;
		if(o2==""||O2==null) return;
		$(".selectedTR p:last").after("
				<tr>
				<td><input type='text' id='product_name' name='product_name' value='${product_name}'>	</td>
				<td><input id='product_option1' name='product_option1' value=o1></td>
				<td><input id='product_option2' name='product_option2' value=o2></td>
				<td><input type='number' id = 'count' name='count' value='1'></td>
				<td><input id = 'product_price' name='product_price' value='${product_price}'></td>
				<td><button class='btn btn-dark btn-sm' id='selectCancle'>선택취소</button></td>
				</tr>
				");
		});
		
	$("#selectCancle").onClick(function(){//취소버튼 클릭


		}); //end

		
	$(".orderBtn").onClick(function(){//바로구매 버튼 클릭시
		var name1 = $("#product_name").val();
		var form = $("#productSelected");
		if(name1==""||name1==null){
		alert('상품을 선택하세요');
		return;
			}
		else{
			form.method="get";
			form.action="order.do";
			form.submit();
			}
		
		});
	
	$(".zzimBtn").onClick(function(){//찜리스트 추가 버튼 클릭시
		var name1 = $("#product_name").val();
		var form = $("#productSelected");
		if(name1==""||name1==null){
		alert('상품을 선택하세요');
		return;
			}
		else{
			form.method="get";
			form.action="zzimInsert.do";
			form.submit();
			}
		}); //end
		

</script>
</head>
<body>
	<div class="conatainer-float" id="category"></div>

	<div class="container" id="productDetail">
		<div class="row row-cols-2">
			<div class="col"><img src="${dto.product_img1}" width="500" height="600"></div>
			<div class="col">
			
			<table>
			<tr>
			<td colspan="2"><h1>${dto.product_name }</h1></td>
			</tr>
			<tr>
			<th> 판매가격 </th>
			<td> ${dto.product_price}</td>			
			</tr>
			<tr>
			<th> 적립금 </th>
			<td> 1% 적립</td>			
			</tr>
			<tr>
			<th> 배송비 </th>
			<td> 무료</td>			
			</tr>
			<tr>
			<th> 당일발송 </th>
			<td> 모든 옵션 가능</td>			
			</tr>
			<tr>
			<td colspan="2">옵션 선택</td>
			</tr>
			<tr>
			<th> 옵션1 </th>
			<td><select class="option1" name="option1" size=20>
				<option value="">---[필수]색상을 선택하세요---</option>
				<c:forEach items="colorOption">
				<option value="${colorOption }"> ${colorOption } </option>
				</c:forEach>
			</select> </td>			
			</tr>
			<tr>
			<th> 옵션2 </th>
				<td><select class="option2" name="option2" size=20>
				<option value="">---[필수]사이즈를 선택하세요---</option>
				<c:forEach items="sizeOption">
				<option value="${sizeOption }"> ${sizeOption } </option>
				</c:forEach>
			</select> </td>			
			</tr>
			</table>
			<form id="productSelected">
			<table class="selectedTR">
			<tr></tr>
			</table>
			<p>
			<div class="row row-cols-2">
			<div class="col"><button type="button" class="btn btn-outline-primary btn-lg orderBtn">바로구매</button></div>
			<div class="col"><button type="button" class="btn btn-outline-warning btn-lg zzimBtn">찜리스트에 추가</button></div>
			</div>
			</form>
			
			
			</div>

		</div>
		<div class="row row-cols-1" id="product_info">
		<p>
		<img src="${product_img1 }">
		<p>
		<img src="${product_img2 }">
		<p>
		${product_desc }
		<p>
		<img src="${product_img3 }">
		<p>
		</div>
		
		<div class="row row-cols-1" id="product_review">
		
		<jsp:include page=" "></jsp:include>
		
		</div>

		<div class="row row-cols-1" id="product_question">
		
		<jsp:include page=" "></jsp:include>
		
		
		
		</div>
		



	</div>


</body>
</html>
