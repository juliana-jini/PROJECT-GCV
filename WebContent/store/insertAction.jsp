<%@page import="java.util.List"%>
<%@page import="store.Buy"%>
<%@page import="store.Store"%>
<%@page import="store.BuyDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BuyDao dao = BuyDao.getInstance();
	String pcode = request.getParameter("pname");
	String id = (String)session.getAttribute("user_id");
	List<Store> list = dao.selectCart(id);
	int k = 0;
	
	Buy vo = new Buy();
	vo.setBuy_id(0);
	vo.setCustom_id(id);
	
	for(int i=1; i<=list.size(); i++) {
		vo.setPcode(request.getParameter(Integer.toString(i)));
		vo.setAmount(Integer.parseInt(request.getParameter(Integer.toString(i)+"a")));
		vo.setPname(request.getParameter(Integer.toString(i)+"b"));
		k = k + dao.insert(vo);
	}
	dao.deleteCart(id);
	
	out.print("<script>");
	out.print("alert('상품 "+ k +"개 구매성공했습니다');");
	out.print("location.href='cartAction.jsp'");
	out.print("</script>");
%>