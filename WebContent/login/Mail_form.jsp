<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<form action="Mail_sendAction.jsp" class="mailform" >
<br><br><br><br><br>
<h2>인증번호 확인</h2>
<div class="textForm">
<input name="mail2" type="text"  class="mail" placeholder="전송받은 인정번호 6자리 입력">
</div>
<input name="answer" type="hidden" value="${number }">
<input name="mail" type="hidden" value="${mail }">
<button class="btn" >전송</button>
</form>
</div>
<%@include file="../footer.jsp" %>
  <script src="../css/mainpage.js"></script>
</body>
</html>