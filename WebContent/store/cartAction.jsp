<%@page import="store.Store"%>
<%@page import="store.BuyDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BuyDao dao = BuyDao.getInstance();
	String id = (String)session.getAttribute("user_id");
	List<Store> list = dao.selectCart(id);
	List<Integer> list2 = dao.selectPrice(id);
	request.setAttribute("list2", list2);
	request.setAttribute("list", list);
	pageContext.forward("cartForm.jsp");
%>