<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용후기</title>
	<script type="text/javascript">
	var locked=0;
	
	function show(star){
		if(locked)
			return;
		var i;
		var image;
		var el;
		var e = document.getElementById('startext');
		var stateMsg;
		for(i=1; i<=star;i++){
			image='image'+i;
			el=document.getElementById(image);
			el.src="resources/images/staryellow.png";
		}
		switch(star){
		case 1:
			stateMsg="매우 불만족";
			break;
		case 2:
			stateMsg="불만족";
			break;
		case 3:
			stateMsg="보통";
			break;
		case 4:
			stateMsg="만족";
			break;
		case 5:
			stateMsg="매우만족";
			break;
		default:
			stateMsg="";
		}
		e.innerHTML=stateMsg;
	}
	
	function noshow(star) {
		if(locked)
			return;
		var i;
		var image;
		var el;
		
		for(i=1;i<=star;i++){
			image='image'+i;
			el=document.getElementById(image);
			el.src="resources/images/stargray.png";
		}
	}
	
	function lock(star){
		show(star);
		locked=1;
	}
	
	function mark(star){
		lock(star);
		document.myform.point.value=star;
	}

	function check(){
			var point=myform.point.value;
			var content=myform.content.value;
			
			if(point==null||point==""){
				alert('별점을 주세요.')
				return;
			}else if(content==null||content==""){
				alert('내용을 입력해 주세요.')
				myform.content.focus();
				return;
			}else{
				myform.submit();
			}
		}
	</script>
	
</head>
<body>
 	<div class="container">
		<font color=blue>[ProductReviewWrite.jsp]</font> <p>
	 	<form name="myform" action="productReviewInsert.do" enctype="multipart/form-data" method="post">
	 	<table class="table table-hover" style="border: 1px solid #D8D8D8;">
		
		
			<tr>				
				<td class="td1">별점주기</td>
				<td class="td2">			
					<span>
						<img id=image1 onmouseover="show(1)" onclick="mark(1)" onmouseout="noshow(1)" src="resources/images/stargray.png">
						<img id=image2 onmouseover="show(2)" onclick="mark(2)" onmouseout="noshow(2)" src="resources/images/stargray.png">
						<img id=image3 onmouseover="show(3)" onclick="mark(3)" onmouseout="noshow(3)" src="resources/images/stargray.png">
						<img id=image4 onmouseover="show(4)" onclick="mark(4)" onmouseout="noshow(4)" src="resources/images/stargray.png">
						<img id=image5 onmouseover="show(5)" onclick="mark(5)" onmouseout="noshow(5)" src="resources/images/stargray.png">
					</span>
					<font id=startext color="red"></font>
					<input type="hidden" name="point">								
				</td>
				
			</tr>
			<tr>
				<td><input type="hidden" name="product_id" value="100a100"></td>
				<td><input type="hidden" name="user_id" value="blue"></td>
			</tr>
			<tr>
				<td class="td1">내용</td>
				<td class="td2"><textarea name="content" rows="12" cols="57" placeholder="내용을 적어주세요.2000자 내" class="noborder"></textarea></td>
			</tr>
			<tr>				
				<td class="td1">파일</td>
				<td class="td2"><input type="file" name="upload_f"> </td>		
			</tr>	
		</table>	  
	 	  <input type="button" class="button" value="작성완료" onclick="check();">&nbsp;&nbsp;
	 	  <input type="reset" value="입력취소">          
	 	</form>

		<p>
	  	<a href="productReview.do">[글쓰기]</a>
    	<a href="productReviewList.do">[리뷰]</a>
   	 	<a href="productQuestList.do">[문의]</a>
	</div>
</body>
</html>













