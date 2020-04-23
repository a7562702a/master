<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<meta charset="UTF-8">
<title> [guestList.jsp] </title>
	<style type="text/css">
	  *{ font-size: 18pt;  }
	  a{ font-size: 18pt; text-decoration:none; color:blue ; font-family: Comic Sans MS; }
	  a:hover{ font-size: 18pt; text-decoration:underline; color:green ; font-family: Comic Sans MS; }
	</style>

	<script type="text/javascript">	

	  $( document ).ready( function() {
	        $( '.check_all' ).click( function() {
	          $( '.zzimcheck' ).prop( 'checked', this.checked );
	        } );
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
          var up = Number($('#count'+cnt).val());
          var pr = Number($('#price'+cnt).val());
        	  pr = pr / up;
              up = up+1;
              if(up <100){
            	  pr = pr * up;
                  
                  $('#count'+cnt).val(up);
                  $('#price'+cnt).val(pr); 
              }else{
                  alert("수량이 100개를 넘었습니다 다시 확인해주세요.");
              }

              
  
      }

      
      function downCount(cnt){
    	  var up = Number($('#count'+cnt).val());
          var pr = Number($('#price'+cnt).val());
          pr = pr / up;
          up = up-1;

          if(up>0){
        	  pr = pr * up;
              
              $('#count'+cnt).val(up);
              $('#price'+cnt).val(pr);
          }else{
        	  alert("수량이 1개보다 작습니다. 다시 확인해주세요.");
          }

         
      }
	</script>
</head>
<body>
<div class ="container">
	<form id ="selectDelete" action ="zzimSelectDelete.do">
		<input type="hidden" name="hiddenValue" id="hiddenValue" value=""/>
		<input type="hidden" name="cnt" id ="zzimcount" value=""/>
	</form>
	<table width=80% border=1 cellspacing=0>
		<tr align="right">
	 		<td colspan="7"> 찜한 갯수 : &nbsp;</td>
		</tr>
		
		<tr bgcolor="pink" align="center">
			<td width="5%"><input type="checkbox" name="all" class="check_all"></td> 
			<td width="10%">사진</td>
			<td width="35%">제품명</td>
			<td width="20%">옵션</td>
			<td width="10%">수량</td>
			<td width="10%">가격</td>
			<td width="10%">취소하기</td>
		</tr>
		<c:forEach var ="zdto" items="${list}" varStatus="status" >
		<c:set var = "price" value ="${zdto.price*zdto.count}"> </c:set>
			<tr align="center">
				<td align="center"  style ="width: 50px "><input type="checkbox" class ="zzimcheck" name="ab1" value="${zdto.zzim_num}"></td>
				<td><img src ="resources/images/1.jpg" width="75px" height="75px"></td>
				<td> <a href ="#">${zdto.product_name}</a> </td>
				<td> 옵션1 : ${zdto.option1 }<br> 옵션2 : ${zdto.option2 }</td>
				<td><input type="button" value ="-" onclick="downCount(${status.count});">&nbsp;&nbsp;<input type ="label" id ="count${status.count}" style="text-align:center; width:30px; none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;" value ="${zdto.count}" disabled="disabled" >&nbsp;&nbsp;<input type="button" value ="+" onclick="upCount(${status.count});"></td>
				<td><input type ="label" id ="price${status.count}" style="text-align:center; none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;" value ="${price}" disabled="disabled" ></td>
				<td><a href ="zzimDelete.do?id=${zdto.zzim_num}">삭제하기</a></td>
				
			</tr>
		
		</c:forEach>
		
 	</table>
	<p>
	
	<input type ="button" value ="선택상품 삭제" onclick="fnGetdata();">
	<input type ="button" value ="쇼핑 계속">
	<input type ="button" value ="주문하기" >
	
	<br>


</div>
</body>
</html>











