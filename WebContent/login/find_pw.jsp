<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>회원 로그인</title>
    <link rel="icon" href="../img/favicon.png">
    <link rel="stylesheet" href="../css/mainpage.css" />
    <link rel="stylesheet" href="../css/find_idpw.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
  </head>
   <style>
    @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap");
     a:hover {
    	color: #00BFFF;
  </style>
  
<body>
<%@ include file="../header.jsp" %>
    <!-- 헤더-->
 <div style="width:70% ;margin: auto;max-width: 600px;">
<form action="find_pwAction.jsp" method="post" name="find" class=findform>

	<h2>비밀번호 찾기</h2>
		<div class="textForm">
		<input name="custom_id" placeholder="id" class="id"><br>
		</div>
		<div class="textForm">
		<input name="custom_birth" placeholder="생년월일 6자리 숫자" type="text" class="birth"> <br>
		</div>
		<button onclick="return find_pw();" class="btn">비밀번호 찾기</button> <br>
		<a href="loginForm.jsp">로그인</a> · <a href="find_id.jsp">id 찾기</a>

		
</form>
</div>



</body>
<%@include file="../footer.jsp" %>
<script>
function find_pw(){
	var id_type= /^[a-z]+[a-z0-9]{5,19}$/g; //영문자로 시작하는 영문 또는 숫자 6~20자
	var birth_type = /^\d{6}$/; //생년월일  yyyyMMdd, 19 또는 20로 year 앞 2자 표현
	var empty = /\s/g; //공백
	
	if(document.find.custom_id.value=="" || document.find.custom_id.value.match(empty) ){
		alert('아이디를 입력해 주세요.');
		document.find.custom_id.focus();
		return false;
	}
	
	else if(!document.find.custom_id.value.match(id_type) || document.find.custom_id.value.match(empty) ){
		alert('아이디는 영문자로 시작하는 영문 또는 숫자 6~20자로 입력해 주세요. ');
		document.find.custom_id.focus();
		return false;
	}
	else if(document.find.custom_birth.value==""){
		alert('생년월일을 입력해 주세요.')
		document.find.custom_birth.focus();
		return false;
	}
	
	else if(!document.find.custom_birth.value.match(birth_type)){
		alert('생년월일은 올바르게 입력해 주세요.');
		document.find.custom_birth.focus();
		return false;
	}
	
}
</script>
  <script src="../css/mainpage.js"></script>
</html>