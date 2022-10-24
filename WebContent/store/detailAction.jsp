<%@page import="store.Store"%>
<%@page import="store.StoreDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String pcode = request.getParameter("pcode");
	StoreDao dao = StoreDao.getInstance();
	Store vo = dao.getDetail(pcode);
	request.setAttribute("vo", vo);
	
	List<Store> list = dao.listStore();
	request.setAttribute("list", list);
	
	pageContext.forward("detailView.jsp");		//화면 페이지로 애트리뷰트와 함께 요청 전달.
%>