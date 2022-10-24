<%@page import="dao.MovieDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	int pages = Integer.parseInt(request.getParameter("page"));
	int ridx = Integer.parseInt(request.getParameter("ridx"));
	MovieDao dao = MovieDao.getInstance();
	dao.delete(ridx);
	request.setAttribute("idx", idx);
	request.setAttribute("page", pages);
	pageContext.forward("detailAction.jsp");
%>