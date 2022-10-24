<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스토어</title>
<link rel="icon" href="../img/favicon.png">
<link rel="stylesheet" href="../css/store.css"/>
<link rel="stylesheet" href="../css/mainpage.css"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<style>
    @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap");
</style>
<body>
<%@ include file="../header.jsp" %>

<div class="banner" align="center"><a href=""><img alt="배너이미지" src="../image/main.jpg"></a></div>
	<div class="menubar_wrap">
		<div class="menubar">
			<ul class="category">
				<li><a href="#" onclick="location.href='listAction1.jsp'" style="color: #e71616;">전체</a></li>
				<li><a href="#" onclick="location.href='listAction2.jsp'">콤보</a></li>
				<li><a href="#" onclick="location.href='listAction3.jsp'">팝콘</a></li>
				<li><a href="#" onclick="location.href='listAction4.jsp'">음료</a></li>
				<li><a href="#" onclick="location.href='listAction5.jsp'">스낵</a></li>
			</ul>
			<ul class="cart">
				<c:if test="${user != null }"><li><a href="#" onclick="location.href='cartAction.jsp'">장바구니</a></li></c:if>
			</ul>
		</div>
	</div>

	<div style="width: 1050px; margin: auto; overflow:hidden; margin-top: 50px;">
		<c:forEach var="vo" items="${list}">
		<div class="ex" align="center">
			<div>
			<a href="detailAction.jsp?pcode=${vo.pcode}"><img src="${vo.filename}" alt="${vo.pcode}">
			</a>
			</div>
			<p class="desc">${vo.pname}</p>
			<p style="font-size: 10pt;">${vo.composition}</p>
			<p class="desc"><fmt:formatNumber value="${vo.price}" pattern="#,###"/>원</p> <!--  value란에 변환할 숫자를 입력, pattern은 자릿수 -->
		</div>
		</c:forEach>
	</div>

	
<!--<div style="width: 100%; margin: auto;">
		<table>
			<tr align="center">
			<c:forEach var="vo" items="${list}" varStatus="loop">
			<c:if test="${loop.index%3==0}">
			<tr></tr>
			</c:if>
				<td onclick="location.href='detailAction.jsp?pcode=${vo.pcode}'"><a><img alt="상품이미지" src="${vo.filename}"></a></td>
				<td><div class="desc" style="font-size: 12pt; font-weight: bold;">${vo.pname}</div><br>
					<div class="desc" style="font-size: 10pt;">${vo.detail}</div><br>
					<div class="desc" style="font-size: 12pt; font-weight: bold;"><fmt:formatNumber value="${vo.price}" pattern="#,###"/>원 </div></td>
			</c:forEach>
			</tr>
		</table>
	</div>-->
	

<script src="../css/mainpage.js"></script>
<%@ include file="../footer.jsp" %>
</body>
</html>