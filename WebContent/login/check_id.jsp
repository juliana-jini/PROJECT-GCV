<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중복검사</title>
<script type="text/javascript" src="../css/check_valid.js"></script>
</head>
<body>
<form method="post" action="checkidAction.jsp" name=ch2>
<p>사용하실 ID를 입력해주세요</p>
<input name="id2" type="text" placeholder="ID입력"> 
<input name="check_id" type="submit" value="중복확인" onclick="return checkid();">
<input name="close" type="button" value="닫기" onclick="return window.close();">

</form>

</body>

</html>