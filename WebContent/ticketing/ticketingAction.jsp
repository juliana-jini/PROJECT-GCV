<%@page import="vo.showtime"%>
<%@page import="dao.TicketingDao"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="vo.movie"%>
<%@page import="dao.MovieDao"%>
<%@page import="vo.theater"%>
<%@page import="java.util.List"%>
<%@page import="dao.TheaterDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String s = "o";
	if(!s.equals(request.getParameter("boolean"))){
	TheaterDao dao = TheaterDao.getInstance();
	MovieDao dao2 = MovieDao.getInstance();
	List<theater> list = dao.select();
	List<movie> list2 = dao2.select();
	
	List<theater> vo = dao.selectRG(1);
	List<theater> vo2 = dao.selectRG(2);
	List<theater> vo3 = dao.selectRG(3);
	List<theater> vo4 = dao.selectRG(4);
	List<theater> vo5 = dao.selectRG(5);
	List<theater> vo6 = dao.selectRG(6);
	List<theater> vo7 = dao.selectRG(7);
	List<theater> vo8 = dao.selectRG(8);
	List<theater> vo9 = dao.selectRG(9);
	
	request.setAttribute("vo", vo);
	request.setAttribute("vo2", vo2);
	request.setAttribute("vo3", vo3);
	request.setAttribute("vo4", vo4);
	request.setAttribute("vo5", vo5);
	request.setAttribute("vo6", vo6);
	request.setAttribute("vo7", vo7);
	request.setAttribute("vo8", vo8);
	request.setAttribute("vo9", vo9);
	
	request.setAttribute("theater", list);
	request.setAttribute("movie", list2);
	pageContext.forward("ticketingList.jsp");
} else {
	int idx = Integer.parseInt(request.getParameter("idx"));
	int tidx = Integer.parseInt(request.getParameter("tidx"));
	
	Map<String, Object> map = new HashMap<>();
	map.put("movie_id", idx);
	map.put("theater_id", tidx);
	
	request.setAttribute("idx", idx);
	request.setAttribute("tidx", tidx);
	
	TicketingDao dao = TicketingDao.getInstance();
	List<showtime> list = dao.select(map);
	request.setAttribute("slist", list);
	pageContext.forward("ticketingList2.jsp");
}
	
%>