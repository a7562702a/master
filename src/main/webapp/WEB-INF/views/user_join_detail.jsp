<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MUSINSA STORE</title>

</head>
<body>


	
 	<div class="container">
 	<table width='700' border='1' cellspacing='0' cellpadding=5>
	  <tr align="center">
	    <td colspan="2"> [${dto.user_id}님] 상세데이터 출력 </td>
	  </tr>
	  <tr> <td> 아이디 :  ${dto.user_id} </td>  </tr>
	  <tr> <td> 비밀번호 :  ${dto.user_pwd} </td>  </tr>
	  <tr> <td> 이름 :  ${dto.user_name} </td>  </tr>
	  <tr> <td> 전화번호 :  ${dto.user_phone} </td>  </tr>
	  <tr> <td> 주소1 :  ${dto.user_address1} </td>  </tr>
	  <tr> <td> 주소2 :  ${dto.user_address2} </td>  </tr>
	  <tr> <td> 이메일 :  ${dto.user_email} </td>  </tr>
	  <tr> <td> 가입일자 :  ${dto.user_joindate} </td>  </tr>
	  <tr> <td> 회원등급 :  ${dto.user_level} </td>  </tr>
  	</table> 
  	<a href="UpdateBF_join.do?uid=${dto.user_id}"><button>수정</button> </a><br>
  	<a href="Delete_join.do?uid=${dto.user_id}"><button>회원탈퇴</button> </a>
	</div>
	

</body>
</html>