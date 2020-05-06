<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	  	var id_pattern = /^[a-zA-Z0-9_-.]{4,15}$/
		var userid = document.login_form.user_id;
		var useridStr = userid.value;
		var useridLen = useridStr.length;
		if(useridStr ==''){
			document.getElementById('user_id').setCustomValidity('ID 입력해주세요');
		}else if(useridLen <4 || useridLen >15){
			document.getElementById('user_id').setCustomValidity('4자리 이상, 8자리 이하로 입력해주세요');
		}else if(!id_pattern.test(useridStr)){
			document.getElementById('user_id').setCustomValidity('영어, 숫자만으로 입력하시기 바랍니다.');
		}

	  	//비밀번호 입력조건
		var pwd_pattern = /^[a-zA-Z0-9_-]{4,9}$/
		var userpwd = document.login_form.user_pwd;
		var userpwdStr = userpwd.value;
		var userpwdLen = userpwdStr.length;
		if(userpwdStr ==''){
			document.getElementById('user_pwd').setCustomValidity('PWD 입력해주세요');
		}else if(userpwdLen <4 || userpwdLen >8){
			document.getElementById('user_pwd').setCustomValidity('4자리 이상, 8자리 이하로 입력해주세요');
		}else if(!pwd_pattern.test(userpwdStr)){
			document.getElementById('user_pwd').setCustomValidity('영어, 숫자만으로 입력하시기 바랍니다.');
		}
	}

  </script>
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
		   <h1 align="center">로그인</h1>
		   <form action="loginprocess.do" name="login_form">
		    	<div class="form-group">
			   		<label  for="exampleInputEmail1">아이디</label><br>
			   		<input type="text"  name="user_id" id="user_id" placeholder="ID" required oninput="setCustomValidity('')" style="width: 100%; border-radius: 5px;">
			 	</div>
			 	<div class="form-group">
   	 			<label for="exampleInputPassword1">비밀번호</label><br>
				<input type="password"  name="user_pwd" id="user_pwd" placeholder="Password" required oninput="setCustomValidity('')"  style="width: 100%; border-radius: 5px;">
				</div>
				<div class="form-group form-check">
				<input type="checkbox" class="form-check-input" id="exampleCheck1">
				<label class="form-check-label" for="exampleCheck1">아이디 저장</label>
				</div>
				<div align="center">
				<button type="submit" class="btn btn-primary"  id="LOGIN" onclick="chk()" style="width: 45%;">로그인</button>
				<button type="reset" class="btn btn-primary"  id="RESET" style="width: 45%;">취소</button>
				</div>
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
