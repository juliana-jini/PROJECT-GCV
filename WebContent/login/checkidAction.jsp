<%@page import="vo.CustomVo" %>
<%@page import="java.util.HashMap" %>
<%@page import="java.util.Map" %>
<%@page import="dao.CustomDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id2");
	
	
	CustomDao dao = CustomDao.getInstance();
	String use_id = dao.check_id(id);
	
	out.print("<script>");
	
	if(use_id==null || use_id.length()==0) {
		out.print("alert('사용가능한 id입니다.');");
		request.setAttribute("id", id);
		out.print("location.href=history.back();");
	}
	else {
		
		out.print("alert('사용중인 id입니다. 다른id를 입력하세요');");
		out.print("location.href=history.back();");
	}
	out.print("</script>");
	%>
	
	