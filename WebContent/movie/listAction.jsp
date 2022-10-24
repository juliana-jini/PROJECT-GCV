<%@page import="vo.movie"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="vo.PageVo"%>
<%@page import="dao.MovieDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	int pageNo;
	//페이지 번호를 파라미터로 받습니다.
	// 영화 페이지 작성위해 필요한코드
	if(request.getParameter("page")==null) pageNo=1;
	else pageNo = Integer.parseInt(request.getParameter("page"));
	int pageSize=10;
	
	// 영화 목록 불러오기위해 필요한 코드
	MovieDao dao = MovieDao.getInstance();
	PageVo pages= new PageVo(pageNo, dao.getCount(), pageSize);
	Map<String, Integer> map = new HashMap<>();
	
	map.put("startNo",pages.getStartNo());
	map.put("endNo",pages.getEndNo());
	List<movie> list = dao.getPageList(map);
	// 영화 목록 및 페이지 수 어트리뷰트 지정위해 필요한 코드
	request.setAttribute("list", list);
	request.setAttribute("page", pageNo);		//아래 pagelist로 대체할 수 있습니다.
	request.setAttribute("pagelist", pages);
      pageContext.forward("movieList.jsp");
      %>
      