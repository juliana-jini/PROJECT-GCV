<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge" />
 <meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>비밀번호 안내</title>
<link rel="icon" href="../img/favicon.png">
    <link rel="stylesheet" href="../css/mainpage.css" />
    <link rel="stylesheet" href="../css/find_idpw.css" />
     <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
     <style>
      a:hover {
    	color: #00BFFF;
     </style>
</head>
<body>
<%@ include file="../header.jsp" %>
 <div style="width:70% ;margin: auto;max-width: 600px; text-align:center;">
<br><br><br>
<h2>비밀번호 안내</h2>
<hr><br><br>
회원님이 사용중인 비밀번호는 ${find_pw } 입니다. </div><br><hr><br>
<div style="text-align:center;">
<a href="loginForm.jsp">로그인</a> · <a href="../main/mainpage.jsp">메인페이지</a></div>

</body>
<%@include file="../footer.jsp" %>
</html>