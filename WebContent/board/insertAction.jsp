<%@page import="vo.QnAboard"%>
<%@page import="dao.QnAboardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String subject = request.getParameter("subject");
	String custom_id = request.getParameter("custom_id");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	String ip = request.getRemoteAddr();

	QnAboardDao qnadao = QnAboardDao.getInstance();

	QnAboard bean 
	= new QnAboard(0,custom_id,password,subject,content,0,null,ip,0);
	qnadao.insert(bean);
	response.sendRedirect("listAction.jsp");	//글목록 화면으로 url 재요청
%>