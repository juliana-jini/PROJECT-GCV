<%@page import="vo.movie"%>
<%@page import="java.util.List"%>
<%@page import="dao.MovieDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 	
	request.setCharacterEncoding("UTF-8");
	int pageNo =1;
	request.setAttribute("page", pageNo);
	
	String find = request.getParameter("find");
	
	if(find !=null && find.length() != 0){
		MovieDao dao = MovieDao.getInstance();
		List<movie> list = dao.search(find);
		request.setAttribute("list", list);
		pageContext.forward("searchList.jsp");
		
	}
	else {
		out.print("<script>");
		out.print("alert('검색어를 입력해주세요.');");
		out.print("history.back();");
		out.print("</script>");
	}
%>