<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title> [board_reply.jsp]</title>
	<style type="text/css">
	   *{font-size:14pt; font-family: Comic Sans MS; }
	 
	   	#LOG-IN{
		 font-size:26pt; font-weight: bold; 
		 background:#FFFF00; height:550; 
		}
		
		#btnEdit{font-size:16pt;background: #00FF00; }   
	</style>
	
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  <script type="text/javascript">
	 function replyEdit(rhobby_idx, rwriter,rmemo,hobby_idx){ 
		 //alert("수정전:  "+rhobby_idx+" "+rwriter+" "+rmemo+" "+hobby_idx);
		 $("#rwriter"+rhobby_idx).html(
		   "<input type='text' id='edit_writer"+rhobby_idx+"' value='" + rwriter + "' required  size=10>"		 
		 );
	  
		 $("#rmemo"+rhobby_idx).html(
		  "<input type='text' id='edit_memo"+rhobby_idx+"' value='" + rmemo + "' required  size=10>"		 
		);
		 
		 $("#rbt"+rhobby_idx).html(
		   "<input type='button' onClick='replyEditSave("+rhobby_idx+","+hobby_idx+")' id='btnEdit'  value='수정' size=10>&nbsp;"+
		   "<a href='javascript:location.reload();'>[취소]</a>"
		);
	 }//end
	 
	 function replyEditSave(rhobby_idx,hobby_idx){
	   var rwriter = $("#edit_writer"+rhobby_idx).val();
	   var rmemo = $("#edit_memo"+rhobby_idx).val();
	   //alert("수정후:  "+rwriter+" "+rmemo);
	   location.href="boardreply_edit.do?rhobby_idx="+rhobby_idx+"&rwriter="+rwriter+"&rmemo="+rmemo+"&hobby_idx="+hobby_idx;
	 }//end
  </script>
</head>
<body>
  

<br>
<form  method="get"  action="boardreply.do" >
  <table width="700"  border='0' cellspacing="0">
 	 &nbsp;idx값: <input type="text"  name="hobby_idx"  value="${dto.hobby_idx}">
 	<tr>
 	  <td><b>작성자: </b>
 		<input type="text"  name="rwriter" size=20>
 		<input type="submit"  value="게시판댓글저장 "  style="height:25pt;">     
 	  </td>
 	</tr>
 	
 	<tr>
 	  <td>
 		메모용: <textarea  name="rmemo" cols="60" rows=3></textarea>
 	  </td>
 	</tr>
  </table>
 </form>

 
 <p>
  <table width="750"  border='0' cellspacing="0">
   <tr  bgcolor="pink"  height='30'  align="center">
 	   <td colspan=5>댓글 데이타 내용 표시</td>       
   </tr>
  <c:forEach var="rdto" items="${rLG}">
  <tr  
    onMouseOver="style.background='#00FFFF'" 
    onMouseOut="style.background='' "
  >
  	<td width=50> ${rdto.rrn}  </td> 
  	<td width=50> ${rdto.rhobby_idx}  </td> 
    <td width=100 id="rwriter${rdto.rhobby_idx}"> ${rdto.rwriter}  </td> 
 	<td width=200 id="rmemo${rdto.rhobby_idx}"> ${rdto.rmemo} </td>
 	<td width=250 id="rbt${rdto.rhobby_idx}" align="right"> 
 	   <input type="button" onclick="location.href='boardreply_delete.do?Ridx=${rdto.rhobby_idx}&idx=${rdto.hobby_idx}'" value="삭제">
	   <input type="button" onClick="replyEdit('${rdto.rhobby_idx}','${rdto.rwriter}','${rdto.rmemo}', '${rdto.hobby_idx}')" value="수정">    
 	 </td>       
  </tr>
  </c:forEach>
  
<%

%>
</table>	
</body>
</html>