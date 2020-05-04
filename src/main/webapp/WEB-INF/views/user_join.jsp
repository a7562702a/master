<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>MUSINSA STORE</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="MUSINSA, musinsa, 무신사, 남성의류쇼핑몰, 남성의류, 남성코디">
<meta name="keywords"
	content="남성의류쇼핑몰, 남성의류, 남자코디, 셔츠, 바지, 슬렉스, 청바지, 신발, 캐주얼">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/Home_css.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="http://malsup.github.com/jquery.cycle2.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>



<script type="text/javascript">
  function chk() {
	  	//아이디 입력조건
	  	var id_pattern = /^[a-zA-Z0-9_-]{4,9}$/;
		var userid = document.userjoin_form.user_id;
		var useridStr = userid.value;
		var useridLen = useridStr.length;
		if(useridStr ==''){
			document.getElementById('user_id').setCustomValidity('ID 입력해주세요');
		}else if(useridLen <4 || useridLen >8){
			document.getElementById('user_id').setCustomValidity('4자리 이상, 8자리 이하로 입력해주세요');
		}else if(!id_pattern.test(useridStr)){
			document.getElementById('user_id').setCustomValidity('영어, 숫자만으로 입력하시기 바랍니다.');
		}
	  	//비밀번호 입력조건
		var pwd_pattern = /^[a-zA-Z0-9_-]{4,9}$/;
		var userpwd = document.userjoin_form.user_pwd;
		var userpwdStr = userpwd.value;
		var userpwdLen = userpwdStr.length;
		if(userpwdStr ==''){
			document.getElementById('user_pwd').setCustomValidity('PWD를 입력해주세요');
		}else if(userpwdLen <4 || userpwdLen >9){
			document.getElementById('user_pwd').setCustomValidity('4자리 이상, 8자리 이하로 입력해주세요');
		}else if(!pwd_pattern.test(userpwdStr)){
			document.getElementById('user_pwd').setCustomValidity('영어, 숫자만으로 입력하시기 바랍니다.');
		}

	  	//이름 입력조건
		var name_pattern = /^[\uac00-\ud7a3]*$/;
		var username = document.userjoin_form.user_name;
		var usernameStr = username.value;
		var usernameLen = usernameStr.length;
		if(usernameStr ==''){
			document.getElementById('user_name').setCustomValidity('NAME을 입력해주세요');
		}else if(usernameLen <2 || userpwdLen >4){
			document.getElementById('user_name').setCustomValidity('2이상 4자리 이하로 입력해주세요');
		}else if(!name_pattern.test(usernameStr)){
			document.getElementById('user_name').setCustomValidity('한글로된 글자만으로 입력하시기 바랍니다.');
		}

	  	//핸드폰 입력조건
		var phone_pattern =  /^\d{10,11}$/;
		var userphone = document.userjoin_form.user_phone;
		var userphoneStr = userphone.value;
		var userphoneLen = userphoneStr.length;
		if(userphoneStr ==''){
			document.getElementById('user_phone').setCustomValidity('Phone번호를 입력해주세요');
		}else if(userphoneLen <10 || userphoneLen >11){
			document.getElementById('user_phone').setCustomValidity('10자리 이상, 11자리 이하로 입력해주세요');
		}else if(!phone_pattern.test(userphoneStr)){
			document.getElementById('user_phone').setCustomValidity('숫자만으로 입력하시기 바랍니다.');
		}

		//집주소1 입력조건
		var address1_pattern = /^[\uac00-\ud7a3|a-z|A-Z|0-9|\*]+$/;
		var useraddress1 = document.userjoin_form.user_address1;
		var useraddress1Str = useraddress1.value;
		var useraddress1Len = useraddress1Str.length;
		if(useraddress1Str ==''){
			document.getElementById('user_address1').setCustomValidity('address1을 입력해주세요');
		}else if(useraddress1Len <2){
			document.getElementById('user_address1').setCustomValidity('2자리 이상로 입력해주세요');
		}else if(!address1_pattern.test(useraddress1Str)){
			document.getElementById('user_address1').setCustomValidity('영문 또는 숫자주소로 입력하시기 바랍니다.');
		}

		//집주소2 입력조건
		var address2_pattern =  /^[\uac00-\ud7a3|a-z|A-Z|0-9|\*]+$/;
		var useraddress2 = document.userjoin_form.user_address2;
		var useraddress2Str = useraddress2.value;
		var useraddress2Len = useraddress2Str.length;
		if(useraddress2Str ==''){
			document.getElementById('user_address2').setCustomValidity('address2을 입력해주세요');
		}else if(useraddress2Len <2){
			document.getElementById('user_address2').setCustomValidity('2자리 이상로 입력해주세요');
		}else if(!address2_pattern.test(useraddress2Str)){
			document.getElementById('user_address2').setCustomValidity('영문 또는 숫자주소로 입력하시기 바랍니다.');
		}
		
	  	//이메일 입력조건
		var email_pattern = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
		var useremail = document.userjoin_form.user_email;
		var useremailStr = useremail.value;
		var useremailLen = useremailStr.length;
		if(useremailStr ==''){
			document.getElementById('user_email').setCustomValidity('email을 입력해주세요');
		}else if(useremailLen <6 || useremailLen >20){
			document.getElementById('user_email').setCustomValidity('6자리 이상, 20자리 이하로 입력해주세요');
		}else if(!email_pattern.test(useremailStr)){
			document.getElementById('user_email').setCustomValidity('??@??.?? 형식으로 입력하시기 바랍니다.');
		}
		
	}

	

  </script>
  
  <style type="text/css">
  
.contents ul {
	list-style-type: none;
   	padding-left:0px;
}

.contents input {
	width: 100%;
	border-radius: 5px;
}
  </style>
</head>
<body>
	<!-- main_menu -->
	<header>
		<div id="main_bar">
			<c:import url="/main_bar.do" />
		</div>
	</header>


 	 <div class="container contents">
 	 	<div id="msg" align="left" style="margin-left: 35%; margin-right: 35%; background-color: #f9f9fe; padding:1%; padding-left:2%; padding-right:2%; border-radius: 20px;" >
		  	<form action="Insert_join.do" method="post" name="userjoin_form">
				<h1 align="center">회원가입</h1>
				<ul>
			   		<label  for="exampleInputEmail1">아이디</label><br>
					<li><input type="text" 		name="user_id" 			id="user_id"		class="Id" 				placeholder="Id" 			required oninput="setCustomValidity('')"></li>
			   		<label  for="exampleInputEmail1">비밀번호</label><br>
					<li><input type="password" 	name="user_pwd" 		id="user_pwd"		class="PWD" 			placeholder="password"		required oninput="setCustomValidity('')"></li>
			   		<label  for="exampleInputEmail1">이름</label><br>
	               	<li><input type="text" 		name="user_name" 		id="user_name"		class="Name" 			placeholder="Name"			required oninput="setCustomValidity('')"></li>
			   		<label  for="exampleInputEmail1">핸드폰</label><br>
	               	<li><input type="text" 		name="user_phone" 		id="user_phone"		class="Tele" 			placeholder="Number Phone"	required oninput="setCustomValidity('')"></li>
			   		<label  for="exampleInputEmail1">주소1</label><br>
	               	<li><input type="text" 		name="user_address1"	id="user_address1"	class="user_address1" 	placeholder="My_address1"	required oninput="setCustomValidity('')"></li>
			   		<label  for="exampleInputEmail1">주소2</label><br>
	               	<li><input type="text" 		name="user_address2" 	id="user_address2"	class="user_address2" 	placeholder="My_address2"	required oninput="setCustomValidity('')"></li>
			   		<label  for="exampleInputEmail1">이메일</label><br>
	               	<li><input type="email" 	name="user_email" 		id="user_email"		class="Email" 			placeholder="Email"			required oninput="setCustomValidity('')"></li>
			   		<br>
			   		<div align="center">
			   		<button type="submit" class="btn btn-primary" value="Add"   name="submit" id="LOGIN" onclick="chk()" style="width: 45%;" onclick="chk()">가입하기</button>
			   		<button type="reset" class="btn btn-primary"  id="RESET" style="width: 45%;">취소</button>
					</div>
	               </ul>
	        </form>
        </div>
	</div>
	
	<!-- footer -->
	<footer>
		<div id="footer">
			<c:import url="/footer.do" />
		</div>
	</footer>
</body>
</html>