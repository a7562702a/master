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
 		<form action="UpdateAF_join.do" method="post" name="userjoin_form">
			<h1>회원정보 수정</h1>
			<ul>
				<li><input type="text" 		name="user_id" 			class="user_id" 		value="${dto.user_id}" readonly></li>
				<li><input type="password" 	name="user_pwd" 		class="user_pwd" 		value="${dto.user_pwd}"></li>
               	<li><input type="text" 		name="user_name" 		class="user_name" 		value="${dto.user_name}" readonly></li>
               	<li><input type="text" 		name="user_phone" 		class="user_phone" 		value="${dto.user_phone}"></li>
               	<li><input type="text" 		name="user_address1"	class="user_address1" 	value="${dto.user_address1}"></li>
               	<li><input type="text" 		name="user_address2" 	class="user_address2" 	value="${dto.user_address2}"></li>
               	<li><input type="email" 	name="user_email" 		class="Email" 			value="${dto.user_email}"></li>
               	<li><button type="submit" value="Add" name="submit">Submit</button>
               </ul>
        </form>
   <a href="km_Test_File.jsp">[index.jsp]</a>
   <a href="Join.do">[회원가입]</a>
   <a href="Detail_join.do?uid=aaaa">[개인정보]</a>
   <a href="login.do">[login.do]</a>
   <a href="logout.do">[로그아웃]</a>
	</div>
</body>
</html>