<%@page import="vo.review"%>
<%@page import="java.util.List"%>
<%@page import="vo.movie_info"%>
<%@page import="vo.movie"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="dao.MovieDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	int idx = Integer.parseInt(request.getParameter("idx"));	//movie_id 의값
	int pageNo = Integer.parseInt(request.getParameter("page"));
	request.setAttribute("page", pageNo);
	
	Map<String, Integer> map = new HashMap<>();
	MovieDao dao = MovieDao.getInstance();
	movie vo = dao.getMovie(idx);
	movie_info vo2 = dao.getMovieInfo(idx);
	List<review> list = dao.getReview(idx);
	request.setAttribute("movie", vo);
	request.setAttribute("movie2", vo2);
	request.setAttribute("idx", idx);
	request.setAttribute("rlist", list);
	
	
	
	pageContext.forward("detailView.jsp");
%>
