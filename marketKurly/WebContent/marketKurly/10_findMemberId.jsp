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
	<form method="post" action = "11_findMemberIdPro.jsp" accept-charset="UTF-8">
	<table>
		<tr height="70">
			<td width="300" align="center">
				<h2>아이디 찾기</h2>
			</td>
		</tr>
		<tr height="10">
			<td width="300">
				<font size="1"><b>이름</b></font>
			</td>
		</tr>
		<tr height = "50">
			<td width = "300" align="center">
				<input type="text" name = "name" style="width:300px; height:30px" value="고객님의 이름을 입력해주세요">
			</td>
		</tr>
		<tr height="10">
			<td width="300">
				<font size="1"><b>이메일</b></font>
			</td>
		</tr>
		<tr height = "50">
			<td width = "300" align="center">
				<input type="email" name = "email" style="width:300px; height:30px" value="가입 시 등록하신 이메일 주소를 입력해주세요">
			</td>
		</tr>
		<tr height="10">
			<td width="300">
				<font size="1"><b>    </b></font>
			</td>
		</tr>
		<tr height = "50">
			<td width="300">
				<input type="image" src = "img/check.PNG" name="submit" value="submit" style="width:310px;" >
			</td>
		</tr>
	</table>
</form>
</body>
</html>