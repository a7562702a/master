<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [boardEdit.jsp] </title>
	<style type="text/css">
	  *{ font-size: 20pt; font-weight: bold; }
	  a{ font-size: 24pt; text-decoration:none; color:blue ; font-family: Comic Sans MS; }
	  a:hover{ font-size: 26pt; text-decoration:underline; color:green ; font-family: Comic Sans MS; }
	</style>
	
	<script type="text/javascript">
	 function handleFileSelect(){
			var files = document.getElementById('file').files[0]; 
	   		var reader = new FileReader();  
	                 
	        reader.onload = (function(theFile) {
	          return function(e) {
	          //alert(theFile.name);
	          
	          //원본 var img_view = ['<img src="', e.target.result, '" name="', escape(theFile.name),'"   width="450" height="250"  alt="tis" />'].join('');
	          var img_view = ['<img src=', e.target.result + '  width="450" height="250"  alt="tis" />'].join('');
	          //alert(img_view);
	          //내껏 var img_view = "[<img src="+theFile.name+" width='450' height='250'  alt='tis' >]" + join("");  
	          document.getElementById('preview').innerHTML = img_view ;
	          };
	       })(files);
	     reader.readAsDataURL(files);    
	  }//end	
	  
	  
	  function previewFiles() { //새로만든함수
		  var preview = document.querySelector('#preview');
		  var files   = document.querySelector('input[type=file]').files;
		  //var files = document.getElementById('file').files[0];
		  //document.getElementById('preview')
		  
		  function readAndPreview(file) {
		    //file.name` 형태의 확장자 규칙에 주의하세요
		    if ( /\.(jpe?g|png|gif)$/i.test(file.name) ) {
		      var reader = new FileReader();

		      //reader.onload = (function(theFile) { 코드기술 } ).(files)
		      reader.addEventListener("load", function () {
		        var image = new Image();
		        image.width = 300;
		        image.height = 400;
		        //image.title = file.name;
		        image.src = this.result;
		        preview.appendChild( image );
		      }, false);

		      reader.readAsDataURL(file);
		    } //정규식end
		  }

		  if (files) {
		    [].forEach.call(files, readAndPreview);
		  }

		}

	</script>
</head>
<body>
 <p>
   <div align="center">
   	boardEdit.jsp <p>
	<table style="border: solid;">
	<tr style="">
	<td style="border-bottom: solid; margin: 0,0,0,0; height: 50%;">

	<a href="download.do?Gidx=${dto.img_file_name}"><img src="resources/upload/${dto.img_file_name}"  width=300></a>
	
	</td>
	<td style="border-left: solid; margin: 0 0 0 0; " rowspan="2">
	<form method="post" name="myform" action="boardUpdateAF.do" enctype="multipart/form-data" >
	 idx:<input type="text" name="hobby_idx" value="${dto.hobby_idx}" readonly> <br>
	  수정이름:<input type="text" name="name" value="${dto.name}" readonly> <br>
	  수정제목:<input type="text" name="title"  value="${dto.title}"> <br>
	  수정내용:<textarea name="content" rows="4" cols="20">${dto.content}</textarea> <br>
	  수정성별:	<input type="radio" name="gender" value="male" <c:if test="${dto.gender=='male'}">checked</c:if>>남자
	 	  	<input type="radio" name="gender" value="female" <c:if test="${dto.gender=='female'}">checked</c:if>>여자<br>
	  수정취미: <input type="checkbox" name="hobby" value="game" <c:if test="${ fn:contains(dto.hobby, 'game')}">checked</c:if>>게임
	 	  	<input type="checkbox" name="hobby" value="study" <c:if test="${ fn:contains(dto.hobby, 'study')}">checked</c:if>>공부
	 	  	<input type="checkbox" name="hobby" value="ski" <c:if test="${ fn:contains(dto.hobby, 'ski')}">checked</c:if>>스키
	 	  	<input type="checkbox" name="hobby" value="movie" <c:if test="${ fn:contains(dto.hobby, 'movie')}">checked</c:if>>영화 <br>
	 	  	
	수정파일:<input type="file" name="upload_f" id="file" onchange="handleFileSelect();"> <p>  <!-- img_file_name이름대신 upload__f -->
	 	
	    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <input type="submit"  value="서브밋MVC수정"> &nbsp;
	    <input type="reset" value="수정취소">
	</form>
	</td>
	</tr>
	
	<tr><td style="height: 50%"><div id="preview"></div></td></tr>
	</table>

	<p>
	<a href="index.jsp">[index]</a> 
  	<a href="board.do">[신규등록]</a>
  	<a href="boardList.do">[전체출력]</a>
  	
  </div>
</body>
</html>






