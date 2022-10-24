<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap");
  </style>
<body>
	<div style="margin:150px;">
	<img alt="성공" src="../img/따봉.gif"><br>
	<c:forEach items="${list }" var="lis">
	<b style="font-size: 20px; ">${lis } 좌석 예매 했습니다.</b><hr>
	</c:forEach>
	</div>

</body>
</html>