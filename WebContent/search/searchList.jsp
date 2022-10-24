<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="../css/mainpage.css" />
    <link rel="stylesheet" href="../css/movieChart.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<title>영화</title>
<link rel="icon" href="../img/favicon.png">
</head>
  <style>
    @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap");
  </style>
<body>
<%@ include file="../header.jsp" %>

      
      <div style="overflow:hidden;width:55%;margin:100px auto;">
      <c:forEach var="vo" items="${list}">	<!-- 영화테이블 내 목록 반복문사용 구현 -->
      	
      	<div class="gallery">
     	 <a href="detailAction.jsp?idx=${vo.movie_id}&page=${page}"><img alt="포스터" src="../img/${vo.movie_id}.jpg"> </a>	<!-- 영화 이미지+영화 상세페이지 이동 버튼역할 -->
      		<div class="desc" style="font-size: 15px">${vo.movie_name}</div>	
      		<div class="desc" style="font-size: 10px">예매율: ${vo.ADVANCE_RATE }</div>
      		<div class="desc" style="font-size: 10px">${vo.MOVIE_OPENDT} 개봉</div><br>
      		<div class="desc"><a href="#" class="btn_fixedTicketing">예매하기</a></div>
      	</div>
      	</c:forEach>
      	<c:if test="${empty list }"><p> 검색 결과가 없습니다!!!...</p></c:if> 
     
      	<!--  <div style="width:700px;margin:auto;text-align: center;">
		<c:forEach var="i" begin="${pagelist.startPage}" end="${pagelist.endPage }">
			<a class="pagenum ieach" href="?page=${i }"><c:out value="${i }"/></a>
		</c:forEach>	
		</div>	검색했을때 페이지는 일단 미 구현 -->
      </div>

 <%@ include file="../footer.jsp" %>
  <script src="../css/mainpage.js"></script>
</body>
</html>