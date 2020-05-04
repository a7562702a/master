<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의하기</title>
	<script type="text/javascript">
		function check(){	
			var pwd=myform.pwd.value;
			var title=myform.title.value;	
			var content=myform.content.value;
			
			if(title==null || title==""){
				alert('제목을 입력해 주세요.');
				myform.title.focus();
				return;
			}else if(content==null || content==""){
				alert('내용을 입력해 주세요.');
				myform.content.focus();
				return;
			}else if(pwd==null || pwd==""){
				alert('비밀번호를 입력해 주세요.');
				myform.pwd.focus();
				return;
			}else{
				myform.submit();
			}
		}
	</script>
</head>
<body>
 	<div class="container">
		<font color=blue>[ProductQuestWrite.jsp]</font> <p>
	 	<form name="myform" action="productQuestInsert.do?prid=${prid}" method="post">
	 	<table class="table table-hover" style="border: 1px solid #D8D8D8;">	
			<tr>				
				<td class="td1">비밀번호</td>
				<td class="td2"><input type="password" name="pwd" value="1234"><label id="label"><font color="red"> 4자리의 숫자로 입력하세요.</font></label></td>
			</tr>
			<tr>
				<td class="td1">제목</td>
				<td class="td2"><input type="text" name="title" size="55" placeholder="제목을 적어주세요." class="noborder"></td>
			</tr>
			<tr>
				<td class="td1">내용</td>
				<td class="td2"><textarea name="content" rows="12" cols="57" placeholder="내용을 적어주세요.2000자 내" class="noborder"></textarea></td>
			</tr>
			<tr>				
				<td><input type="hidden" name="product_id" value="${prid}"></td> 		
			</tr>	
		</table>	
	 	  <input type="button" class="button" value="작성완료" onclick="check();">&nbsp;&nbsp;
	 	  <input type="reset" value="입력취소">          
	 	</form>

		<p>
	 	
	</div>
</body>
</html>













