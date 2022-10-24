<%@page import="store.Store"%>
<%@page import="java.util.List"%>
<%@page import="store.StoreDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	StoreDao dao = StoreDao.getInstance();
	List<Store> list = dao.listCategory("스낵");
	request.setAttribute("list", list);
	pageContext.forward("listView.jsp");
%>