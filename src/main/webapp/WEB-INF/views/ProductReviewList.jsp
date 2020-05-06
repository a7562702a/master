<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta charset="UTF-8">
<title> [제품 이용후기]</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
  <script>
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
	      <th scope="col">사진</th>
	      <th scope="col">내용</th>
	      <th scope="col">아이디</th>
	      <th scope="col">포인트</th>	
	      <th scope="col"></th>	     
	    </tr>
	  </thead>
	  <tbody>	 
	  	<c:forEach var="bean" items="${PD}">
		    <tr>
		      <th scope="row">${bean.rrn}</th>
		      <td> 
		      	<c:if test="${bean.file1!=null}">
		      		<i class="fa fa-camera" aria-hidden="true"></i>
		      	</c:if>
		      </td>
		      <td>
		      	<div class="accordion">
		      		<h3 style="background-color: white; border: white; color: blue;">${bean.content}</h3>
		      		<div class="noshow" >	
		      			<c:if test="${bean.file1!=null}">
			  				 <img src="${pageContext.request.contextPath}/resources/upload/${bean.file1}"  width=100 height=50 border="0"><br>
			  			</c:if>
			  			${bean.content} <p>
			  			<a href="productReviewDelete.do?rid=${bean.review_num}">[삭제]</a>	
		      		</div>
		      	</div>
		      </td>
		      <td>${bean.user_id}</td>
		      <td>
		     	 <c:forEach var="i" begin="1" end="${bean.point}">
				 	<img src="resources/images/staryellow.png" width="20" height="20">
				 </c:forEach>
				 <c:forEach var="j" begin="1" end="${5-bean.point}">
				 	<img src="resources/images/stargray.png" width="20" height="20">
				 </c:forEach>
			  </td>			  
		    </tr>
	    </c:forEach>  
	  </tbody>
	  
	  <!-- 페이징 -->
	  <tr align="center">
		<td colspan="5">
			<!-- 이전 --> 
			<c:if test="${startpage!=1}">
				<a href="productReviewList.do?pagePRNum=${startpage-10}">[이전]</a>
			</c:if>
			
			<c:forEach var="i" begin="${startpage}" end="${endpage}">			
				<c:choose>
					<c:when test="${i==pageNUM}"><font style='color:red;font-size:20pt;'><button type="button" class="btn btn-outline-dark">${i}</button></font></c:when>
					<c:otherwise>
						<a href="productReviewList.do?pagePRNum=${i}"><button type="button" class="btn btn-outline-dark">${i}</button></a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
				
			<!-- 다음 -->
			<c:if test="${endpage<pagecount}">
				<a href="productReviewList.do?pagePRNum=${startpage+10}">[다음]</a>
			</c:if>
		</td>
	</tr>
	</table>
	
	
	<p>
	 <a href="productReview.do">[글쓰기]</a>
     <a href="productReviewList.do">[리뷰]</a>
   	 <a href="productQuestList.do">[문의]</a>
</div>


</body>
</html>
