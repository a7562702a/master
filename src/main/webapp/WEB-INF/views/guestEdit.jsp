<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestEdit.jsp] </title>
	<style type="text/css">
	  *{ font-size: 20pt; font-weight: bold; }
	  a{ font-size: 24pt; text-decoration:none; color:blue ; font-family: Comic Sans MS; }
	  a:hover{ font-size: 26pt; text-decoration:underline; color:green ; font-family: Comic Sans MS; }
	</style>
</head>
<body>
 <p>
   <div align="center">
    <img src="resources/images/house.png" width=600 height=200> <p>


	guestEdit.jsp <p>
	<form method="post" name="myform" action="guestUpdateAF.do">
	  수정사번:<input type="text" name="sabun" value="${dto.sabun}" readonly> <br>
	  수정이름:<input type="text" name="name"  value="${dto.name}"> <br>
	  수정제목:<input type="text" name="title" value="${dto.title}"> <br>
	  수정급여:<input type="text" name="pay"   value="${dto.pay}"> <br>
	  수정메일:<input type="text" name="email" value="${dto.email}"> <br>
	    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <input type="submit"  value="서브밋MVC수정"> &nbsp;
	    <input type="reset" value="수정취소">
	</form>
	

	<p>
	<a href="indexBoard.jsp">[index]</a> 
  	<a href="guest.do">[신규등록]</a>
  	<a href="gusetList.do">[전체출력]</a>
  	
  </div>
</body>
</html>






