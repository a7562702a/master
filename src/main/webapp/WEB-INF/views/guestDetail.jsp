<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>   
<meta charset="UTF-8">
<title> [guestDetail.jsp] </title>
	<style type="text/css">
	  *{ font-size: 16pt; font-weight: bold; }
	  a{ font-size: 16pt; text-decoration:none; color:blue ; font-family: Comic Sans MS; }
	  a:hover{ font-size: 18pt; text-decoration:underline; color:green ; font-family: Comic Sans MS; }
	</style>

	<script type="text/javascript">
	</script>
</head>
<body>
 
<table width='700' border='1' cellspacing='0' cellpadding=5>
  <tr align="center">
    <td colspan="2"> [${dto.name}님] 상세데이터 출력 </td>
  </tr>
  
  <tr>
  	<td rowspan="5"  align="center" width=300> 
  	  <img src="resources/images/house.png" height=200 width=300> 
  	</td>
  	<td> 사번 : ${dto.sabun}  </td>
  </tr>
  
  <tr> <td> 제목 :  ${dto.title} </td>  </tr>
  <tr> <td> 날짜 :  ${dto.wdate} </td>  </tr>
  <tr> <td> 급여 :  ${dto.pay} </td>  </tr>
  <tr> <td> 메일 :  ${dto.email} </td>  </tr>
  
  <tr align="center">
  	<td colspan="2">  
  		<a href="guest.do">[등록]</a>
  		<a href="guestUpdateBF.do?idx=${dto.sabun}">[수정]</a>
  		<a href="guestDelete.do?idx=${dto.sabun}">[삭제]</a>
  		<a href="guestList.do">[출력]</a>
  		<a href="indexGuest.jsp">[index]</a>
  	</td>
  </tr>
</table> 
 
 	
 	
</body>
</html>












