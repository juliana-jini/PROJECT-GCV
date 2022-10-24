<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="vo.theater"%>
<%@page import="dao.TheaterDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    /* 최초실행파일 */
    
<% TheaterDao dao = TheaterDao.getInstance();
	int theater_id = 1001;
	theater vo0 = dao.getT(theater_id);
	request.setAttribute("th_id", vo0);
	
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
	pageContext.forward("th.jsp");
	

%>
	