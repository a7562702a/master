<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

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
<body>
 	 <div class="container">
 		<form action="UpdateAF_join.do" method="post" name="userjoin_form">
			<h1>회원정보 수정</h1>
			<ul>
				<li><input type="text" 		name="user_id" 			id="user_id" 		class="user_id" 		value="${dto.user_id}"			required oninput="setCustomValidity('')"	readonly></li>
				<li><input type="password" 	name="user_pwd" 		id="user_pwd"		class="user_pwd" 		value="${dto.user_pwd}"			required oninput="setCustomValidity('')"></li>
               	<li><input type="text" 		name="user_name" 		id="user_name"		class="user_name" 		value="${dto.user_name}"		required oninput="setCustomValidity('')"	readonly></li>
               	<li><input type="text" 		name="user_phone" 		id="user_phone" 	class="user_phone" 		value="${dto.user_phone}"		required oninput="setCustomValidity('')"></li>
               	<li><input type="text" 		name="user_address1"	id="user_address1" 	class="user_address1" 	value="${dto.user_address1}"	required oninput="setCustomValidity('')"></li>
               	<li><input type="text" 		name="user_address2" 	id="user_address2" 	class="user_address2" 	value="${dto.user_address2}"	required oninput="setCustomValidity('')"></li>
               	<li><input type="email" 	name="user_email" 		id="user_email" 	class="Email" 			value="${dto.user_email}"		required oninput="setCustomValidity('')"></li>
               	<li><button type="submit" value="Add" name="submit" onclick="chk()">Submit</button>
               </ul>
        </form>
	</div>
</body>
</html>