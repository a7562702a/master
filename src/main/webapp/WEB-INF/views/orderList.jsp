<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30=" crossorigin="anonymous"></script>
<script type="text/javascript" src="resources/script/cart.js" />
<meta charset="UTF-8">
<title> [orderList.jsp] </title>
<script type="text/javascript">
  
        
</script>
<style type="text/css">
.scale{
transform:scale(1);
-webkit-transform:scale(1);
-moz-transform:scale(1);
-ms-transform:scale(1);
-o-transform:scale(1);
transition:all 0.1s ease-in-out;
}
.scale:hover{
transform:scale(1.2);
-webkit-transform:scale(1.2);
-moz-transform:scale(1.2);
-ms-transform:scale(1.2);
-o-transform:scale(1.2);
}
.sa{font-size:12pt;color:red;}
.b{margin-left:400pt;}
</style>	
</head>
<body>
<div class="container">

<form name="myform" action="orderInsert.do" method="get" >
<font size="15" color="blue" >주문/결제</font>

<hr size="9" color="grey" style="width:100%" align="left">

<!-- <input type="hidden" name="oid" value="aaaa"> -->
 <table width=900  border=1 cellspacing=2 align="center">
  
  <tr bgcolor="orange">
  <td colspan="3">
  <font size="6">상품정보</font>
 
  </td>
  </tr>
  
  <c:set var="total" value="0" />
  <c:forEach var="order" items="${product}" varStatus="status">
  
  <tr>
  <td rowspan="5" align="center">
  <font  color="2" >NO:${order.count}</font>
  <input type="hidden" name="count" value="${order.count }"></td>
  <td rowspan="5" align="center"><img  src="${order.product_img1}" width="200" height="150" class="scale"  >
  <input type="hidden" name="product_img" value="${order.product_img1 }">
  </td>
  
  <td>상품번호 &nbsp;: <input type="text" name="product_id" value="${order.product_id}" readonly></td>
  </tr>
  <tr><td >상품가격 &nbsp;:<input type="text" name="price" value="${order.product_price }"readonly></td></tr>
  <tr><td >상품이름 &nbsp;:<input type="text" name="product_name" value="${order.product_name}"readonly></td></tr>
  <tr><td >상품옵션1:<input type="text" name="option1" value="${order.product_color}"readonly></td></tr>
  <tr><td >상품옵션2:<input type="text" name="option2" value="${order.product_size}"readonly></td></tr>
  <input type="hidden" value="${total=total+order.product_price }">
  </c:forEach>

  <tr><td colspan="3"> 총금액: <input type="text" value="${total }"readonly></td></tr>
  
 </table><p>
 
 <hr size="2" color="grey" style="width:100%" align="left" >

 <table width=900  border=1  cellspacing=0 align="center">
 <tr bgcolor="lightblue"><td colspan="2"><font size="5">배송정보</font></td></tr>
 <tr>
 <td>이름:</td>
 <td><input type="text" name="user_name" value="${user.user_name }" readonly></td>
 </tr>
 <tr>
 <td>배송주소:</td>
 <td><input type="text" name="user_address1" value="${ user.user_address1}" readonly></td>
 </tr>
 <tr>
 <td>상세주소:</td>
 <td><input type="text" name="user_address2" value="${ user.user_address2}" readonly></td>
 </tr>
 <tr>
 <td>연락처:</td>
 <td><input type="text" name="user_phone" value="${ user.user_phone}" readonly></td>
 </tr>
 
   <tr align="center" >
  	 <td colspan="3" align="left" >
  	  	배송상황: <input type="text" name="status" value="주문중" class="sa" readonly >
  	</td  >
   </tr>
  
   <tr>
   <td align="center" colspan="3">
         <input type="submit" value="결제">&nbsp;
  	  	 <input type="reset" value="취소" onclick="location.href='home.do'">
  	</td>
  	</tr>
 </table>
 </form>
</div> 
</body>
</html>
