<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	 <div class="container">
 		<form action="Insert_m_join.do" method="post" name="userjoin_form">
			<h1>Sign Up</h1>
			<ul>
				<li><input type="text" 		name="user_id" 			class="Id" 				placeholder="id"></li>
				<li><input type="password" 	name="user_pwd" 		class="PWD" 			placeholder="password"></li>
               	<li><input type="text" 		name="user_name" 		class="Name" 			placeholder="Name"></li>
               	<li><input type="text" 		name="user_phone" 		class="Tele" 			placeholder="Number Phone"></li>
               	<li><input type="text" 		name="user_address1"	class="user_address1" 	placeholder="my_address1"></li>
               	<li><input type="text" 		name="user_address2" 	class="user_address2" 	placeholder="my_address2"></li>
               	<li><input type="email" 	name="user_email" 		class="Email" 			placeholder="Email"></li>
               	<li><button type="submit" value="Add" name="submit">Submit</button>
               </ul>
        </form>
        
   <a href="km_Test_File.jsp">[index.jsp]</a>
   <a href="Join.do">[회원가입]</a>
   <a href="Detail_join.do?idx=aaaa">[개인정보]</a>
   <a href="login.do">[login.do]</a>
   <a href="logout.do">[로그아웃]</a>
	</div>
	
</body>
</html>