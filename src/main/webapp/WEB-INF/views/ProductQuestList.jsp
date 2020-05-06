<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta charset="UTF-8">
<title> [제품 문의사항]</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script >
  $( function() {
	    $( ".accordion" ).accordion({
	      collapsible: true
	    });
	  } );
  $(document).ready(function() {
     
      $('.noshow').hide();
      
   });
	
  </script>
</head>

<body>

 
 <div class="container">
	 <table class="table">
	  <thead>
	    <tr>
	      <th scope="col">번호</th>
	      <th scope="col">제목</th>	     
	    </tr>
	  </thead>
	  <tbody>
	  	<c:forEach var="bean" items="${PD}">
		    <tr>
		      <th scope="row">${bean.qrn}</th>
		      <td> 
					<div class="accordion" >
					  <h3 style="background-color: white; border: white; color: blue;">${bean.title}<c:if test="${bean.qrrn>0}"><font style="color:red;font-size:8pt">&nbsp;&nbsp;[답변완료]</font></c:if></h3>
					  <div class="noshow" style="border: 1px soild;">
					    <p>
					    <c:choose> 
					     	<c:when test="${userId=='admin.master'}">
						    		${bean.content} <p>
						    	
						    	<a href="productQuestDelete.do?qqid=${bean.product_quest_num}">[삭제]</a>
						    	
						    	  <c:import url="/productquestrep_list.do?pqr=${questnum}" />   
						    				
						    </c:when>
						    <c:when test="${questpwd==bean.pwd && questnum==bean.product_quest_num}">
						    	${bean.content} <p>
						    	<a href="productQuestOut.do?prid=${prid}">[확인완료]</a><p>
						    	<a href="productQuestDelete.do?qqid=${bean.product_quest_num}&prid=${prid}">[삭제]</a>
						    			    	
						    </c:when>	
						    <c:otherwise>					    
							    <form action="productQuestPwd.do?prid=${prid}" method="post">
								    <input type="hidden" name="product_quest_num" value="${bean.product_quest_num}">
								    <input type="password" name="pwd">
								    <button type="submit" >ok</button>
							    </form> 
						    </c:otherwise>
						   
					    			     
					    </c:choose> 
					    </p>
					  </div>
					  
					</div>
				</td>
			</tr>
	    </c:forEach>
	  </tbody>
	  
	  	<!-- 페이징 -->
	    <tr align="center">
		<td colspan="5">
			<!-- 이전 --> 
			<c:if test="${startpage!=1}">
				<a href="productQuestList.do?pagePQNum=${startpage-10}">[이전]</a>
			</c:if>
			
			<c:forEach var="i" begin="${startpage}" end="${endpage}">			
				<c:choose>
					<c:when test="${i==pageNUM}"><font style='color:red;font-size:20pt;'><button type="button" class="btn btn-outline-dark">${i}</button></font></c:when>
					<c:otherwise>
						<a href="productQuestList.do?pagePQNum=${i}"><button type="button" class="btn btn-outline-dark">${i}</button></a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
				
			<!-- 다음 -->
			<c:if test="${endpage<pagecount}">
				<a href="productQuestList.do?pagePQNum=${startpage+10}">[다음]</a>
			</c:if>
		</td>
	</tr>
	
	</table>
	<p>
	<a href="productQuest.do?prid=${prid}">[문의하기]</a>
   
</div>


</body>
</html>
