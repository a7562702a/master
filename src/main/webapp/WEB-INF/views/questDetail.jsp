<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>   
<meta charset="UTF-8">
<title> [questDetail.jsp] </title>
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
    <td colspan="2"> [님] 상세데이터 출력 </td>
  </tr>
  
  <tr>
  	<td> 고유번호 : </td>
  </tr>
  
  <tr> <td> 제목 :   </td>  </tr>
  <tr> <td> 내용 :   </td>  </tr>
  <tr> <td> 성별 :  </td>  </tr>
  <tr> <td> 취미 :  </td>  </tr>
  
  <tr align="center">
  	<td colspan="2">  
  		<a href="board.do">[등록]</a>
  		<a href="boardList.do">[출력]</a>
  		<a href="boardDelete.do?idx=${dto.hobby_idx}">[삭제]</a>
  		<a href="boardEdit.do?idx=${dto.hobby_idx}">[수정]</a>
  		<a href="index.jsp">[index]</a>
  		
  	</td>
  </tr>
</table> 
 
 	<!-- jstl태그 import -->
 	
</body>
</html>












