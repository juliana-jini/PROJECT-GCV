<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="vo.CustomVo" %>
<%@page import="java.util.HashMap" %>
<%@page import="dao.CustomDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("custom_name");
	String phone =  request.getParameter("custom_phone");
	Map<String, String> fid = new HashMap<>();
	
	fid.put("custom_name", name);
	fid.put("custom_phone", phone);
	CustomDao dao = CustomDao.getInstance();
	List<String> id = dao.find_id(fid);
	
	out.print("<script>");
	
	if(id.isEmpty()) { /* 일치하는 정보가 없을 떄 */
		
		out.print("alert('일치하는 정보가 없습니다. 다시 확인해 주세요!');");
		out.print("location.href=history.back()");
	}
	else {
		session.setAttribute("find_id",id);
		out.print("alert('ID가 조회되었습니다 안내페이지로 이동합니다.');");
		pageContext.forward("find_id2.jsp");
	}
	out.print("</script>");
	
	%>
	
	