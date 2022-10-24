<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.ad_img {
	height: 180px;
	background-color: #D3461A;
}

.ad_img img {
	position: relative;
	bottom: 33.5%;
	width: 980px;
	height: 240px;
}
</style>
<footer style="height: 380px;">
	<div class="ad_img" align="center">
		<a href="https://jammy.lge.co.kr/" target="_blank">
		<img src="../image/bottomBanner.png" alt="광고배너"></a>
	</div>
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
