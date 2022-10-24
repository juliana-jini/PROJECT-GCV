<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A 게시판</title>
<link rel="icon" href="../img/favicon.png">
<link rel="stylesheet" href="../css/boardInsert.css"/>
<link rel="stylesheet" href="../css/mainpage.css"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<style>
    @import url("https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap");
</style>
<body>
<%@ include file="../header.jsp" %>
<form name="frm1" method="post" action="insertAction.jsp">
<div style="font-size: 10pt; margin: 10px; margin-left: 35%;">[문의하기]</div>
 <table>
 	<tr>
 		<th style="height: 50px; border-top: solid 3px lightgray;">제목</th>
 		<td><input style="width: 100%;" type="text" name="subject" size="50" required></td>
 	</tr>
 	<tr>
		<th>작성자</th>
 		<td><input style="width: 100%;" type="text" name="custom_id" size="50" value ="${user_id }" required readonly></td>
 		
 	</tr>
 	<tr>
 		<th>비밀번호</th>
 		<td><input style="width: 100%;" type="password" name="password" required></td>
 	</tr>
 	<tr>
 		<th style="border-bottom: solid 3px lightgray;">내용</th>
 		<td colspan="3"><textarea style="width: 100%; height: 350px; resize: none;" rows="20" name="content" required></textarea></td>
 	</tr>
 </table>
 	<div style="margin-top: 20px;" align="center">
 	<button class="btn" type="submit">저장</button>&nbsp;
 	<button class="btn" type="reset">다시쓰기</button>&nbsp;
 	<button class="btn" type="button" onclick="location.href='listAction.jsp?page=${param.page}'">목록</button>
 	<!-- <input type="submit" value="저장" class="btn" >&nbsp;
 	<input type="reset"  value="다시쓰기" class="btn">&nbsp;
 	<input type="button" value="목록" onclick="location.href='listAction.jsp?page=${param.page}'" class="btn"> -->
 	</div>
 </form>
 <script src="../css/mainpage.js"></script>
 <%@ include file="../footer.jsp" %>
</body>
</html>