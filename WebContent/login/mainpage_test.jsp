<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 로그아웃 테스트</title>
<link rel="stylesheet" href="../css/mainpage.css" />
</head>
<style>
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap");
</style>
<body>
  <!-- 헤더 부분 -->
   <header class="header_contents">
      <div>
        <!-- 내용물 컨텐츠 -->
        <div class="contents">
          <a href="../main/mainpage_test.jsp" id="logo_img"><img src="./WebContent-img/gcv_logo.png" alt="logo" id="logo" /> <span>M O V I E S I T E</span></a>
          <ul class="member_info">
            <!-- a태그 링크는 각 페이지로 가게 링크걸어줘야함 -->
            <c:if test="${user == null }">
            <a href="#" class="card_event"><img src="./WebContent-img/card_event.png" alt="hyundai_card" /></a>
            <a href="${pageContext.request.contextPath}/main/loginForm.jsp" class="member_info_image"><img src="./WebContent-img/login.png" alt="login" /><span id="login_span">로그인</span></a>
            <a href="${pageContext.request.contextPath}/main/Mail_verify.jsp" class="member_info_image"><img src="./WebContent-img/register.png" alt="sign_in" /><span id="sign_span">회원가입</span></a>
            <a href="#" class="member_info_image"><img src="./WebContent-img/member_info.png" alt="my_page" /><span id="my_span">MY GCV</span></a>
            <a href="#" class="member_info_image"><img src="./WebContent-img/help.png" alt="customer_center" /><span id="custom_span">고객센터</span></a>
            </c:if>
            
            <c:if test="${user!=null }">
            <a href="#" class="card_event"><img src="./WebContent-img/card_event.png" alt="hyundai_card" /></a>
            <a href="${pageContext.request.contextPath}/main/logout.jsp" class="member_info_image"><img src="./WebContent-img/login.png" alt="logout" /><span id="login_span">로그아웃</span></a>
            <a href="#" class="member_info_image"><img src="./WebContent-img/member_info.png" alt="my_page" /><span id="my_span">MY GCV</span></a>
            <a href="#" class="member_info_image"><img src="./WebContent-img/help.png" alt="customer_center" /><span id="custom_span">고객센터</span></a>
            </c:if>
          </ul>
        </div>
      </div>
      <!-- 메뉴바 -->
      <div class="menubar_container">
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
            <th><a href="#">영화</a></th>
            <th><a href="#">극장</a></th>
            <th><a href="#">예매</a></th>
            <th><a href="#">스토어</a></th>
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
           <form action="searchAction.jsp" method="post">	<!-- 영화 제목 입력받아서 검색 -->
        <div class="search_form">
          <label for="search">          
            <input type="text" id="visible_keyword" name="find" placeholder="영화 제목을 입력하세요" />
            <!-- <input type="hidden" id="invisible_keyword" name="invisible_keyword"> -->
          </label>
          <button type="button" class="search_button"><img src="./WebContent-img/search.png" alt="검색" /></button>
        </div>
        </form>
      </div>
    </header>
  <!-- 헤더 끄읕 -->
   <div class="fixedBtn_wrap topBtn">
      <!-- 고정으로나오는 버튼 -->
      <!-- 예매 페이지 나올때 링크 걸기-->
      <a href="#" class="btn_fixedTicketing">예매하기</a>
      <a href="#" id="btn_gotoTop"><img src="https://img.cgv.co.kr/R2014/images/common/btn/gotoTop.png" alt="최상단으로 이동" /></a>
    </div>
    
</body>
<footer>
    <ul class="footer_ul">
      <li><a>회사소개</a></li>
      <li><a>채용정보</a></li>
      <li><a>광조/제휴/출점문의</a></li>
      <li><a>이용약관</a></li>
      <li><a>편성기준</a></li>
      <li>
        <a style="color: #e71616"><strong>개인정보처리방침</strong></a>
      </li>
      <li><a>법적고지</a></li>
      <li><a>이메일주소무단수집거부</a></li>
      <li><a>윤리경영</a></li>
      <li><a>사이버감사실</a></li>
    </ul>
    <article class="gcv_info">
      <section class="gcv_info_wrap">
        <p>(06236)서울 강남구 테헤란로 146</p>
        <p>대표이사 : 이순신 -- 사업자등록번호 : 350-22-01041 -- 통신판매업신고번호 : 2022-서울역삼-0123</p>
        <p>호스팅사업자 : JC올리버네트워크 -- 개인정보보호 책임자 : 김으뜸 -- 대표이메일 : jcgcvmaster@jc.net</p>
        <p>© JC GCV. All Rights Reserved</p>
      </section>
      <section class="familysite_wrap">
        <label for="familysite"></label>
        <select id="familysite">
          <option value="" class="familysiteTitle">계열사 바로가기</option>
          <optgroup label="CJ그룹">
            <option value="http://www.cj.net/">CJ주식회사</option>
          </optgroup>
          <optgroup label="식품 &amp; 식품서비스">
            <option value="https://www.cj.co.kr/kr/index">CJ제일제당</option>
            <option value="https://www.cjfoodville.co.kr/main.asp">CJ푸드빌</option>
            <option value="http://www.cjfreshway.com/index.jsp">CJ프레시웨이</option>
          </optgroup>
          <optgroup label="생명공학">
            <option value="https://www.cj.co.kr/kr/about/business/bio">CJ제일제당 BIO사업부문</option>
            <option value="https://www.cj.co.kr/kr/about/business/bio">CJ Feed&amp;Card</option>
          </optgroup>
          <optgroup label="물류 &amp; 신유통">
            <option value="https://www.cjlogistics.com/ko/main">CJ대한통운</option>
            <option value="http://www.cjenc.co.kr/kr/Default.asp">CJ대한통운 건설부문</option>
            <option value="https://www.oliveyoung.co.kr/store/company/brandStory.do">CJ올리브영</option>
            <option value="https://www.cjolivenetworks.co.kr:449/">CJ올리브네트웍스</option>
            <option value="https://www.cjoshopping.com:9002/index.asp">CJ ENM 커머스부문</option>
          </optgroup>
          <optgroup label="엔터테인먼트 &amp; 미디어">
            <option value="http://www.cjem.net/main/?locale=ko">CJ ENM 엔터테인먼트부문</option>
            <option value="http://corp.cgv.co.kr/">CJ CGV</option>
          </optgroup>
        </select>
        <a href="#none" class="btn_familysite" onclick="goFamilySite()">GO</a>
      </section>
    </article>
  </footer>
  <script src="./mainpage.js"></script>
</html>