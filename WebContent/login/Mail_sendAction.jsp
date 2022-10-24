<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
	String mail=request.getParameter("mail");
	request.setAttribute("mail", mail);
	
	if(request.getParameter("mail2").equals(request.getParameter("answer"))){
		pageContext.forward("registerForm.jsp");
	} else{
		out.print("<script>");
		out.print("alert('잘못된 인증번호 입니다.');");
		out.print("location.href=history.back();");
		
		out.print("</script>");
		
	}
	
%>  