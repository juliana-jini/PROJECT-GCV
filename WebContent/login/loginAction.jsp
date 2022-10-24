<%@page import="vo.CustomVo" %>
<%@page import="java.util.HashMap" %>
<%@page import="java.util.Map" %>
<%@page import="dao.CustomDao" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String user_id = request.getParameter("user_id"); //로그인창에서 입력받은 아이디
	String password = request.getParameter("password"); //입력받은 비밀번호
	Map<String, Object> map = new HashMap<>();
	
	map.put("custom_id",user_id); //로그인창에서 입력받은 user_id를 custom_id 에 저장합니다
	map.put("password",password); // 마찬가지로 입력받은 password(두번째인자)를 password(첫번째)에 저장합니다.
	
	//vo dao 객체 생성
	CustomDao dao = CustomDao.getInstance();
	CustomVo vo  = dao.login(map);
	String cid = dao.check_id(user_id);
	
	out.print("<script>");
	
	if(vo!=null) {
	session.setAttribute("user",vo);
	session.setAttribute("user_id", user_id);
	out.print("alert('로그인 되었습니다.');");
	
	out.print("location.href='../main/mainpage.jsp';"); //세션에 저장한 값 들고 메인페이지로 이동
	}
	else if(cid==null || cid.length()==0){
		out.print("alert('존재하지 않는 ID입니다.');");
		out.print("location.href='loginForm.jsp';");
	
	}
	else{
		out.print("alert('비밀번호가 다릅니다.');");
		out.print("location.href='loginForm.jsp';");
	}
	
		
		
	
	
	
	
	


	/* else{
		out.print("alert('ID 혹은 비밀번호를 확인해주세요!')");
	} */
	out.print("</script>");
	%>
		