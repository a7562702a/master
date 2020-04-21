<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [orderList.jsp] </title>
	<style type="text/css">
/* 	  *{ font-size: 18pt;  } */
/* 	  a{ font-size: 18pt; text-decoration:none; color:blue ; font-family: Comic Sans MS; } */
/* 	  a:hover{ font-size: 18pt; text-decoration:underline; color:green ; font-family: Comic Sans MS; } */
	</style>

	<script type="text/javascript">	
	  function clearText(){
		document.myform.keyword.value="";
		document.myform.keyword.focus();
	  }
	</script>
</head>
<body>
<div class="container">
<font size="15" color="blue" >주문/결제</font>
 <table width=900  border=2  cellspacing=1>
  <hr size="9" color="red" style="width:63.7%" align="left"><!-- 1.3rem  使方格里的字全部显示或者调节间距-->
  <tr bgcolor="orange"><td colspan="3"><font size="5">상품정보</font></td></tr>
  <c:forEach var="t" items="1">
  <tr><td rowspan="5" align="center"><input type="checkbox" name="order_num" value=""></td></tr>
  <tr>
  <td rowspan="4" align="center">
    <img  src="resources/images/ddd.gif">
  </td>
  </tr>
  <tr><td>상품이름:코끼리</td></tr>
  <tr><td>상품색상:blue</td></tr>
  <tr><td>상품사이즈:3</td></tr>
  <tr >
  <td colspan="3" align="right">상품수량:4 &nbsp;&nbsp; 상품가격:5</td>
  </tr>
  </c:forEach>
 </table><p>
 
 <hr size="2" color="red" style="width:63.7%" align="left" >
<!--  <img src="resources/images/jiantou.jpg" width="900px" height="80px"> -->
 <table width=900  border=1  cellspacing=0>
 <tr bgcolor="lightblue"><td colspan="2"><font size="5">배송정보</font></td></tr>
 <tr>
 <td>이름:</td>
 <td>Baijin</td>
 </tr>
 <tr>
 <td>배송주소:</td>
 <td>asdafdfsf</td>
 </tr>
 <tr>
 <td>상세주소:</td>
 <td>dsdsafdsfsaㅇㄴㅁㅇㅁㄹㄴㅇ</td>
 </tr>
 <tr>
 <td>연락처:</td>
 <td>010-1234-5678</td>
 </tr>
 
 
 
 
 
 
 
 
   <tr align="center">
  	 <td colspan="5">
  	  <form name="myform2" action="">
  	  	 총금액 : 
  	  	 <input type="text" name="mtotal" size=10 value="total" readonly>
  	  	 <input type="submit" value="결제">
  	  	 <input type="reset" value="취소">
  	  </form>
  	</td>
   </tr>
 </table>
</div> 
</body>
</html>











