<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>id찾기</title>
    <link rel="icon" href="../img/favicon.png">
    <link rel="stylesheet" href="../css/mainpage.css" />
    <link rel="stylesheet" href="../css/find_idpw.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
  </head>
   <style>
    @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap");
    a:hover {
    	color: #00BFFF;
    }
  </style>
  	
<body>
<%@ include file="../header.jsp" %>
    <!-- 헤더-->
 <div style="width:70% ;margin: auto;max-width: 600px;">
<form action="find_idAction.jsp" method="post" name="find" class=findform>
<br><br><br>
	<h2>ID찾기</h2>
		<div class="textForm">
		<input name="custom_name" placeholder="이름" class="name"><br>
		</div>
		<div class="textForm">
		<input name="custom_phone" placeholder="전화번호 010-xxxx-xxxx" type="text" class="phone"> <br>
		</div>
		<button name="find" class="btn" onclick="return find_id()" >id 찾기</button> <br>
		<a href="loginForm.jsp">로그인</a> · <a href="find_pw.jsp">비밀번호 찾기</a>

		
</form>
</div>



</body>
<%@include file="../footer.jsp" %>
<script>
function find_id(){
	var name_type= /^[가-힣]{2,4}$/; //한글이름
	var tel_type = /^\d{2,3}-\d{3,4}-\d{4}$/; //연락처
	var empty = /\s/g; //공백
	
	 if(!document.find.custom_name.value.match(name_type) || document.find.custom_name.value.match(empty) ){
			alert('이름을 올바르게 입력해 주세요. ');
			document.find.custom_name.focus();
			return false;
		}
	
	 else if(document.find.custom_phone.value==""){
			alert('연락처를 입력해 주세요.')
			document.find.custom_phone.focus();
			return false;
		}
		
		else if(!document.find.custom_phone.value.match(tel_type)){
			alert('전화번호 형식은 xxx-xxxx-xxxx 입니다.')
			document.find.custom_phone.focus();
			return false;
		}
}

var openWin;
function find_id2(){
	window.name= "find_form";
	openWin=window.open("find_id2.jsp","check_form","width=570,height=350,resizable=no,scrollbars=no");
	
}
</script>
<script src="../css/mainpage.js"></script>

</html>