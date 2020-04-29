<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>무신사:제품상세보기</title>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style type="text/css">
#selectedTR {
	width:450px;
	text-line:1.1;
	text-color:gray;
	text-align: center;
}
</style>

<script type="text/javascript">


	$(function() {
		$("#option1").on("change", function(){
			$("#option2").val("");
		});

		$("#option2").on("change", function(){
			var o1 = $("#option1").val();
			var o2 = $("#option2").val();
			if(o1==""||o1==null) return;
			else if(o2==""||o2==null) return;
			else{
				$("#selectedTR > tbody:last").append("<tr><td><input type='text' readonly class='form-control-plaintext' id='product_name' name='product_name' value='${dto.product_name}'></td>"
						+"<td><input id='product_option1' readonly  class='form-control-plaintext' name='product_option1' value='"+o1+"'></td>"
						+"<td><input id='product_option2' readonly  class='form-control-plaintext' name='product_option2' value='"+o2+"'></td>"
						+"<td width='50'><input type='number'class='form-control' id = 'count' name='count' value='1'></td>"
						+"<td><input id = 'product_price' readonly  class='form-control-plaintext' name='product_price' value='${dto.product_price}'></td>"
						+"<td><button type='button' class='btn btn-dark btn-sm' id='selectCancle'>X</button></td></tr>");
				$("#option1").val("");
				$("#option2").val("");
			}
			}); 

		
		 $("#selectCancle").click(function(e){//취소버튼 클릭
			e.preventDefault();
			alert('취소버튼클릭:');
			$(this).parent().parent().remove();
				}); //end 

		$("button#orderBtn").click(function(e) {//바로구매 버튼 클릭시
			e.preventDefault();
			var name1 = $("#product_name").val();
			var form = $("form#productSelected");
			if (name1 == "" || name1 == null) {
				alert('상품을 선택하세요');
				return;
			} else {
				form.attr("action", "order.do");		
				form.submit();
			}

		});

		$("button#zzimBtn").click(function(e) {//찜리스트 추가 버튼 클릭시
			e.preventDefault();
			var name1 = $("#product_name").val();
			var form = $("#formproductSelected");
			if (name1 == "" || name1 == null) {
				alert('상품을 선택하세요');
				return;
			} else {
				form.attr("action", "zzimInsert.do");
				form.submit();
			}
		}); //end

	});//function end.

	/*function deleteSelect(hi){
		alert('취소버튼클릭:'+hi.html());
		}*/
</script>
</head>
<body>
	<!-- main_menu -->
	<header>
		<div id="main_bar">
			<c:import url="/main_bar.do" />
		</div>
	</header>
	
	<div class="conatainer-float" id="category"></div>

	<div class="container" id="productDetail">
		<div class="row row-cols-2">
			<div class="col">
				<img src="${dto.product_img1}" width="500" height="600">
			</div>
			<div class="col">

				<table>
					<tr>
						<td colspan="2"><h1>${dto.product_name}</h1></td>
					</tr>
					<tr>
						<th>판매가격</th>
						<td >${dto.product_price}</td>
					</tr>
					<tr>
						<th>적립금</th>
						<td>1% 적립</td>
					</tr>
					<tr>
						<th>배송비</th>
						<td>무료</td>
					</tr>
					<tr>
						<th>당일발송</th>
						<td>모든 옵션 가능</td>
					</tr>
					<tr>
						<td colspan="2"><hr></td>
					</tr>
					<tr>
						<td colspan="2">옵션 선택</td>
					</tr>
					<tr>
						<th>옵션1</th>
						<td><select id="option1" name="option1" size=1 >
								<option value="">---[필수]색상을 선택하세요---</option>
								<c:forTokens items="${dto.product_color }" var="colorOption"
									delims=",">
									<option value="${colorOption }">${colorOption }</option>
								</c:forTokens>
						</select></td>
					</tr>
					<tr>
						<th>옵션2</th>
						<td><select id="option2" name="option2" size=1>
								<option value="">---[필수]사이즈를 선택하세요---</option>
								<c:forTokens items="${dto.product_size }" var="sizeOption"
									delims=",">
									<option value="${sizeOption }">${sizeOption }</option>
								</c:forTokens>
						</select></td>
					</tr>
					<tr>
						<td colspan="2"><hr></td>
					</tr>
				</table>
				
				
<!-----    선택한 상품 출력, get form   ----->

				<form id="productSelected" class="form-group" action="" method="get">
				<input type="hidden" name="pid" value="${dto.product_id}">
				<input type="hidden" name="pimg" value="${dto.product_img1 }">
					<table id="selectedTR" >
					<tbody></tbody>
					</table>
					<p>
					<div>

						<button type="button" class="btn btn-outline-primary btn-lg"
							id="orderBtn">바로구매</button>

						<button type="button" class="btn btn-outline-warning btn-lg"
							id="zzimBtn">찜리스트에 추가</button>

					</div>
				</form>


			</div>

		</div>
		
<!------   상품 정보     ------->
		
		<div class="row row-cols-1" id="product_info">
		
			<p>
			<hr>
			<h4>제품 상세정보</h4>
			<br><br>
			
				<img src="${dto.product_img1 }" style="width:50%; height:50%; margin:1rem;">
			<br><br>
				<img src="${dto.product_img2 }" style="width:50%; height:50%; margin:1rem;">
			<br><br>${dto.product_desc }
			<br><br>
				<img src="${dto.product_img3 }" style="width:50%; height:50%; margin:1rem;">
			<br><br><br><br>
			<p>
		</div>
		
		
		
<!------   상품 문의, 리뷰 게시판    ------->		

		<%-- 		<div class="row row-cols-1" id="product_review">
		<c:import url="/productReviewList.do" />
		
		</div>

		<div class="row row-cols-1" id="product_question">
		<c:import url="/productQuestList.do" />
		
		</div>
		 --%>



	</div>


</body>
</html>
