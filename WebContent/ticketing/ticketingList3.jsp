<%@page import="vo.theater"%>
<%@page import="vo.movie"%>
<%@page import="vo.showtime"%>
<%@page import="dao.TheaterDao"%>
<%@page import="dao.MovieDao"%>
<%@page import="dao.TicketingDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GCV 예매</title>
<link rel="stylesheet" href="../css/mainpage.css" />
<link rel="stylesheet" href="../css/ticketing3.css">
 <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
</head>
<style>
    @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap");
  </style>
<body>

		<%
	int sid = (int)(request.getAttribute("sid"));
	int midx = Integer.parseInt(request.getParameter("idx"));
	int tidx = Integer.parseInt(request.getParameter("tidx"));
	
	TicketingDao dao = TicketingDao.getInstance();
	MovieDao dao2 = MovieDao.getInstance();
	TheaterDao dao3 = TheaterDao.getInstance();
	
	showtime so = dao.selectDT(sid);
	movie mo =dao2.getMovie(midx);
	theater to = dao3.getT(tidx); %>
	<form style="    margin: 30% 0 0 30%;" action="ticketingAction3.jsp">
	<input type="hidden" value="${idx}" name="idx" id="movie">
	<input type="hidden" value="${tidx}" name="tidx" id="theater">
	<input type="hidden" value="${day1 }" name="day1" id="day1">
	<input type="hidden" value="${time1 }" name="time1" id="time1">
	<input type="hidden" value="${sid }" name="sid" id="sid">
	<input type="hidden" value="${T }" name="t" id="t">
	
	<div class=cbx1>
		&nbsp;&nbsp;
		<% for(int i= 1; i <=10; i++) {%>
			<small><%= i %></small>&nbsp;&nbsp;
			<% } %>
			<br/>
		
			A<input type="checkbox" name="${T.a1 }" value="${T.a1 }" class="seat">
			<input type="checkbox" name="${T.a2 }" value="${T.a2 }" class="seat">
			<input type="checkbox" name="${T.a3 }" value="${T.a3 }" class="seat">
			<input type="checkbox" name="${T.a4 }" value="${T.a4 }" class="seat">
			<input type="checkbox" name="${T.a5 }" value="${T.a5 }" class="seat">
			<input type="checkbox" name="${T.a6 }" value="${T.a6 }" class="seat">
			<input type="checkbox" name="${T.a7 }" value="${T.a7 }" class="seat">
			<input type="checkbox" name="${T.a8 }" value="${T.a8 }" class="seat">
			<input type="checkbox" name="${T.a9 }" value="${T.a9 }" class="seat">
			<input type="checkbox" name="${T.a10 }" value="${T.a10 }" class="seat"><hr>
			B<input type="checkbox" name="${T.a11 }" value="${T.a11 }" class="seat">
			<input type="checkbox" name="${T.a12 }" value="${T.a12 }" class="seat">
			<input type="checkbox" name="${T.a13 }" value="${T.a13 }" class="seat">
			<input type="checkbox" name="${T.a14 }" value="${T.a14 }" class="seat">
			<input type="checkbox" name="${T.a15 }" value="${T.a15 }" class="seat">
			<input type="checkbox" name="${T.a16 }" value="${T.a16 }" class="seat">
			<input type="checkbox" name="${T.a17 }" value="${T.a17 }" class="seat">
			<input type="checkbox" name="${T.a18 }" value="${T.a18 }" class="seat">
			<input type="checkbox" name="${T.a19 }" value="${T.a19 }" class="seat">
			<input type="checkbox" name="${T.a20 }" value="${T.a20 }" class="seat"><hr>
			C<input type="checkbox" name="${T.a21 }" value="${T.a21 }" class="seat">
			<input type="checkbox" name="${T.a22 }" value="${T.a22 }" class="seat">
			<input type="checkbox" name="${T.a23 }" value="${T.a23 }" class="seat">
			<input type="checkbox" name="${T.a24 }" value="${T.a24 }" class="seat">
			<input type="checkbox" name="${T.a25 }" value="${T.a25 }" class="seat">
			<input type="checkbox" name="${T.a26 }" value="${T.a26 }" class="seat">
			<input type="checkbox" name="${T.a27 }" value="${T.a27 }" class="seat">
			<input type="checkbox" name="${T.a28 }" value="${T.a28 }" class="seat">
			<input type="checkbox" name="${T.a29 }" value="${T.a29 }" class="seat">
			<input type="checkbox" name="${T.a30 }" value="${T.a30 }" class="seat"><hr>
			D<input type="checkbox" name="${T.a31 }" value="${T.a31 }" class="seat">
			<input type="checkbox" name="${T.a32 }" value="${T.a32 }" class="seat">
			<input type="checkbox" name="${T.a33 }" value="${T.a33 }" class="seat">
			<input type="checkbox" name="${T.a34 }" value="${T.a34 }" class="seat">
			<input type="checkbox" name="${T.a35 }" value="${T.a35 }" class="seat">
			<input type="checkbox" name="${T.a36 }" value="${T.a36 }" class="seat">
			<input type="checkbox" name="${T.a37 }" value="${T.a37 }" class="seat">
			<input type="checkbox" name="${T.a38 }" value="${T.a38 }" class="seat">
			<input type="checkbox" name="${T.a39 }" value="${T.a39 }" class="seat">
			<input type="checkbox" name="${T.a40 }" value="${T.a40 }" class="seat"><hr>
			E<input type="checkbox" name="${T.a41 }" value="${T.a41 }" class="seat">
			<input type="checkbox" name="${T.a42 }" value="${T.a42 }" class="seat">
			<input type="checkbox" name="${T.a43 }" value="${T.a43 }" class="seat">
			<input type="checkbox" name="${T.a44 }" value="${T.a44 }" class="seat">
			<input type="checkbox" name="${T.a45 }" value="${T.a45 }" class="seat">
			<input type="checkbox" name="${T.a46 }" value="${T.a46 }" class="seat">
			<input type="checkbox" name="${T.a47 }" value="${T.a47 }" class="seat">
			<input type="checkbox" name="${T.a48 }" value="${T.a48 }" class="seat">
			<input type="checkbox" name="${T.a49 }" value="${T.a49 }" class="seat">
			<input type="checkbox" name="${T.a50 }" value="${T.a50 }" class="seat">

	</div>		


			<button style="display: none;" id="btn" class="btn_fixedTicketing">예매</button>
	</form>
	<button id= "bt" type="button" onclick="requestPay();" class="btn_fixedTicketing">결제</button>

	  <script>
	  $(document).ready(function(){
			for(i=0; i<50;i++){
		if(document.getElementsByClassName("seat")[i].value.includes("(예매)")){
			document.getElementsByClassName("seat")[i].disabled=true;
			document.getElementsByClassName("seat")[i].checked=true;
		} else {
			document.getElementsByClassName("seat")[i].disabled=false;
			document.getElementsByClassName("seat")[i].checked=false;
		}
			}
	  });
		
    	function requestPay() {
    		
    		let p=0;
    		p= $(":checkbox:checked").length
   			p=p-$(":checkbox:disabled").length
   			let s = $(":checkbox:checked").val()
  	      IMP.init('imp46547018');
  	      IMP.request_pay({ 
  	          pg: 'kakaopay.TC0ONETIME',
  	          pay_method: 'card',
  	          merchant_uid: 'order_no_012'+new Date().getTime(),
  	          name: '<%= to.getTheater_name()+" "+mo.getMovie_name()+" "+so.getDay1()+" "+so.getTime1()%>',
  	          amount: 15000*p,
  	          buyer_name: '하하'
  	      }, function (rsp) {
  	          if (rsp.success) {
  	           	 alert("성공");
  	           document.getElementById('bt').style.display='none';
  	       	document.getElementById('btn').style.display='block';
  	          } else {
  	             alert('실패');
  	          }
  	      });
  	    }
  </script>
</body>
</html>