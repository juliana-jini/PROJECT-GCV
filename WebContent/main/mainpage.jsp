<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>영화 그 이상의 감동. GCV</title>
<link rel="icon" href="../img/favicon.png">
	<link rel="stylesheet" href="../css/mainpage.css" />
    <link rel="stylesheet" href="../css/GCVmainpage.css" />
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

<div class="movie_trailer">
	<iframe src="https://www.youtube.com/embed/CSOb8gia_mg?autoplay=1&mute=1" 
	title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; 
	encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

<div class="movie_list_wrap">
	<div class="m_title">
	<a href="${pageContext.request.contextPath}/movie/movieList.jsp">MOVIE</a>
	</div>
	<div class="slide_wrapper">
		<ul class="slides">
			<li><a href="${pageContext.request.contextPath}/movie/detailAction.jsp?idx=1&page=1"><img src="../img/1.jpg" alt="영화포스터"><br>
			<div class="movie_title"><strong>헌트</strong></div></a></li>
			<li><a href="${pageContext.request.contextPath}/movie/detailAction.jsp?idx=2&page=1"><img src="../img/2.jpg" alt="영화포스터"><br>
			<div><strong>한산 - 용의 출현</strong></div></a></li>
			<li><a href="${pageContext.request.contextPath}/movie/detailAction.jsp?idx=3&page=1"><img src="../img/3.jpg" alt="영화포스터"><br>
			<div><strong>놉</strong></div></a></li>
			<li><a href="${pageContext.request.contextPath}/movie/detailAction.jsp?idx=4&page=1"><img src="../img/4.jpg" alt="영화포스터"><br>
			<div><strong>탑건 - 매버릭</strong></div></a></li>
			<li><a href="${pageContext.request.contextPath}/movie/detailAction.jsp?idx=5&page=1"><img src="../img/5.jpg" alt="영화포스터"><br>
			<div><strong>비상선언</strong></div></a></li>
			<li><a href="${pageContext.request.contextPath}/movie/detailAction.jsp?idx=6&page=1"><img src="../img/6.jpg" alt="영화포스터"><br>
			<div><strong>미니언즈 2</strong></div></a></li>
			<li><a href="${pageContext.request.contextPath}/movie/detailAction.jsp?idx=7&page=1"><img src="../img/7.jpg" alt="영화포스터"><br>
			<div><strong>DC 리그 오브 슈퍼 - 펫</strong></div></a></li>
			<li><a href="${pageContext.request.contextPath}/movie/detailAction.jsp?idx=8&page=1"><img src="../img/8.jpg" alt="영화포스터"><br>
			<div><strong>바다 탐험대 옥토넛 : 탐험선 대작전</strong></div></a></li>
			<li><a href="${pageContext.request.contextPath}/movie/detailAction.jsp?idx=9&page=1"><img src="../img/9.jpg" alt="영화포스터"><br>
			<div><strong>불릿 트레인</strong></div></a></li>
			<li><a href="${pageContext.request.contextPath}/movie/detailAction.jsp?idx=10&page=1"><img src="../img/10.jpg" alt="영화포스터"><br>
			<div><strong>헤어질 결심</strong></div></a></li>
			<li><a href="${pageContext.request.contextPath}/movie/detailAction.jsp?idx=11&page=2"><img src="../img/11.jpg" alt="영화포스터"><br>
			<div><strong>마녀(魔女) Part2. The Other One</strong></div></a></li>
			<li><a href="${pageContext.request.contextPath}/movie/detailAction.jsp?idx=12&page=2"><img src="../img/12.jpg" alt="영화포스터"><br>
			<div><strong>범죄도시 2</strong></div></a></li>
			<li><a href="${pageContext.request.contextPath}/movie/detailAction.jsp?idx=13&page=2"><img src="../img/13.jpg" alt="영화포스터"><br>
			<div><strong>브로커</strong></div></a></li>
			<li><a href="${pageContext.request.contextPath}/movie/detailAction.jsp?idx=14&page=2"><img src="../img/14.jpg" alt="영화포스터"><br>
			<div><strong>버즈 라이트이어</strong></div></a></li>
			<li><a href="${pageContext.request.contextPath}/movie/detailAction.jsp?idx=15&page=2"><img src="../img/15.jpg" alt="영화포스터"><br>
			<div><strong>쥬라기 월드 : 도미니언</strong></div></a></li>
			<li></li>
		</ul>	
	</div>
	<p class="controls">
		<span class="prev"><img src="../image/prev.png"></span>
		<span class="next"><img src="../image/next.png"></span>
	</p>
</div>

<div class="event_list_wrap">
	<div class="e_title">EVENT</div>
	<div class="event_list">
		<ul>
			<li class="e_img1"><a href="event1.jsp"><img alt="땡스VIP데이" src="../image/땡스VIP데이.jpg"></a></li>
			<li class="e_img1"><a href="event2.jsp"><img alt="탑건-매버릭_한정판포스터증정이벤트" src="../image/탑건-매버릭_한정판포스터증정이벤트.jpg"></a></li>
			<li class="e_img1"><a href="event3.jsp"><img alt="알라딘_4DX스페셜포스터" src="../image/알라딘_4DX스페셜포스터.jpg"></a></li>
			<li class="e_img2"><a href="event4.jsp"><img alt="GCV특별관" src="../image/GCV특별관.jpg"></a></li>
			<li class="e_img3"><a href="event5.jsp"><img alt="한산_라스트특가이벤트" src="../image/한산_라스트특가이벤트.jpg"></a></li>
			<li class="e_img3"><a href="event6.jsp"><img alt="헌트_라스트특가이벤트" src="../image/헌트_라스트특가이벤트.jpg"></a></li>
		</ul>
	</div>
</div>

<div class="store_list_wrap">
		<ul class="store_list">
			<li class="store_product">
				<a href="${pageContext.request.contextPath}/store/listAction2.jsp"><strong>콤보</strong><button class="btn_more">더보기 ></button></a><br>
				<div class="pd"><a href="${pageContext.request.contextPath}/store/detailAction.jsp?pcode=A001"><img alt="상품이미지" src="../image/GCV콤보.jpg">
				<div class="pd_info">GCV콤보<br>9000원</div></a></div><br>
				<div class="pd"><a href="${pageContext.request.contextPath}/store/detailAction.jsp?pcode=A002"><img alt="상품이미지" src="../image/더블콤보.jpg">
				<div class="pd_info">더블콤보<br>12000원</div></a></div><br>
				<div class="pd"><a href="${pageContext.request.contextPath}/store/detailAction.jsp?pcode=A003"><img alt="상품이미지" src="../image/스몰세트.jpg">
				<div class="pd_info">스몰세트<br>6500원</div></a></div>
			</li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<li class="store_product">
				<a href="${pageContext.request.contextPath}/store/listAction3.jsp"><strong>팝콘</strong><button class="btn_more">더보기 ></button></a><br>
				<div class="pd"><a href="${pageContext.request.contextPath}/store/detailAction.jsp?pcode=B001"><img alt="상품이미지" src="../image/고소팝콘(L).jpg">
				<div class="pd_info">고소팝콘(L)<br>5000원</div></a></div><br>
				<div class="pd"><a href="${pageContext.request.contextPath}/store/detailAction.jsp?pcode=B002"><img alt="상품이미지" src="../image/달콤팝콘(L).jpg">
				<div class="pd_info">달콤팝콘(L)<br>6000원</div></a></div><br>
				<div class="pd"><a href="${pageContext.request.contextPath}/store/detailAction.jsp?pcode=B003"><img alt="상품이미지" src="../image/더블치즈팝콘(L).jpg">
				<div class="pd_info">더블치즈팝콘(L)<br>6000원</div></a></div>
			</li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<li class="store_product">
				<a href="${pageContext.request.contextPath}/store/listAction4.jsp"><strong>음료</strong><button class="btn_more">더보기 ></button></a><br>
				<div class="pd"><a href="${pageContext.request.contextPath}/store/detailAction.jsp?pcode=C001"><img alt="상품이미지" src="../image/탄산음료(M).jpg">
				<div class="pd_info">탄산음료(M)<br>2500원</div></a></div><br>
				<div class="pd"><a href="${pageContext.request.contextPath}/store/detailAction.jsp?pcode=C002"><img alt="상품이미지" src="../image/탄산음료(L).jpg">
				<div class="pd_info">탄산음료(L)<br>3000원</div></a></div><br>
				<div class="pd"><a href="${pageContext.request.contextPath}/store/detailAction.jsp?pcode=C003"><img alt="상품이미지" src="../image/아메리카노(HOT).jpg">
				<div class="pd_info">아메리카노(L)<br>3500원</div></a></div>
			</li>
		</ul>
</div>

	<%@ include file="../main_footer.jsp" %>
	<script src="../css/GCVmainpage.js"></script>
  	<script src="../css/mainpage.js"></script>
</body>
</html>