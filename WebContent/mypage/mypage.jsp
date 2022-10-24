<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GCV 마이페이지</title>
<link rel="icon" href="../img/favicon.png">
<link rel="stylesheet" href="../css/mainpage.css" />
<link rel="stylesheet" href="../css/bootstrap.min.css" />
<link rel="stylesheet" href="../css/starter_template.css" />

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
</head>
<style>
    @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap");
  </style>
<body>
<%@ include file="../header.jsp" %>
<main style="min-height: 100%; padding-bottom: 200px; height: auto;">
<div style="margin: auto; width: 50%; margin-top: 100px; height: auto;">
<h3 style="text-align: center;">${user_id }님 환영합니다.</h3>
<div style="float: left; text-align: center; margin-top: 100px; overflow:auto; height: 800px;">
<h2>예매한 영화</h2><hr>
<c:forEach var="m" items="${list }">
<form action="deleteAction.jsp" method="post">
<input type="hidden" value="${m.buy_tic_id }" name="tid">
<input type="hidden" value="${m.seat }" name="seat">
<input type="hidden" value="${m.seatno }" name="seatno">
<input type="hidden" value="${m.showtime_id }" name="sid">
<p>영화 제목: ${m.movie_name } </p>
<p>영화관: ${m.theater_name } </p>
<p>날짜 및 시간: ${m.day1 } ${m.time1 } </p>
<p>좌석: ${m.seat } </p>
<button class="btn_fixedTicketing">예매 취소</button>
</form>
</c:forEach>
</div>
<div style="float: right; text-align: center; margin-top: 100px; overflow:auto; height: 800px;">
<h2>구매한 상품</h2><hr>
<c:forEach var="s" items="${slist }">
<form action="deleteAction2.jsp" method="post">
<input type="hidden" value="${s.buy_id }" name="sid">
<p>상품 이름: ${s.pname } </p>
<p>수량: ${s.amount } </p>
<button class="btn_fixedTicketing">구매 취소</button>
</form>
</c:forEach>
</div>
</div>
</main>
<%@ include file="../main_footer.jsp" %>
	<script src="../css/mainpage.js"></script>
</body>
</html>