<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="dao.MypageDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	MypageDao dao = MypageDao.getInstance();
	int tid = Integer.parseInt(request.getParameter("tid"));
	int sid = Integer.parseInt(request.getParameter("sid"));
	String seatno = request.getParameter("seatno");
	String seat = request.getParameter("seat");
	Map<String, Object> map = new HashMap<>();
	map.put("seat", seat);
	map.put("seatno", seatno);
	map.put("showtime_id", sid);
	dao.delete(tid);
	dao.update(map);
	pageContext.forward("mypageAction.jsp");
	
%>