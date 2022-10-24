<%@page import="vo.review"%>
<%@page import="dao.MovieDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 	
	//댓글 추가와 삭제하는 dao 메소드를 실행하는 Action 클래스
	//	ㄴ 댓글 삭제할때에는 del 파라미터를 전달합니다.
	request.setCharacterEncoding("UTF-8");
	MovieDao dao = MovieDao.getInstance();
	int grade = Integer.parseInt(request.getParameter("rating"));
	int mid = Integer.parseInt(request.getParameter("mid"));
	String r_info = request.getParameter("review_info");
	String id = (String)session.getAttribute("user_id");
	
	
	review vo = new review(0, id, mid, r_info, null, 0, grade);
	dao.insertReview(vo);
	response.sendRedirect("detailAction.jsp?idx="+mid+"&page="+request.getParameter("page"));
	%>