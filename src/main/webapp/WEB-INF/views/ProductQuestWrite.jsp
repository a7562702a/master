<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardWrite.jsp</title>
	<style type="text/css">
	   *{font-size: 20pt; font-weight: bold; }
	   a{text-decoration:none;font-size: 20pt; font-weight: bold; }
	   a:hover{text-decoration:underline;font-size: 26pt; font-weight: bold; color:blue; }
	</style>
</head>
<body>
	<font color=blue>[boardWrite.jsp]</font> <p>
	 <form action="productQuestInsert.do">
	 	이름: <input type=text name="name" value="kim"> <br>
	 	제목: <input type=text name="title" value="LEE"> <br>
	 	내용: <textarea name="content" rows="4" cols="20">KBbank</textarea> <br>
	 	성별: 
	 	  <input type="radio" name="gender" value="male">남자
	 	  <input type="radio" name="gender" value="female" checked>여자<br>
	 	
	 	  
	 	  <input type="submit" value="저장">&nbsp;&nbsp;
	 	  <input type="reset" value="입력취소">          
	 </form>

<p>
 	<a href="index.jsp">[index.jsp]</a>
  	<a href="board.do">[board등록]</a>
  	<a href="boardList.do">[board출력]</a>

</body>
</html>













