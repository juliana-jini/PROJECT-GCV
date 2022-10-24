<%@page import="store.Cart"%>
<%@page import="store.BuyDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BuyDao dao = BuyDao.getInstance();
	String pcode = request.getParameter("pcode");
	String id = (String)session.getAttribute("user_id");
	Cart vo = new Cart(0, pcode, request.getParameter("pname"), Integer.parseInt(request.getParameter("sell_price")),
					  request.getParameter("composition"), id, Integer.parseInt(request.getParameter("amount")),
					  request.getParameter("filename"));
	dao.insertCart(vo);
	
	out.print("<script>");
	out.print("history.back();");
	out.print("</script>");
%>