<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>스토어</title>
<link rel="icon" href="../img/favicon.png">
<link rel="stylesheet" href="../css/storeDetail.css"/>
<link rel="stylesheet" href="../css/mainpage.css"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
</head>
<style>
    @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap");
</style>
<body onload="init();">
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
				<c:if test="${user != null }"><li><a href="#" onclick="location.href='cartAction.jsp'">장바구니</a></li></c:if>
			</ul>
		</div>
</div>
<main>
	<div class="pname"> ${vo.pname }</div>
		<div class="detail_pd">
				<img class="detail_img" src="${vo.filename }" alt="${vo.pcode }">
				<div class="pd_info">
				<div class="price"><fmt:formatNumber value="${vo.price}" pattern="#,###"/>원</div>
				<div class="desc">상품구성 |&nbsp;&nbsp;&nbsp;&nbsp;${vo.composition}</div>
				<div class="desc">유효기간 |&nbsp;&nbsp;&nbsp;&nbsp;구매일로부터 6개월 이내</div>
				<div class="desc">상품교환 |&nbsp;&nbsp;&nbsp;&nbsp;사용 가능 CGV 보기</div>
				
				<input type="hidden" name="sell_price" value="${vo.price}">
			<!--<input type='button' onclick='count("plus")' value='+'/>
				<div id='result'>0</div>
				<input type='button' onclick='count("minus")' value='-'/><br>
				
				<script type="text/javascript"> 
				function count(type)  {
				  // 결과를 표시할 element
				  const resultElement = document.getElementById('result');
				  
				  // 현재 화면에 표시된 값
				  let number = resultElement.innerText;
				  
				  // 더하기/빼기
				  if(type === 'plus' && number < 5) {
				    number = parseInt(number) + 1;
				  }else if(type === 'minus' && number > 0)  {
				    number = parseInt(number) - 1;
				  }
				  
				  // 결과 출력
				  resultElement.innerText = number;
				}
				</script>-->
				
				<script type="text/javascript">
				
				// 변경된 값을 저장
				var sell_price;
				var amount;

				// init 초기값을 지정할 수 있다.
				function init () {
				  sell_price = document.form.sell_price.value;
				  amount = document.form.amount.value;
				  document.form.sum.value = sell_price;
				  change();
				}

				// add
				// howmany 값을 1 증가 시키고, 합계를 계산.
				function add () {
				    hm = document.form.amount;
				    sum = document.form.sum;
				  	hm.value ++ ;
				    sum.value = parseInt(hm.value) * sell_price;
				
				}

				// del
				// howmany 값을 1 감소 시키고, 합계를 계산.
				function del () {
				hm = document.form.amount;
				sum = document.form.sum;

				// 에러 처리 : 음수 값
				if (hm.value > 1) {
				  hm.value -- ;
				  sum.value = parseInt(hm.value) * sell_price;
				}
				
				}

				function change () {
				hm = document.form.amount;
				sum = document.form.sum;
				
				if(hm.value < 0) {
				  hm.value = 0;
				}
				
				sum.value = parseInt(hm.value) * sell_price;
				
				} 
				</script>
				
				<form action="cartinsertAction.jsp" name="form" method="get" style="margin-top: 15px; border-top: 2px solid lightgray;">
				<input type="hidden" name="sell_price" value="${vo.price}">
				<input class="btn_mn" type="button" value=" - " onclick="del();">
				<input class="textbox1" type="text" id="amt" name="amount" value="1" size="3" onchange="change();">
				<input class="btn_pl" type="button" value=" + " onclick="add();"><br>
				<input class="textbox2" type="text" name="sum" size="13" readonly>
				<input type="hidden" name="pcode" value="${vo.pcode}">
				<input type="hidden" name="pname" value="${vo.pname}">
				<input type="hidden" name="composition" value="${vo.composition}">
				<input type="hidden" name="filename" value="${vo.filename}">
				
				<!-- 
				<input type="hidden" name="pname" value="${vo.pname}">
				<input type="hidden" name="composition" value="${vo.composition}">
				<input type="hidden" name="filename" value="${vo.filename}">
				-->
						
		<c:if test="${user != null }"><button class="btn">장바구니 담기</button></c:if>
		</div>
		<!-- <button class="btn" id="btn" onclick="requestPay();" type="button">결제</button>
		<button class="btn" id="buy" style="display: none;">구매하기</button></form> -->
		</div>
		
		<div class="desc_detail">${vo.detail}</div>
		
		<p class="information">이용안내</p>
		<p>• 해당 기프트콘은 오프라인 매점에서 실제 상품으로 교환할 수 있는 온라인 상품권입니다. <br>
		• 구매 후 전송받으신 기프트콘은,<br>
		사용가능한 CGV의 매점에서 지정된 해당 상품으로만 교환이 가능합니다.<br>
		(사용가능 CGV는 '상품교환'에서 확인 가능합니다)<br>
		해당 상품 내에서 팝콘 혹은 음료, 스낵 변경 시 추가 비용이 발생합니다.<br>
		교환 완료한 상품의 환불 및 반품은 불가합니다.<br>
		• 유효기간 연장을 신청하는 경우,<br>
		유효기간은 발급일로부터 5년 이내 횟수 제한 없이 기간 연장 가능하며, 1회 연장 시 3개월(92일) 단위로 유효기간이 연장됩니다.  <br>
		단, 이벤트 경품 및 프로모션 상품의 경우 유효기간 연장이 불가할 수 있습니다.<br>
		유효기간 만료 이후에는 결제금액의 90% 환불이 가능합니다.  <br>
		• 매점상품 기프트콘은 극장 매점에서 상품 교환 후 수령한 영수증으로 CJ ONE 적립이 가능합니다.<br>
		(모바일App,웹 > MY > 매점적립 or 홈페이지> My CGV > 매점이용 포인트 적립)<br>
		• 상기 이미지는 실제와 다를 수 있습니다.<br> </p>
		<br>
		<p class="information">취소/환불</p>
		<p>• 구매자는 최초 유효기간 이내에 결제금액의 100%에 대해 결제취소/환불이 가능하며, 최초 유효기간 만료 후에는 수신자가 결제금액의 90%에 대해 환불 요청 가능합니다.<br>
		• 단, 이미 사용된 기프트콘에 대해서는 결제취소/환불 신청이 불가합니다. <br>
		• 결제취소/환불 방법<br>
		결제취소는 모바일App,웹 > MY > 결제내역조회 > 스토어 or 홈페이지 > My CGV > 스토어 > 결제내역의 해당 주문 상세내역에서 가능합니다.<br>
		(기프트콘은 구매일로부터 60일 이내 결제취소 가능하며, 카드 결제취소 가능 기간이 경과하였을 경우, 고객센터로 연락주시면 됩니다)<br>
		환불은 모바일App,웹 > MY > 기프트콘 or 홈페이지 > My CGV > 스토어 > 내 기프트콘에서 환불을 원하는 기프트콘 등록 후 진행 가능하며, 비회원의 경우 고객센터로 신청 가능합니다.<br>
		단 이 때, 본인 확인 및 계좌 확인 절차가 진행됩니다.<br>
		• 수신자는 선물받은 기프트콘의 수신거절을 요청할 수 있으며, 이 경우 구매자에게 취소 및 환불에 대한 안내가 이루어집니다. <br>
		• 결제취소 가능 기간이 경과한 후 수신자가 수신거절을 요청할 경우 구매자에게 기프트콘이 재발송됩니다.<br>
		• CGV고객센터 1544-1122<br> </p>
		<br>
		<p class="information">미성년자 권리보호 안내</p>
		<P>미성년자인 고객께서 계약을 체결하시는 경우 법정대리인이 그 계약에 동의하지 아니하면 미성년자 본인 또는 법정대리인이 그 계약을 취소할 수 있습니다.<br>
		분쟁 해결<br>
		1) 회사는 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해의 보상 등에 관한 처리를 위하여<br>
		  CGV고객센터(1544-1122)를 설치 운영하고 있습니다.<br>
		2) 회사는 고객센터를 통하여 이용자로부터 제출되는 불만사항 및 의견을 처리합니다.<br>
		  다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보합니다.<br>
		3) 전자상거래 분쟁(청약철회등)과 관련한 이용자의 피해구제는 이용약관 및 전자상거래법 등 관련 법령에 따릅니다.<br></P>		
</main>
<script src="../css/mainpage.js"></script>
<%@ include file="../footer.jsp" %>
<script type="text/javascript">
function requestPay() {
          document.getElementById('btn').style.display='block';
           IMP.init('imp46547018');
           IMP.request_pay({ 
               pg: 'kakaopay.TC0ONETIME',
               pay_method: 'card',
               merchant_uid: 'id' + new Date().getTime(),
               name: '${vo.pname}',	//상품이름
               amount: ${vo.price}*document.getElementById('amt').value,	//가격
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
</body>
</html>