<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 인증</title>
<link rel="icon" href="../img/favicon.png">
    <link rel="stylesheet" href="../css/mainpage.css" />
    <link rel="stylesheet" href="../css/mail.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
</head>
   <style>
    @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap");
  </style>
<body>
<%@ include file="../header.jsp" %>
<div style="width:70% ;margin: auto;max-width: 600px;">
<form action="Mail_server.jsp" method="post" class="mailform">
<br><br><br><br><br>
<h2>이메일 등록 및 확인</h2>
<div class="textForm">
<input name="mail" type="text" placeholder="인증받을 이메일주소 입력" class="mail">
</div>
<button class="btn">인증번호 전송</button>
</form>
</div>
<%@include file="../footer.jsp" %>
  <script src="../css/mainpage.js"></script>
</body>
</html>