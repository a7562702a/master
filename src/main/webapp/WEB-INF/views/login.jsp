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
</head>

<body>

 
 <div id="msg" align="center">
 <table  width=750 border=1 cellspacing=0 align="center">
   <form action="loginprocess.do">
     <tr>
	  <td width="450"> <img src="resources/images/z1.gif">userid:<img src="resources/images/z1.gif"> </td>
	  <td width="250"> <input type="text"  name="user_id"  value="blue"></td>
			
	   <td rowspan=2 align="center">
	    <input type="submit" value="LOGIN" id="LOGIN" >
	   </td>
	</tr>
	
	<tr>
	  <td> <img src="resources/images/z1.gif">userpw:<img src="resources/images/z1.gif"> </td>
	  <td> <input type="text"  name="user_pwd" value="1234"></td>
	</tr>
    </form>
 </table>
 
 <hr size=3 color=red>
<%--  <%= application.getContextPath() %><br> --%>
<%--  <%= request.getSession().getServletContext().getRealPath("/") %> --%>
<%--  <%= request.getSession().getServletContext().getRealPath(path) %> --%>
<%--  <%= application.getRealPath("/login.jsp") %> --%>
   <a href="km_Test_File.jsp">[index.jsp]</a>
   <a href="Join.do">[회원가입]</a>
   <a href="Detail_join.do?uid=aaaa">[개인정보]</a>
   <a href="login.do">[login.do]</a>
   <a href="logout.do">[로그아웃]</a>
</div>


</body>
</html>
