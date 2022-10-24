<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<header class="header_contents">
<div>
    <!-- 내용물 컨텐츠 -->
	<div class="contents">
	  <a href="../main/mainpage.jsp" id="logo_img"><img src="../img/GCV.png" alt="logo" id="logo" /> <span>M O V I E S I T E</span></a>
	  <ul class="member_info">
    <!-- a태그 링크는 각 페이지로 가게 링크걸어줘야함 -->
        <c:if test="${user == null }">
            <a href="${pageContext.request.contextPath}/login/loginForm.jsp" class="member_info_image"><img src="../img/loginPassword.png" alt="login" /><span id="login_span">로그인</span></a>
            <a href="${pageContext.request.contextPath}/login/Mail_verify.jsp" class="member_info_image"><img src="../img/loginJoin.png" alt="sign_in" /><span id="sign_span">회원가입</span></a>
            <a href="${pageContext.request.contextPath}/board/listAction.jsp" class="member_info_image"><img src="../img/loginCustomer.png" alt="customer_center" /><span id="custom_span">고객센터</span></a>
            </c:if>
            
            <c:if test="${user!=null }">
            <a href="${pageContext.request.contextPath}/login/logout.jsp" class="member_info_image"><img src="../img/loginPassword.png" alt="logout" /><span id="login_span">로그아웃</span></a>
            <a href="${pageContext.request.contextPath}/mypage/mypageAction.jsp" class="member_info_image"><img src="../img/loginMember.png" alt="my_page" /><span id="my_span">MY GCV</span></a>
            <a href="${pageContext.request.contextPath}/board/listAction.jsp" class="member_info_image"><img src="../img/loginCustomer.png" alt="customer_center" /><span id="custom_span">고객센터</span></a>
            </c:if>
    </ul>
  </div>
</div>
<!-- 메뉴바 -->
<div class="menubar_container" onmouseover="view(true)" onmouseout="view(false)">
  <ul class="main_menubar">
    <!-- 링크 걸어주기해야함 -->
  <li>
    <h3><a href="#" class="main_menubar2" onclick="openCloseToc()">영화</a></h3>
  </li>
  <li>
    <h3><a href="#" class="main_menubar2" onclick="openCloseToc()">극장</a></h3>
  </li>
  <li>
    <h3><a href="#" class="main_menubar2" onclick="openCloseToc()">예매</a></h3>
  </li>
  <li>
    <h3><a href="#" class="main_menubar2" onclick="openCloseToc()">스토어</a></h3>
  </li>
</ul>

<table class="hide_menu">
  <tr>
    <th><a href="${pageContext.request.contextPath}/movie/listAction.jsp">영화</a></th>
    <th><a href="${pageContext.request.contextPath}/theater/th-action1.jsp">극장</a></th>
    <th><a href="${pageContext.request.contextPath}/ticketing/ticketingAction.jsp">예매</a></th>
    <th><a href="${pageContext.request.contextPath}/store/listAction1.jsp">스토어</a></th>
  </tr>
  <tr>
    <td><a href="#">무비차트</a></td>
    <td><a href="#">GCV 극장</a></td>
    <td><a href="#">빠른예매</a></td>
    <td><a href="#">콤보</a></td>
  </tr>
  <tr>
    <td>아트하우스</td>
    <td>특별관</td>
    <td><a href="#">상영스케줄</a></td>
    <td><a href="#">팝콘</a></td>
  </tr>
  <tr>
    <td>ICECON</td>
    <td></td>
    <td></td>
    <td><a href="#">음료</a></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td><a href="#">스낵</a></td>
  </tr>
</table>

<!-- 데이터, 다른페이지들오면 JS사용해서 검색기능 구현 -->
<form action="../search/searchAction.jsp" method="post">	<!-- 영화 제목 입력받아서 검색 -->
        <div class="search_form">
          <label for="search">          
            <input type="text" id="visible_keyword" name="find" placeholder="영화 제목을 입력하세요" />
            <!-- <input type="hidden" id="invisible_keyword" name="invisible_keyword"> -->
          </label>
          <button class="search_button"><img src="../img/search.png" alt="검색" /></button>
        </div>
        </form>
  </div>
  <div class="fixedBtn_wrap topBtn">
      <!-- 고정으로나오는 버튼 -->
      <!-- 예매 페이지 나올때 링크 걸기-->
      <a href="#" class="btn_fixedTicketing">예매하기</a>
      <a href="#" id="btn_gotoTop"><img src="https://img.cgv.co.kr/R2014/images/common/btn/gotoTop.png" alt="최상단으로 이동" /></a>
    </div>
</header>
