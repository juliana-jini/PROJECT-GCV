<%@page import="store.Buy"%>
<%@page import="vo.buyTic"%>
<%@page import="java.util.List"%>
<%@page import="dao.MypageDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    	MypageDao dao = MypageDao.getInstance();
		String id = (String)session.getAttribute("user_id");
		List<buyTic> list = dao.select(id);
		List<Buy> slist = dao.selectS(id);
		request.setAttribute("slist", slist);
		request.setAttribute("list", list);
		pageContext.forward("mypage.jsp");
		
%>
