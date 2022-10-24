<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
 <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>GCV 영화</title>
    <link rel="icon" href="../img/favicon.png">
    <link rel="stylesheet" href="../css/mainpage.css" />
    <link rel="stylesheet" href="../css/star.css" />
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
    <!-- 여기부터 아래내용 지우시고 body내용 작성하시면 됩니다. -->
	<div style="overflow:hidden;width:55%;margin-top: 200px; margin-bottom: 0px; margin-left: auto; margin-right: auto">
		<div class="gallery" style="width: 185px;height: 260px; float: left;">
     		 <img alt="포스터" src="../img/${movie.movie_id}.jpg" style="width: 100%;">
     	</div>
     	<div style="font-size: 20px; font-weight: bold">${movie.movie_name}</div>
     	<div>예매율 ${movie.ADVANCE_RATE}</div>
     	<hr>
     	<div>감독 :${movie2.director } 배우: ${movie2.actors }</div>
     	<div>장르: ${movie2.genre }</div>
     	<div>평점 ${movie.MOVIE_GRADE}</div>
     	<br><br><br><br>
     	&emsp;<a href="${pageContext.request.contextPath}/ticketing/ticketingAction.jsp" class="btn_fixedTicketing" style="width: 136px">예매하기</a>
     	<a href="../movie/listAction.jsp?page=${page }" class="btn_fixedTicketing">영화목록</a>
     	
	</div>
	
	<div style="width:55%;margin:0px auto">${movie2.movie_info }</div>
	
	<form action="commentAction.jsp" method="post" id=myform>
	<input type="hidden" name="mid" value="${movie.movie_id }">
	<input type="hidden" name="page" value="${page }">
		<div style="overflow:hidden;width:55%;margin-top: 200px; margin-bottom: 0px; margin-left: auto; margin-right: auto">
		<ul id="main">
			<li>
				<ul class="row">
					<li>별점</li>	<!-- 1)로그인한 사용자가 작성할때는 로그인 이메일,닉네임 가져와서 표시 -->			
					<li>
					<fieldset>
				        <input type="radio" name="rating" value="5" id="rate1"><label for="rate1">⭐</label>
				        <input type="radio" name="rating" value="4" id="rate2"><label for="rate2">⭐</label>
				        <input type="radio" name="rating" value="3" id="rate3"><label for="rate3">⭐</label>
				        <input type="radio" name="rating" value="2" id="rate4"><label for="rate4">⭐</label>
				        <input type="radio" name="rating" value="1" id="rate5"><label for="rate5">⭐</label>
				    </fieldset>
    				</li>		
				</ul>
			</li>
			<li>
				<ul style="display: flex;">
					<li>
						<textarea rows="5" cols="80" name="review_info"
						style="resize:none;margin-right:20px;" 
						placeholder="로그인 후에 댓글을 작성하세요." class="input"></textarea>
					</li>				
						<li style="align-self: center;margin-bottom: 20px;">
						<c:if test="${user !=null}"> <button type="submit">저장</button></c:if>
					</li>
				</ul>
			</li>
			<li>
					<span>댓글</span>
					<span id="ss">[]</span> <!-- 댓글갯수 -->
				<hr>
			</li>
			<!-- 댓글 목록 -->
			<% int k=0; %>
			<c:forEach var="r" items="${rlist}">
			<% k++; %>
			<li>
			
				<ul class="crow">
					<li>작성자 : ${r.custom_id }</li>				
					<li>리뷰 내용 : ${r.review_info }</li>				
					<li>평점 : ${r.grade }</li>				
					<li>등록 날짜 : ${r.wdate }</li>		
					<!-- 삭제 구현 1) 로그인한 사용자의 글만 삭제 버튼이 보입니다.-->		
					<li><a href="deleteAction.jsp?ridx=${r.review_idx}&idx=${idx}&page=${page}">삭제</a> </li>	<!-- 아직 미구현 -->	
				</ul>
			
			</li>
			<li>
				<pre class="cmtcontent">${cmt.content }</pre>
			</li>
			</c:forEach>
		</ul>	
		</div>
	</form>
	<%@ include file="../footer.jsp" %>
  <script src="../css/mainpage.js"></script>
  <script type="text/javascript">
  $(document).ready(function(){
	  document.getElementById("ss").innerHTML="[<%= k%>]";
  });
  </script>
  </body>
  
</html>
