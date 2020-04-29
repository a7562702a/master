<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [orderList.jsp] </title>
	<script type="text/javascript">
     window.onload=function(){
    	 var obj = $("[name=product_price]");
         var chkArray = new Array(); // 배열 선언
         $('input:text[name=product_price]').each(function() { // text의 value 값을 가지고 온다.
             var a =   a + this.value;  //이거대신 변수하나 선언해서 더하면 
         });

         $('#pricetotal').val(a);
         
	</script>

	
</head>
<body>
<div class="container">
<form name="myform" action="">
<font size="15" color="blue" >주문/결제</font>
<hr size="9" color="grey" style="width:60%" align="left">
 <table width=900  border=2  cellspacing=1 >
  <tr bgcolor="orange">
  <td colspan="4">
  <font size="6">상품정보</font>
  </td>
  
  </tr>
  <c:forEach var="order" items="${pid}">

  <tr><td rowspan="6" align="center"><input type="checkbox" name="product_id" value=""></td></tr>
  <tr>
  <td rowspan="5"  align="center" >
    <img  src="${pageContext.request.contextPath}/resources/upload/${order.product_img1}" width="200" height="150" name="upload_f">
  </td>
  </tr>
  <tr><td colspan="2">상품이름:<input type="text" name="product_name" value="${order.product_name}" readonly></td></tr>
  <tr><td colspan="2">상품색상:<input type="text" name="option1" value="${order.product_color}" ></td></tr>
  <tr><td colspan="2">상품사이즈:<input type="text" name="option2" value="${order.product_size}" ></td></tr>
  <tr><td colspan="2">상품가격:<input type="text" name="product_price" id="price" value="${order.product_price }" readonly></td></tr>
  
  </c:forEach>
  <tr><td colspan="3">총금액 : <input type="text" name="price"  id = 'pricetotal' size=10 value=""  readonly></td></tr>
 </table><p>
 
 <hr size="2" color="grey" style="width:60%" align="left" >

 <table width=900  border=1  cellspacing=0>
 <tr bgcolor="lightblue"><td colspan="2"><font size="5">배송정보</font></td></tr>
 <tr>
 <td>이름:</td>
 <td><input type="text" name="user_name" value="user" ></td>
 </tr>
 <tr>
 <td>배송주소:</td>
 <td><input type="text" name="user_address1" value="address1" ></td>
 </tr>
 <tr>
 <td>상세주소:</td>
 <td><input type="text" name="user_address2" value="adress2" ></td>
 </tr>
 <tr>
 <td>연락처:</td>
 <td><input type="text" name="user_phone" value="phone" ></td>
 </tr>
 
   <tr align="center">
  	 <td colspan="5" align="left">
  	  	배송상황: <font color="red">주문중</font>
  	</td>
   </tr>
   <tr>
   <td align="center" colspan="3">
         <input type="submit" value="결제">&nbsp;
  	  	 <input type="reset" value="취소">
  	</td>
  	</tr>
 </table>
 </form>
</div> 
</body>
</html>











