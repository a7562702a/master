<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>

<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<meta charset="UTF-8">
<title> [guestList.jsp] </title>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/Home_css.css">

	<script type="text/javascript">	

	  $( document ).ready( function() {
	        $( '.check_all' ).click( function() {
	          $( '.zzimcheck' ).prop( 'checked', this.checked );
	        } );

	        $("#order").click(function(){ 
				
				var rowData = new Array();
				var tdArr = new Array();
				var checkbox = $("input:checkbox[name=ab1]:checked");
				var form = $("form#productSelected");
				// 체크된 체크박스 값을 가져온다
				checkbox.each(function(i) {
		
					// checkbox.parent() : checkbox의 부모는 <td>이다.
					// checkbox.parent().parent() : <td>의 부모이므로 <tr>이다.
					var tr = checkbox.parent().parent().eq(i);
					var td = tr.children();
					
					// 체크된 row의 모든 값을 배열에 담는다.
					rowData.push(tr.text());
					
					// td.eq(0)은 체크박스 이므로  td.eq(1)의 값부터 가져온다.
					var id = td.eq(1).children().eq(2).val();
					var img1 = td.eq(1).children().eq(1).val();     //text()+", "
					var product = td.eq(2).text();
					var option = td.eq(3).text().split("/");
					var option1 = option[0].replace("옵션1 : ","");
					var option2 = option[1].replace("옵션2 : ","");
					var count = td.eq(4).children().eq(1).val();    //.text()+", ";
					var price = td.eq(5).children().eq(0).val();


					
					console.log("id : " + id);
					console.log("img1 : " + img1);
					console.log("product : " + product);
					console.log("option1 : " + option1);
					console.log("option2 : " + option2);
					console.log("count : " + count);
					console.log("price : " + price);

					$("#selectedTR > tbody:last")
					.append(
							"<tr><td><input type='hidden' readonly class='form-control-plaintext' id='product_id' name='product_id' value='"+id+"'></td>"
									+ "<td><input type='hidden' readonly class='form-control-plaintext' id='product_img' name='product_img' value='"+img1+"'></td>"
									+ "<td><input type='hidden' readonly class='form-control-plaintext' id='product_name' name='product_name' value='"+product+"'></td>"
									+ "<td><input type='hidden' id='product_option1' readonly  class='form-control-plaintext' name='product_option1' value='"+option1+"'></td>"
									+ "<td><input type='hidden' id='product_option2' readonly  class='form-control-plaintext' name='product_option2' value='"+option2+"'></td>"
									+ "<td width='50'><input type='hidden' class='form-control' id = 'count' name='count' value='"+count+"'></td>"
									+ "<td><input type='hidden' id = 'product_price' readonly  class='form-control-plaintext' name='product_price' value='"+price+"'></td></tr>");

				});

				form.attr("action", "order.do");
				form.submit();
			});

			
	  } );

	  function fnGetdata(){
          var obj = $("[name=ab1]");
          var chkArray = new Array(); // 배열 선언
          var cnt =0;
   
          $('input:checkbox[name=ab1]:checked').each(function() { // 체크된 체크박스의 value 값을 가지고 온다.
              chkArray.push(this.value);  //이거대신 변수하나 선언해서 더하면 
              cnt++;
          });
          $('#hiddenValue').val(chkArray);
          $('#zzimcount').val(cnt);
          
          alert($('#hiddenValue').val()); // 선택된 벨류값 확인
          alert($('#zzimcount').val());  // 선택된 갯수 확인
			
          $('#selectDelete').submit();
      }

      function upCount(cnt){
          var up = Number($('#count'+cnt).val()); // 변경전 수량 가져오기
          var pr = Number($('#price'+cnt).val()); // 변경전 가격 가져오기
          var ptotal = Number($('#totalprice').val()); // 변경전 총금액 가져오기
        
        	  pr = pr / up; // 1개당 가격 구하기
        	 
              up = up+1;  // 수량 증가
              if(up <100){
            	  ptotal = ptotal + pr; //총 금액에 증가된 가격 더하기

            	  pr = pr * up; //증가된 수량으로 가격  변경
                  
                  $('#count'+cnt).val(up);
                  $('#price'+cnt).val(pr); 
                  $('#totalprice').val(ptotal);
              }else{
                  alert("수량이 100개를 넘었습니다 다시 확인해주세요.");
              }

              
  
      }
      
      function downCount(cnt){
    	  var up = Number($('#count'+cnt).val());
          var pr = Number($('#price'+cnt).val());
          var ptotal = Number($('#totalprice').val());
          
          pr = pr / up;
          up = up-1;

          if(up>0){

        	  ptotal = ptotal - pr;
        	  
        	  pr = pr * up;
              
              $('#count'+cnt).val(up);
              $('#price'+cnt).val(pr);
              $('#totalprice').val(ptotal);
          }else{
        	  alert("1개 보다 작은 수량을 선택할 수 없습니다. 수량을 확인해주세요.");
          }

         
      }
	</script>
</head>
<body>
<div class="container contents">
	<div  align="left" style="margin-left: 14%; background-color: #f9f9fe; padding:1%; padding-left:2%; padding-right:2%; border-radius: 0  20px 20px 0;" >
	
	<div>
		<h1 align="center"> ZZIM LIST</h1>
	</div>
	<div>
		<form id ="selectDelete" action ="zzimSelectDelete.do">
			<input type="hidden" name="hiddenValue" id="hiddenValue" value=""/>
			<input type="hidden" name="cnt" id ="zzimcount" value=""/>
		</form>
		<table width=100% border=1 cellspacing=0>
	<!-- 		<tr align="right"> -->
	<!-- 	 		<td colspan="7"> 찜한 갯수 : &nbsp;</td> -->
	<!-- 		</tr> -->
			
			<tr bgcolor="pink" align="center">
				<td width="5%"><input type="checkbox" name="all" class="check_all"></td> 
				<td width="10%">사진</td>
				<td width="35%">제품명</td>
				<td width="20%">옵션</td>
				<td width="10%">수량</td>
				<td width="10%">가격</td>
				<td width="10%">취소하기</td>
			</tr>
			<c:set var = "total" value ="0"></c:set>
			
			<c:forEach var ="zdto" items="${list}" varStatus="status" >
			<c:set var = "price" value ="${zdto.price}"> </c:set>
			<tr align="center">
				<td align="center"  style ="width: 50px "><input type="checkbox" class ="zzimcheck" name="ab1" value="${zdto.zzim_num}"></td>
				<td><img src ="${zdto.img1}" width="75px" height="75px"><input type="hidden" value ="${zdto.img1}"><input type="hidden" value ="${zdto.product_id}"></td>
				<td> <a href ="#">${zdto.product_name}</a> </td>
				<td> 옵션1 : ${zdto.option1 } /<br> 옵션2 : ${zdto.option2 }</td>
				
				<td>
				<input type="button" value ="-" onclick="downCount(${status.count});">&nbsp;&nbsp;
				<input type ="label" id ="count${status.count}" style="text-align:center; width:30px; none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;" value ="${zdto.count}" disabled="disabled" >&nbsp;&nbsp;
				<input type="button" value ="+" onclick="upCount(${status.count});">
				</td>
				
				<td><input type ="label" id ="price${status.count}" style="text-align:center; none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;" value ="${price}" disabled="disabled" ></td>
				<td><a href ="zzimDelete.do?id=${zdto.zzim_num}">삭제하기</a></td>
			</tr>
			<input type="hidden" value ="${total = total + zdto.price }">
			</c:forEach>
			<tr >
				<td colspan = "7" align="right">총금액 : <input type ="text" id ="totalprice" value ="${total}" disabled="disabled"></td>
			</tr>	
	 	</table>
	</div>
	<div>
		<input type ="button" value ="선택상품 삭제" onclick="fnGetdata();">
		<input type ="button" value ="쇼핑 계속">
		<input type ="button" value ="주문하기" id ="order">
	</div>
	
	<form id="productSelected" class="form-group" action="" method="get">
		<table id="selectedTR">
			<tbody></tbody>
		</table>	
	</form>
</div>
</div>
</body>
</html>
