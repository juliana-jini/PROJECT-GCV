<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../header.jsp" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="content-type" content="text/html" />
	<title>GCV</title>
	<link rel="icon" href="../img/favicon.png">
	<script src="http://code.jquery.com/jquery-1.12.3.min.js"></script>
	<script src="../css/th.js" defer="defer"></script>
	<link rel="stylesheet" href="../css/mainpage.css" />
	<link rel="stylesheet" href="../css/th-style.css">
</head>
<style>
    @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap");
  </style>
<body>
<br><br>
	<div id="con1">
		<!-- 탭박스 구현 -->
		<ul id="tabTitle">
			<li class="tab-tt current" data-tab="tab1">서울</li>
			<li class="tab-tt" data-tab="tab2">경기</li>
			<li class="tab-tt" data-tab="tab3">인천</li>
			<li class="tab-tt" data-tab="tab4">강원</li>
			<li class="tab-tt" data-tab="tab5" style="width:12%;">대전/충청</li>
			<li class="tab-tt" data-tab="tab6">대구</li>
			<li class="tab-tt" data-tab="tab7" style="width:12%;">부산/울산</li>
			<li class="tab-tt" data-tab="tab8">경상</li>
			<li class="tab-tt" data-tab="tab9" style="width:15%;">광주/전라/제주</li>
		</ul>
		<div id="tab1" class="tab-con current">
			<c:forEach var="cgv" items="${vo }">
			<a href="th-action2.jsp?regioncode=${cgv.regioncode }
			&theater_id=${cgv.theater_id }">${cgv.theater_name }</a>
			</c:forEach>
			</div>
		<div id="tab2" class="tab-con">
			<c:forEach var="cgv" items="${vo2 }">
			<a href="th-action2.jsp?regioncode=${cgv.regioncode }
			&theater_id=${cgv.theater_id }">${cgv.theater_name }</a>
			</c:forEach>
		</div>
		<div id="tab3" class="tab-con">
			<c:forEach var="cgv" items="${vo3 }">
			<a href="th-action2.jsp?regioncode=${cgv.regioncode }
			&theater_id=${cgv.theater_id }">${cgv.theater_name }</a>
			</c:forEach>		
		</div>
		<div id="tab4" class="tab-con">
			<c:forEach var="cgv" items="${vo4 }">
			<a href="th-action2.jsp?regioncode=${cgv.regioncode }
			&theater_id=${cgv.theater_id }">${cgv.theater_name }</a>
			</c:forEach>		
		</div>
		<div id="tab5" class="tab-con">
			<c:forEach var="cgv" items="${vo5 }">
			<a href="th-action2.jsp?regioncode=${cgv.regioncode }
			&theater_id=${cgv.theater_id }">${cgv.theater_name }</a>
			</c:forEach>		
		</div>
		<div id="tab6" class="tab-con">
			<c:forEach var="cgv" items="${vo6 }">
			<a href="th-action2.jsp?regioncode=${cgv.regioncode }
			&theater_id=${cgv.theater_id }">${cgv.theater_name }</a>
			</c:forEach>		
		</div>
		<div id="tab7" class="tab-con">
			<c:forEach var="cgv" items="${vo7 }">
			<a href="th-action2.jsp?regioncode=${cgv.regioncode }
			&theater_id=${cgv.theater_id }">${cgv.theater_name }</a>
			</c:forEach>		
		</div>
		<div id="tab8" class="tab-con">
			<c:forEach var="cgv" items="${vo8 }">
			<a href="th-action2.jsp?regioncode=${cgv.regioncode }
			&theater_id=${cgv.theater_id }">${cgv.theater_name }</a>
			</c:forEach>		
		</div>
		<div id="tab9" class="tab-con">
			<c:forEach var="cgv" items="${vo9 }">
			<a href="th-action2.jsp?regioncode=${cgv.regioncode }
			&theater_id=${cgv.theater_id }">${cgv.theater_name }</a>
			</c:forEach>		
		</div>
	</div>

<h1 style="text-align: center;">${th_id.theater_name }</h1>
	<div class="user-wrap">
	<div class="user-image">
	<img class="th_img" src="${pageContext.request.contextPath}/${th_id.theater_img }">
	<div class="user-text_bgr">
	<p style="float:left;line-height : 30px;">	${th_id.location_land }<br>
		<span style="line-height : 60px;">${th_id.location_road }</span></p>
	<p style="float:right;padding-top:20px;padding-right: 50px;height:77px;">
		${th_id.hp }<br>
		<span style="line-height : 0px;"></span>
		${th_id.screen }	
		${th_id.seat }</p></div>
		</div>
		</div>	
	<div class=user-wrap2>
	<div class="user-image2">
	<a href="#" target="_blank">
	<!-- 광고 링크
	"http://ad.cgv.co.kr/click/CGV/CGV_201401/sub@SponsorBar_980?ads_id=47617&amp;creative_id=67694&amp;click_id=88133&amp;content_series=&amp;event=" 
	 -->
	<img src="https://adimg.cgv.co.kr/images/202208/comebackhome/0908_980x90.jpg" width="980" height="90" border="0" alt="컴백홈"></a>
	</div>	

	<div class="reservation">
	<ul>
	<li><a href="${pageContext.request.contextPath}/ticketing/ticketingAction.jsp">예매하기</a></li>
	<li><a href="${pageContext.request.contextPath}/ticketing/ticketingAction.jsp">스토어</a></li>
	</ul>
	</div> 
	
	<%-- 위도, 경도값 확인
	<p>${th_id.theater_x },${th_id.theater_y }</p> --%>
	<div class="map">
	<h2 style="color:#6A6F77;">위치 /주차안내</h2>
<div class="map-img" id="map">
	<script type="text/javascript"
	 src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ce59e9f5df4ab606c071ddd2286bcb80"></script>
	<script>
				var mapContainer = document.getElementById('map'),
			    mapOption = { 
			        center: new kakao.maps.LatLng(${th_id.theater_x }, ${th_id.theater_y }),
			        level: 3 // 
			    };

			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

			var markerPosition  = new kakao.maps.LatLng(${th_id.theater_x }, ${th_id.theater_y }); 

			var marker = new kakao.maps.Marker({
			    position: markerPosition
			});

			marker.setMap(map);
			</script>
</div>
<div class="bus-info">
<h3 style="color:#6A6F77;border-bottom:1px solid #6A6F77;width:400px;"><span style="display: inline-block;
    width: 50px;
    height: 27px;
    background: url(https://img.cgv.co.kr/R2014/images/sprite/sprite_icon.png) -200px -130px no-repeat;
    vertical-align: middle;
    font: 0/0 a;
    zoom: 1;"></span>교통안내</h3><br>
    <div class="info">
${th_id.bus_info }
</div>
</div>
<div class="parking-info">
<h3 style="color:#6A6F77;border-bottom:1px solid #6A6F77;width:804px;"><span style="display: inline-block;
    width: 50px;
    height: 27px;
    background: url(https://img.cgv.co.kr/R2014/images/sprite/sprite_icon.png) -200px -158px no-repeat;
    vertical-align: middle;
    font: 0/0 a;
    zoom: 1";></span>주차안내</h3><br>
    <span class="info">
${th_id.parking_info }
</span>
</div>
</div>
</div>
	 <%@ include file="../footer.jsp" %>
  <script src="../css/mainpage.js"></script>
</body>
</html>


}
