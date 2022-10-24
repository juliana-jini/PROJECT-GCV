<%@page import="org.json.JSONObject"%>
<%@page import="main.Action"%>
<%@page import="vo.movie"%>
<%@page import="dao.MovieDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	Action action=Action.getInstance();
	
	JSONObject reqtoServer=new JSONObject();
	JSONObject res=action.get(reqtoServer.toString());
	for(int i=0; i<10;i++){
	JSONObject re = res.getJSONObject("boxOfficeResult").getJSONArray("dailyBoxOfficeList").getJSONObject(i);
	movie vo = new movie(0, re.getString("movieNm"),"22.0%", 9.8, re.getInt("audiCnt"), re.getInt("rank"), re.getString("openDt"));
	MovieDao dao = MovieDao.getInstance();
	dao.insert(vo);
	}
	
%>
<!-- "audiCnt": 관객수,"movieNm": 영화 제목"salesAmt","movieCd":영화코드,"rank":순위,"openDt":개봉일, "audiAcc": 누적 관객수 -->