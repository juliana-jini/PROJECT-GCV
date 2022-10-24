<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
<link rel="stylesheet" href="../css/cart.css"/>
<link rel="stylesheet" href="../css/mainpage.css"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
</head>
<style>
    @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap");
</style>
<body>
<%@ include file="../header.jsp" %>

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
				<li><a href="#" onclick="location.href='cartAction.jsp'">장바구니</a></li>
			</ul>
		</div>
</div>
<%List<Integer> list = (List<Integer>)request.getAttribute("list2");
int i = 0;
for(Integer v:list) {
	i = v + i;	
}%>
<form action="insertAction.jsp" name="form" method="get">
<table id="cartList">
	<tr>
		<th>상품명</th>
		<th>판매금액</th>
		<th>수량</th>
		<th>구매금액</th>
		<th></th>
	</tr>
<input type="hidden" name="amount" value="<%= i %>">
<% int k = 0; %>
<c:forEach var="list" items="${list}">
<%
	k = k+1;
%>
	<tr>
		<td><a href="detailAction.jsp?pcode=${list.pcode}"><img src="${list.filename}" alt="${list.pcode}"></a>
	    <div class="pname"><strong class="strong">${list.pname}</strong><br>
	    ${list.composition}</div></td>
		<td><strong class="strong"><fmt:formatNumber value="${list.price}" pattern="#,###"/>원</strong></td>
		<td><strong class="strong">${list.amount}</strong></td>
		<td><strong class="strong"><fmt:formatNumber value="${list.price*list.amount}" pattern="#,###"/>원</strong></td>
		<!-- <td><button class="btn_delete2" onclick="" value="${list.cart_id}">삭제</button></td> -->
	</tr>

	<input type="hidden" name="pname" value="${list.pname}" readonly/>
	<input type="hidden" name="<%= k %>" value="${list.pcode}"/>
	<input type="hidden" name="<%= k %>a" value="${list.amount}"/>
	<input type="hidden" name="<%= k %>b" value="${list.pname}"/>

</c:forEach>
</table>
<div class="btn_wrap">
<button class="btn" id="btn" onclick="requestPay();" type="button">결제</button>&nbsp;
<button class="btn" id="buy" style="display: none;">구매</button>
</div>
</form>

<!-- 삭제버튼 -->
<button class="btn_delete" onclick="location.href='cartDeleteAction.jsp'">장바구니 삭제</button>

<script type="text/javascript">
function requestPay() {
          document.getElementById('btn').style.display='block';
           IMP.init('imp46547018');
           IMP.request_pay({ 
               pg: 'kakaopay.TC0ONETIME',
               pay_method: 'card', 
               merchant_uid: 'id' + new Date().getTime(),
               name: 'pname',	//상품이름
               amount: <%= i %>,
               buyer_name: '하하'		//구매자 이름(id)
           }, function (rsp) {
               if (rsp.success) {
            	  document.getElementById('btn').style.display='none';
                  document.getElementById('buy').style.display='block';
               } else {
                  alert('실패');
               }
           });
         }
</script>
<script src="../css/mainpage.js"></script>
<%@ include file="../footer.jsp" %>
</body>
</html>