<%@page import="dao.CustomDao"%>
<%@page import="vo.CustomVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");
	String name= request.getParameter("cname");
	String id = request.getParameter("cid");
	String password = request.getParameter("cpassword");
	String birth= request.getParameter("cbirth");
	String phone= request.getParameter("cphone");
	String email= request.getParameter("cemail");
	
	CustomVo vo = new CustomVo(id,name,password,birth,phone,email);
	CustomDao dao= CustomDao.getInstance();
	dao.insert(vo);
	
	response.sendRedirect("loginForm.jsp"); //회원가입 후, 로그인페이지로 이동
	
	

%>