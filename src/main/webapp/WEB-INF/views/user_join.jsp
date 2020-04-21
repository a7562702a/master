<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<form action="Insert_join.do" method="post" name="userjoin_form">
			<h1>Sign Up</h1>
				<input type="text" name="user_id" class="Id" placeholder="id">
				<input type="password" name="user_pwd" class="Address" placeholder="password">
                <input type="text" name="user_name" class="Name" placeholder="Name">
                <input type="text" name="user_phone" class="Tele" placeholder="Number Phone">
                <input type="text" name="user_address1" class="user_address1" placeholder="my_address1">
                <input type="text" name="user_address1" class="user_address2" placeholder="my_address2">
                <input type="email" name="email" class="Email" placeholder="Email">
                <button type="submit" value="Add" name="submit">Submit</button>
            </form>
</body>
</html>