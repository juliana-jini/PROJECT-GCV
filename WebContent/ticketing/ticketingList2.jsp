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
<link rel="stylesheet" href="../css/ticketing2.css" />
 <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
</head>
<style>
    @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap");
  </style>
<body>
<%@ include file="../header.jsp" %>
<h1 style="text-align: center;width: 920px;margin-left: 25%;">날짜 / 시간  / 좌석선택</h1>
<div class=base>
<div class="tab_d">
		<button class="tablinks_d" onclick="openDay(event, 'y_day1');javascript:getDay(`${slist[0].day1}`);">${slist[0].day1 } </button>
		<button class="tablinks_d" onclick="openDay(event, 'y_day2');javascript:getDay(`${slist[3].day1}`);"> ${slist[3].day1 } </button>
		<button class="tablinks_d" onclick="openDay(event, 'y_day3');javascript:getDay(`${slist[6].day1}`);"> ${slist[6].day1 } </button>
		<button class="tablinks_d" onclick="openDay(event, 'y_day4');javascript:getDay(`${slist[9].day1}`);"> ${slist[9].day1 } </button>
		<button class="tablinks_d" onclick="openDay(event, 'y_day5');javascript:getDay(`${slist[12].day1}`);"> ${slist[12].day1 } </button>
		<button class="tablinks_d" onclick="openDay(event, 'y_day6');javascript:getDay(`${slist[15].day1}`);"> ${slist[15].day1 } </button>
		<button class="tablinks_d" onclick="openDay(event, 'y_day7');javascript:getDay(`${slist[18].day1}`);"> ${slist[18].day1 } </button>
</div> 
<div class=tab_t>
<div id="y_day1" class="tabcontent_d" style="display:none;">
		<button class="tablinks_t" onclick="openTime(event, 'y_time01');javascript:getTime(`${slist[0].time1}`);"> ${slist[0].time1 } </button>
		<button class="tablinks_t" onclick="openTime(event, 'y_time02');javascript:getTime(`${slist[1].time1}`);"> ${slist[1].time1 } </button>
		<button class="tablinks_t" onclick="openTime(event, 'y_time03');javascript:getTime(`${slist[2].time1}`);"> ${slist[2].time1 } </button>
</div>
<div id="y_day2" class="tabcontent_d" style="display:none;">
		<button class="tablinks_t" onclick="openTime(event, 'y_time04');javascript:getTime(`${slist[3].time1}`);"> ${slist[3].time1 } </button>
		<button class="tablinks_t" onclick="openTime(event, 'y_time05');javascript:getTime(`${slist[4].time1}`);"> ${slist[4].time1 } </button>
		<button class="tablinks_t" onclick="openTime(event, 'y_time06');javascript:getTime(`${slist[5].time1}`);"> ${slist[5].time1 } </button>
</div>
<div id="y_day3" class="tabcontent_d" style="display:none;">
		<button class="tablinks_t" onclick="openTime(event, 'y_time07');javascript:getTime(`${slist[6].time1}`);"> ${slist[6].time1 } </button>
		<button class="tablinks_t" onclick="openTime(event, 'y_time08');javascript:getTime(`${slist[7].time1}`);"> ${slist[7].time1 } </button>
		<button class="tablinks_t" onclick="openTime(event, 'y_time09');javascript:getTime(`${slist[8].time1}`);"> ${slist[8].time1 } </button>
</div>
<div id="y_day4" class="tabcontent_d" style="display:none;">
		<button class="tablinks_t" onclick="openTime(event, 'y_time10');javascript:getTime(`${slist[9].time1}`);"> ${slist[9].time1 } </button>
		<button class="tablinks_t" onclick="openTime(event, 'y_time11');javascript:getTime(`${slist[10].time1}`);"> ${slist[10].time1 } </button>
		<button class="tablinks_t" onclick="openTime(event, 'y_time12');javascript:getTime(`${slist[11].time1}`);"> ${slist[11].time1 } </button>
</div>
<div id="y_day5" class="tabcontent_d" style="display:none;">
		<button class="tablinks_t" onclick="openTime(event, 'y_time13');javascript:getTime(`${slist[12].time1}`);"> ${slist[12].time1 } </button>
		<button class="tablinks_t" onclick="openTime(event, 'y_time14');javascript:getTime(`${slist[13].time1}`);"> ${slist[13].time1 } </button>
		<button class="tablinks_t" onclick="openTime(event, 'y_time15');javascript:getTime(`${slist[14].time1}`);"> ${slist[14].time1 } </button>
</div>
<div id="y_day6" class="tabcontent_d" style="display:none;">		
		<button class="tablinks_t" onclick="openTime(event, 'y_time16');javascript:getTime(`${slist[15].time1}`);"> ${slist[15].time1 } </button>
		<button class="tablinks_t" onclick="openTime(event, 'y_time17');javascript:getTime(`${slist[16].time1}`);"> ${slist[16].time1 } </button>
		<button class="tablinks_t" onclick="openTime(event, 'y_time18');javascript:getTime(`${slist[17].time1}`);"> ${slist[17].time1 } </button>
</div>
<div id="y_day7" class="tabcontent_d" style="display:none;">		
		<button class="tablinks_t" onclick="openTime(event, 'y_time19');javascript:getTime(`${slist[18].time1}`);"> ${slist[18].time1 } </button>
		<button class="tablinks_t" onclick="openTime(event, 'y_time20');javascript:getTime(`${slist[19].time1}`);"> ${slist[19].time1 } </button>
		<button class="tablinks_t" onclick="openTime(event, 'y_time21');javascript:getTime(`${slist[20].time1}`);"> ${slist[20].time1 } </button>
</div>
</div>	

<div class=frm>
<div id="y_time01" class="tabcontent_t" style="display:none;">
		<iframe src="ticketingAction2.jsp?idx=${idx}&tidx=${tidx}&day1=월요일&time1=10%3A00~12%3A30"></iframe> </div> 
<div id="y_time02" class="tabcontent_t" style="display:none;">
		<iframe src="ticketingAction2.jsp?idx=${idx}&tidx=${tidx}&day1=월요일&time1=17%3A00~19%3A30"></iframe> </div> 
<div id="y_time03" class="tabcontent_t" style="display:none;">
		<iframe src="ticketingAction2.jsp?idx=${idx}&tidx=${tidx}&day1=월요일&time1=21%3A00~23%3A30"></iframe> </div> 
<div id="y_time04" class="tabcontent_t" style="display:none;">
		<iframe src="ticketingAction2.jsp?idx=${idx}&tidx=${tidx}&day1=화요일&time1=10%3A00~12%3A30"></iframe> </div> 
<div id="y_time05" class="tabcontent_t" style="display:none;">
		<iframe src="ticketingAction2.jsp?idx=${idx}&tidx=${tidx}&day1=화요일&time1=17%3A00~19%3A30"></iframe> </div> 
<div id="y_time06" class="tabcontent_t" style="display:none;">
		<iframe src="ticketingAction2.jsp?idx=${idx}&tidx=${tidx}&day1=화요일&time1=21%3A00~23%3A30"></iframe> </div> 
<div id="y_time07" class="tabcontent_t" style="display:none;">
		<iframe src="ticketingAction2.jsp?idx=${idx}&tidx=${tidx}&day1=수요일&time1=10%3A00~12%3A30"></iframe> </div> 
<div id="y_time08" class="tabcontent_t" style="display:none;">
		<iframe src="ticketingAction2.jsp?idx=${idx}&tidx=${tidx}&day1=수요일&time1=17%3A00~19%3A30"></iframe> </div> 
<div id="y_time09" class="tabcontent_t" style="display:none;">
		<iframe src="ticketingAction2.jsp?idx=${idx}&tidx=${tidx}&day1=수요일&time1=21%3A00~23%3A30"></iframe> </div> 
<div id="y_time10" class="tabcontent_t" style="display:none;">
		<iframe src="ticketingAction2.jsp?idx=${idx}&tidx=${tidx}&day1=목요일&time1=10%3A00~12%3A30"></iframe> </div> 
<div id="y_time11" class="tabcontent_t" style="display:none;">
		<iframe src="ticketingAction2.jsp?idx=${idx}&tidx=${tidx}&day1=목요일&time1=17%3A00~19%3A30"></iframe> </div> 
<div id="y_time12" class="tabcontent_t" style="display:none;">
		<iframe src="ticketingAction2.jsp?idx=${idx}&tidx=${tidx}&day1=목요일&time1=21%3A00~23%3A30"></iframe> </div> 
<div id="y_time13" class="tabcontent_t" style="display:none;">
		<iframe src="ticketingAction2.jsp?idx=${idx}&tidx=${tidx}&day1=금요일&time1=10%3A00~12%3A30"></iframe> </div> 
<div id="y_time14" class="tabcontent_t" style="display:none;">
		<iframe src="ticketingAction2.jsp?idx=${idx}&tidx=${tidx}&day1=금요일&time1=17%3A00~19%3A30"></iframe> </div> 
<div id="y_time15" class="tabcontent_t" style="display:none;">
		<iframe src="ticketingAction2.jsp?idx=${idx}&tidx=${tidx}&day1금요일&time1=21%3A00~23%3A30"></iframe> </div> 
<div id="y_time16" class="tabcontent_t" style="display:none;">
		<iframe src="ticketingAction2.jsp?idx=${idx}&tidx=${tidx}&day1=토요일&time1=10%3A00~12%3A30"></iframe> </div> 
<div id="y_time17" class="tabcontent_t" style="display:none;">
		<iframe src="ticketingAction2.jsp?idx=${idx}&tidx=${tidx}&day1=토요일&time1=17%3A00~19%3A30"></iframe> </div> 
<div id="y_time18" class="tabcontent_t" style="display:none;">
		<iframe src="ticketingAction2.jsp?idx=${idx}&tidx=${tidx}&day1=토요일&time1=21%3A00~23%3A30"></iframe> </div> 
<div id="y_time19" class="tabcontent_t" style="display:none;">
		<iframe src="ticketingAction2.jsp?idx=${idx}&tidx=${tidx}&day1=일요일&time1=10%3A00~12%3A30"></iframe> </div> 
<div id="y_time20" class="tabcontent_t" style="display:none;">
		<iframe src="ticketingAction2.jsp?idx=${idx}&tidx=${tidx}&day1=일요일&time1=17%3A00~19%3A30"></iframe> </div> 
<div id="y_time21" class="tabcontent_t" style="display:none;">
		<iframe src="ticketingAction2.jsp?idx=${idx}&tidx=${tidx}&day1=일요일&time1=21%3A00~23%3A30"></iframe> </div> 
</div>
</div>
<form action="ticketingAction2.jsp">
<input type="hidden" value="${idx}" name="idx" id="movie">
<input type="hidden" value="${tidx}" name="tidx" id="theater">
<input type="hidden" name="day1" id="day1">
<input type="hidden" name="time1" id="time1">
</form>
<script type="text/javascript">
	function getDay(i){
		document.getElementById('day1').value=i;
		console.log(document.getElementById('day1').value);
	}
	function getTime(i){
		document.getElementById('time1').value=i;
		console.log(document.getElementById('time1').value);
	}
	</script>
	<script src="${pageContext.request.contextPath}/resources/js/ticketing.js"></script>
<%@ include file="../footer.jsp" %>
  <script src="../css/mainpage.js"></script>
  <script src="../css/ticketing.js"></script>
</body>
</html>