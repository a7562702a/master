<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardWrite.jsp</title>
	<style type="text/css">
	   *{font-size: 18pt; font-weight: bold; }
	   a{text-decoration:none;font-size: 18pt; font-weight: bold; }
	   a:hover{text-decoration:underline;font-size: 16pt; font-weight: bold; color:blue; }
	</style>
</head>
<body>
	<font color=blue>[boardWrite.jsp]</font> <p>
	 <form action="boardInsert.do" enctype="multipart/form-data" method="post">
	 	이름: <input type=text name="name" value="kim"> <br>
	 	제목: <input type=text name="title" value="LEE"> <br>
	 	내용: <textarea name="content" rows="4" cols="20">bank</textarea> <br>
	 	성별: 
	 	  <input type="radio" name="gender" value="male">남자
	 	  <input type="radio" name="gender" value="female" checked>여자<br>
	 	취미:
	 	  <input type="checkbox" name="hobby" value="game">게임
	 	  <input type="checkbox" name="hobby" value="study">공부
	 	  <input type="checkbox" name="hobby" value="ski" checked>스키
	 	  <input type="checkbox" name="hobby" value="movie" checked>영화 <br>
	
	 	 파일:<input type="file" name="upload_f"> <p>  <!-- img_file_name이름대신 upload__f -->
	 	
	 	  <input type="submit" value="hobby스프링전송">&nbsp;&nbsp;
	 	  <input type="reset" value="입력취소">          
	 </form>

<p>
  	<a href="indexBoard.jsp">[index.jsp]</a>
  	<a href="board.do">[board등록]</a>
  	<a href="boardList.do">[board전체출력]</a>
</body>
</html>













