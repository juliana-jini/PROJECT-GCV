<%@page import="vo.theater"%>
<%@page import="java.util.List"%>
<%@page import="dao.MovieDao"%>
<%@page import="dao.TheaterDao"%>
<%@page import="vo.movie"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GCV 예매</title>
<link rel="icon" href="../img/favicon.png">
<link rel="stylesheet" href="../css/mainpage.css" />
<link rel="stylesheet" href="../css/ticketing.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
</head>
<style>
    @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap");
  </style>
<body>
	<%@ include file="../header.jsp" %>
	<body>
<!-- 시작 -->
<h1 style="margin-left:37%;width:600px;text-align:center;">영화관 / 영화 선택</h1>
<div class="tab_c">
	<h3 style="text-align:center;">지역</h3>
  <button class="tablinks_c" onclick="openCgv(event, 'select01')">서울</button>
  <button class="tablinks_c" onclick="openCgv(event, 'select02')">경기</button>
  <button class="tablinks_c" onclick="openCgv(event, 'select03')">인천</button>
  <button class="tablinks_c" onclick="openCgv(event, 'select04')">강원</button>
  <button class="tablinks_c" onclick="openCgv(event, 'select05')">대전/충청</button>
  <button class="tablinks_c" onclick="openCgv(event, 'select06')">대구</button>
  <button class="tablinks_c" onclick="openCgv(event, 'select07')">부산/울산</button>
  <button class="tablinks_c" onclick="openCgv(event, 'select08')">경상</button>
  <button class="tablinks_c" onclick="openCgv(event, 'select09')">광주/전라/제주</button>
</div>

<div class=tab_m>
<div id="select01" class="tabcontent_c" style="display:none;">
  <h3 style="text-align:center;">서울</h3>
  <c:forEach var="t" items="${vo }">
  	<button class="tablinks_m" onclick="openMovie(event, 'select00');
  		javascript:getT(`${t.theater_id}`);">
	${t.theater_name }<br></button>
	</c:forEach>
</div>

<div id="select02" class="tabcontent_c" style="display:none;">
  <h3 style="text-align:center;">경기</h3>
  <c:forEach var="t" items="${vo2 }">
	<button class="tablinks_m" onclick="openMovie(event, 'select00');
		javascript:getT(`${t.theater_id}`);">
	<span> ${t.theater_name } </span><br></button>
	</c:forEach>
</div>

<div id="select03" class="tabcontent_c" style="display:none;">
  <h3 style="text-align:center;">인천</h3>
  <c:forEach var="t" items="${vo3 }">
	<button class="tablinks_m" onclick="openMovie(event, 'select00');
		javascript:getT(`${t.theater_id}`);">
	<span> ${t.theater_name } </span><br></button>
	</c:forEach>
</div>
  
<div id="select04" class="tabcontent_c" style="display:none;">
  <h3 style="text-align:center;">강원</h3>
  <c:forEach var="t" items="${vo4 }">
	<button class="tablinks_m" onclick="openMovie(event, 'select00');
		javascript:getT(`${t.theater_id}`);">
	<span> ${t.theater_name } </span><br></button>
	</c:forEach></div>
  
<div id="select05" class="tabcontent_c" style="display:none;">
  <h3 style="text-align:center;">대전/충청</h3>
  <c:forEach var="t" items="${vo5 }">
	<button class="tablinks_m" onclick="openMovie(event, 'select00');
		javascript:getT(`${t.theater_id}`);">
	<span> ${t.theater_name } </span><br></button>
	</c:forEach></div>
  
<div id="select06" class="tabcontent_c" style="display:none;">
  <h3 style="text-align:center;">대구</h3>
  <c:forEach var="t" items="${vo6 }">
	<button class="tablinks_m" onclick="openMovie(event, 'select00');
		javascript:getT(`${t.theater_id}`);">
	<span> ${t.theater_name } </span><br></button>
	</c:forEach></div>
  
<div id="select07" class="tabcontent_c" style="display:none;">
  <h3 style="text-align:center;">부산/울산</h3>
  <c:forEach var="t" items="${vo7 }">
	<button class="tablinks_m" onclick="openMovice(event, 'select00');
		javascript:getT(`${t.theater_id}`);">
	<span> ${t.theater_name } </span><br></button>
	</c:forEach></div>
  
<div id="select08" class="tabcontent_c" style="display:none;">
  <h3 style="text-align:center;">경상</h3>
    <c:forEach var="t" items="${vo8 }">
	<button class="tablinks_m" onclick="openMovie(event, 'select00');
		javascript:getT(`${t.theater_id}`);">
	<span> ${t.theater_name } </span><br></button>
	</c:forEach></div>
  
<div id="select09" class="tabcontent_c" style="display:none;">
  <h3 style="text-align:center;">광주/전라/제주</h3>
    <c:forEach var="t" items="${vo9 }">
	<button class="tablinks_m" onclick="openMovie(event, 'select00');
		javascript:getT(`${t.theater_id}`);">
	<span> ${t.theater_name } </span><br></button>
	</c:forEach></div>
</div>

	<!-- 끝 -->
<div class=tab3>
<div id="select00" class="tabcontent_m" style="display:none; overflow: auto;">
  <h3 style="text-align:center;">영화목록</h3>
  <c:forEach var="tt" items="${movie }">
	<button class="tablinks3" onclick="javascript:getM(`${tt.movie_id}`);">
	<span>${tt.movie_name } </span> <br></button>
	</c:forEach></div>
</div>
	<form action="ticketingAction.jsp" method="post">
	<input type="hidden" id="movie" name="idx">
	<input type="hidden" id="theater" name="tidx">
	<input type="hidden" id="List2" name="boolean" value="o">

	<c:if test="${user != null }"> <button class=j_submit type="submit"> CGV지점 / 영화 선택완료 </button></c:if>
	<c:if test="${user == null }"> <p class=j_submit> 로그인 해주세요 </p></c:if>
	</form>
	<script type="text/javascript">
	function getM(i){
		document.getElementById('movie').value=i;
		console.log(document.getElementById('movie').value)
	}
	function getT(i){
		document.getElementById('theater').value=i;
		console.log(document.getElementById('theater').value)
	}
	
	</script>
	<%@ include file="../footer.jsp" %>
	<script src="../css/mainpage.js"></script>
	<script src="../css/ticketing.js"></script>
</body>

</html>