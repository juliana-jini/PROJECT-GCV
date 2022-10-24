<%@page import="vo.CustomVo" %>
<%@page import="java.util.HashMap" %>
<%@page import="java.util.Map" %>
<%@page import="dao.CustomDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("custom_id");
	String birth = request.getParameter("custom_birth");
	Map<String, String> fpw = new HashMap<>();
	
	fpw.put("custom_id",id);
	fpw.put("custom_birth",birth);
	CustomDao dao = CustomDao.getInstance();
	String pw = dao.find_pw(fpw);

	
	
	out.print("<script>");
	
	if(pw==null || pw.length()==0) { //조회되는 비밀번호가 없을 경우
		out.print("alert('일치하는 정보가 없습니다. 다시 확인해 주세요!');");
		out.print("location.href=history.back()");
	}
	else{
		session.setAttribute("find_pw",pw);
		out.print("alert('정보 조회에 성공했습니다. 비밀번호 재설정 페이지로 이동합니다.');");
		pageContext.forward("find_pw2.jsp");
	}
	
	out.print("</script>");
	%>
	
	