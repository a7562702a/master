
<%@ page language="java"
         contentType="text/html; charset=UTF-8"   
         pageEncoding="UTF-8"  %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestWrite.jsp] </title>
	<style type="text/css">
	  *{ font-size: 16pt; font-weight: bold; }
	  a{ font-size: 20pt; text-decoration:none; color:blue ; font-family: Comic Sans MS; }
	  a:hover{ font-size: 20pt; text-decoration:underline; color:green ; font-family: Comic Sans MS; }
	</style>

	<script type="text/javascript">
	
	</script>
</head>
<body>
	guestWrite.jsp <p>
	<form  name="myform" action="guestInsert.do" >
		사번: <input type="text" name="sabun"> <br>
		이름: <input type="text" name="name" value="rain" > <br>
		제목: <input type="text" name="title" value="spring"> <br>
		급여: <input type="text" name="pay"  value="72"> <br>
		메일: <input type="text" name="email" value="bc@goo.net"> <br>
		    <input type="submit" value="서브밋스프링저장"> &nbsp;
		    <input type="reset" value="입력취소">
	</form>
	
	<p>
	<a href="indexGuest.jsp">[index]</a> 
  	<a href="guest.do">[신규등록]</a>
  	<a href="guestList.do">[전체출력]</a>
</body>
</html>






