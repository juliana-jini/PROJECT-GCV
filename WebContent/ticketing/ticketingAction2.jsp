<%@page import="vo.ticketing"%>
<%@page import="vo.showtime"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="dao.TicketingDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	int idx = Integer.parseInt(request.getParameter("idx"));
	int tidx = Integer.parseInt(request.getParameter("tidx"));
	String day1 = request.getParameter("day1");
	String time1 = request.getParameter("time1");
	
	Map<String, Object> map = new HashMap<>();
	map.put("theater_id", tidx);
	map.put("movie_id", idx);
	map.put("day1", day1);
	map.put("time1", time1);
	
	
	request.setAttribute("idx", idx);
	request.setAttribute("tidx", tidx);
	request.setAttribute("day1", day1);
	request.setAttribute("time1", time1);
	
	
	
	TicketingDao dao = TicketingDao.getInstance();
	int i = dao.selectS(map);
	ticketing vo = dao.selectT(i);
	request.setAttribute("sid", i);
	request.setAttribute("T", vo);
	pageContext.forward("ticketingList3.jsp");
%>