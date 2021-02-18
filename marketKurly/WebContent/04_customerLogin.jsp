<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
request.setCharacterEncoding("UTF-8");
%>
<form method="post" action = "loginPro.do">
	<table>
		<tr height="70">
			<td width="300" align="center">
				<h2>로그인</h2>
			</td>
		</tr>
		<tr height = "50">
			<td width = "300" align="center">
				<input type="text" name = "id" placeholder="아이디를 입력하세요"  style="width:300px; height:30px">
			</td>
		</tr>
		
		<tr height = "50">
			<td width = "300" align="center">
				<input type="text" name = "pw" placeholder="패스워드를 입력하세요" style="width:300px; height:30px">
			</td>
		</tr>
		<tr height = "50">
			<td width = "300" align="right">
				<font size="2" color="gray"><a href="findMemberId.do" style="text-decoration: none">아이디찾기</a></font>
				<img alt="" src="img/top1.jpg"> 
				<font size="2" color="gray"><a href="findMemberPw.do" style="text-decoration: none">비밀번호찾기</a></font>
			</td>
		</tr>
		
		<tr height = "50">
			<td width="300">
				<input type="image" src = "img/login.PNG" name="submit" value="submit" style="width:320px;" >
			</td>
		</tr>
		<tr height = "50">
			<td width="300">
				<input type="image" src = "img/join.PNG" onclick="location.href='join.do'" style="width:320px;" >
			</td>
		</tr>
	</table>
</form>


</body>
</html>