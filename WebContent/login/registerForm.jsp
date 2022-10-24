<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="icon" href="../img/favicon.png">
<script type="text/javascript" src="../css/reg_valid.js"></script>
<link rel="stylesheet" href="../css/mainpage.css" />
<link rel="stylesheet" href="../css/registerForm.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
</head>
   <style>
    @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap");
  </style>
	
	
<body>
<%@ include file="../header.jsp" %>
 <div style="width:70% ;margin: auto;max-width: 600px;">
	<form method="post" action="registerAction.jsp" class="registform" name= "ch">
	<br><br><br><br><br><br><br>
	<h2>회원가입</h2> 	
	
	    <div class="textForm">
		<input name="cname"  type="text" placeholder="이름" class="name">
		</div>
		<div class="textForm">
		<input name="cid" type="text" placeholder="Id" class="id">
		</div>
		<input name="checkid" type="button" value="ID검색" onclick="check2();" class="btn">
		<div class="textForm">
		<input name="cpassword" type="password" placeholder="비밀번호" class="pw">
		</div>
		<div class="textForm">
		<input name="cpassword2" type="password" placeholder="비밀번호 다시입력." class="pw">
		</div>
		<div class="textForm">
		<input name="cbirth" type="text" placeholder="생년월일 숫자6자리" class="birth">
		</div>
		<div class="textForm">
		<input name="cphone" type="text" placeholder="010-1111-1111" class="tel">
		</div>
		<div class="textForm">
		<input name="cemail" type="text" value="${mail }" readonly class="email" > 
		</div>
		<input type="submit" value="가입하기" onclick="return check();" class="btn">
	</form>
	</div>
	<script>
	var openWin;
	function check2(){
		window.name= "join_form";
		openWin=window.open("check_id.jsp","check_form","width=570,height=350,resizable=no,scrollbars=no");
		
	}
	</script>
	 

</body>
	<%@ include file="../main_footer.jsp" %>
  <script src="../css/mainpage.js"></script>
</html>