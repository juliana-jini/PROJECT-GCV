<%@page import="store.Buy"%>
<%@page import="store.Store"%>
<%@page import="java.util.List"%>
<%@page import="store.BuyDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BuyDao dao = BuyDao.getInstance();
	String id = (String)session.getAttribute("user_id");
	dao.deleteCart(id);
	pageContext.forward("cartAction.jsp");
%>