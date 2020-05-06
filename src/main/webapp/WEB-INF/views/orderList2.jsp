<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title> [orderList.jsp] </title>
<script type="text/javascript">
  
        
</script>
<link rel="stylesheet" href="./resources/css/Home_css.css">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
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
</style>	
</head>
<body>
<div class="container contents">

<form name="myform" action="#" method="get" >
<font size="15" color="blue" >주문목록.배송조회</font>
<hr size="9" color="grey" style="width:100%" align="left">

<input type="hidden" name="oid" value="aaaa">

 
 <hr size="2" color="grey" style="width:100%" align="left" >

 <table width=900  border=0  cellspacing=1 align="center">
 <tr bgcolor="lightblue"><td colspan="2"><font size="5">배송정보</font></td></tr>
 <tr>
 <td>이름:${users.user_name} </td>
 </tr>
 <tr>
 <td>배송주소:${users.user_address1}</td>
 </tr>
 <tr>
 <td>상세주소:${users.user_address2}</td>
 </tr>
 <tr>
 <td>연락처:${users.user_phone}</td>
 </tr>
 
 <tr align="center" >
	 <td colspan="3" align="left" >
	  	배송상황: "1"
	 </td >
 </tr>
  
  
 </table><p>
 
  <table width=900  border=0 cellspacing=2 align="center">
  
  <tr bgcolor="orange">
  <td colspan="3">
  <font size="6">주문상품정보</font>
  </td>
  </tr>
  
  <c:set var="total" value="0" ></c:set>
  <c:forEach var="order" items="${order}" varStatus="status">
  <tr>
  <td rowspan="5" align="center">${order.order.num }</td>
  <td rowspan="5" align="center"><img  src="${order.product_img}" width="200" height="150" class="scale"  ></td>
  <td>상품번호 &nbsp;:${order.product_id}</td>
  </tr>
  <tr><td >상품가격 &nbsp;:<span class="total">${order.price }</span>원</td></tr>
  <tr><td >상품이름 &nbsp;:${order.product_name}</td></tr>
  <tr><td >상품옵션1:${order.option1}</td></tr>
  <tr><td >상품옵션2:${order.option2}</td></tr>
  <input type="hidden" value="${total=total+order.price }">
  </c:forEach>

  <tr><td colspan="3"> 총금액: ${total }<span id="sum">0</span> 원</td></tr>
  
 </table><p>
 </form>
</div> 
</body>
</html>











