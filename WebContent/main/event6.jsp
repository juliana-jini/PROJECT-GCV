<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>이벤트</title>
<link rel="icon" href="../img/favicon.png">
	<link rel="stylesheet" href="../css/mainpage.css" />
    <link rel="stylesheet" href="../css/event.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
</head>
	<style>
	    @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap");
	</style>
<body>
<%@ include file="../header.jsp" %>

    <div class="fixedBtn_wrap topBtn">
      <!-- 고정으로나오는 버튼 -->
      <!-- 예매 페이지 나올때 링크 걸기-->
      <a href="#" class="btn_fixedTicketing">예매하기</a>
      <a href="#" id="btn_gotoTop"><img src="https://img.cgv.co.kr/R2014/images/common/btn/gotoTop.png" alt="최상단으로 이동" /></a>
    </div>
    
<div class="e_info">
		<em class="sp_event">제휴/할인</em>&nbsp;&nbsp;&nbsp;
		[헌트] 라스트 특가
</div>
<div class="e_img">
	<img alt="이벤트" src="../image/e_img3(2).jpg">
</div>
<div class="btn_wrap" align="center">
<a href="mainpage.jsp"><button class="btn_back">HOME</button></a>
</div>
	<%@ include file="../footer.jsp" %>
  	<script src="../css/mainpage.js"></script>
</body>
</html>