<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>회원 로그인</title>
    <link rel="icon" href="../img/favicon.png">
    <link rel="stylesheet" href="../css/mainpage.css" />
    <link rel="stylesheet" href="../css/loginForm.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
  </head>
   <style>
    @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap");
  </style>
  
<body>
<%@ include file="../header.jsp" %>
    <!-- 헤더-->
 <div style="width:70% ;margin: auto;max-width: 600px;">
<form action="loginAction.jsp" method="post" name="login" class=loginform>

	<h2>로그인</h2>
		<div class="textForm">
		<input name="user_id" placeholder="ID를 입력해 주세요." class="id"><br>
		</div>
		<div class="textForm">
		<input name="password" placeholder="비밀번호를 입력해 주세요." type="password" class="pw"> <br>
		</div>
		<button onclick="return ch_login();" class="btn">로그인</button>  <br>
		<a href="find_id.jsp">id</a> · <a href="find_pw.jsp">비밀번호 찾기</a>
		<a href="../main/mainpage.jsp">홈으로</a>
		
</form>
</div>

 <script src="../js/mainpage.js"></script>
<script src="../js/login_valid.js"></script>
</body>
<%@include file="../footer.jsp" %>
  <script src="../css/mainpage.js"></script>
</html>