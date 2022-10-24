<%@page import="vo.ticketing"%>
<%@page import="vo.buyTic"%>
<%@page import="vo.showtime"%>
<%@page import="vo.theater"%>
<%@page import="dao.TheaterDao"%>
<%@page import="vo.movie"%>
<%@page import="dao.MovieDao"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dao.TicketingDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<% 
	int sid = Integer.parseInt(request.getParameter("sid"));
	int midx = Integer.parseInt(request.getParameter("idx"));
	int tidx = Integer.parseInt(request.getParameter("tidx"));
	
	TicketingDao dao = TicketingDao.getInstance();
	MovieDao dao2 = MovieDao.getInstance();
	TheaterDao dao3 = TheaterDao.getInstance();
	
	showtime so = dao.selectDT(sid);
	movie mo =dao2.getMovie(midx);
	theater to = dao3.getT(tidx); 
	String id = (String)session.getAttribute("user_id");
	buyTic vo = new buyTic();
	
	vo.setBuy_tic_id(0);
	vo.setCustom_id(id);	
	vo.setMovie_name(mo.getMovie_name());
	vo.setTheater_name(to.getTheater_name());
	vo.setDay1(so.getDay1());
	vo.setTime1(so.getTime1());
	vo.setShowtime_id(sid);
	List<String> list = new ArrayList<>();

	Map<String, Object> map = new HashMap<>();
	map.put("showtime_id", sid);
	for(int i=1; i<51;i++){
		if(request.getParameter(Integer.toString(i)) !=null){
			String s = request.getParameter(Integer.toString(i));
			
			map.put("seat", "A"+Integer.toString(i));
			map.put("seatno", Integer.toString(i)+"(예매)");
			list.add("A"+Integer.toString(i));
			dao.update(map);
			vo.setSeat("A"+Integer.toString(i));
			vo.setSeatno(Integer.toString(i));
			dao.insertTi(vo);
	} 
		
} request.setAttribute("list", list);
 
	pageContext.forward("ticketingS.jsp");
%>
