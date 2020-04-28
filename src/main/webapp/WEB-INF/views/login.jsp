<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title> [login.jsp]</title>
  <style type="text/css">
    *{font-size:20pt; font-weight:bold;  font-family:  Segoe UI Symbol , comic Sans MS ;  }
    a{font-size:20pt; font-weight:bold; color:blue; text-decoration:none; }
    a:hover{font-size:26pt; font-weight:bold; color:green; text-decoration:underline; }
    #LOGIN{
      font-size:26pt; font-weight:bold;
      background: #FFFF00; height: 120px;
    }             
  </style>
  
  <script type="text/javascript">
  function chk() {
	  	//아이디 입력조건
	  	var id_pattern = /^[a-zA-Z0-9_-]{4,9}$/
		var userid = document.login_form.user_id;
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

 
 <div id="msg" align="center">
 <table  width=750 border=1 cellspacing=0 align="center">
   <form action="loginprocess.do" name="login_form">
     <tr>
	  <td width="450"> userid:</td>
	  <td width="250"> <input type="text"  name="user_id" id="user_id" placeholder="ID" required oninput="setCustomValidity('')"></td>
			
	  <td rowspan=2 align="center">
	    <input type="submit" value="LOGIN" id="LOGIN" onclick="chk()">
	  </td>
	</tr>
	
	<tr>
	  <td>userpw:</td>
	  <td> <input type="password"  name="user_pwd" id="user_pwd" placeholder="Password" required oninput="setCustomValidity('')"></td>
	</tr>
    </form>
 </table>

</div>


</body>
</html>
