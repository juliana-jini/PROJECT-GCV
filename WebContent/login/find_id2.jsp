<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>id안내</title>
    <link rel="icon" href="../img/favicon.png">
    <link rel="stylesheet" href="../css/mainpage.css" />
    <link rel="stylesheet" href="../css/find_idpw.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
  </head>
  <style>
      a:hover {
    	color: #00BFFF;
    }
  </style>
<body>
<%@ include file="../header.jsp" %>
<c:forEach items="${find_id }" var="id">
 <div style="width:70% ;margin: auto;max-width: 600px; text-align:center;">
<br><br><br>
<h2>ID확인</h2>
<hr><br>

회원님께서 사용중인 id는 ${id } 입니다 </div></c:forEach><br><hr><br>
<div style="text-align:center;">
<a href="loginForm.jsp">로그인</a> · <a href="find_pw.jsp">비밀번호 찾기</a></div>
</body>
<%@include file="../footer.jsp" %>
</html>