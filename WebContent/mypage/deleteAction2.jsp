<%@page import="dao.MypageDao"%>
<%@page import="store.BuyDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
 	MypageDao dao = MypageDao.getInstance();
	int sid = Integer.parseInt(request.getParameter("sid"));
	dao.deleteS(sid);
	pageContext.forward("mypageAction.jsp");
%>