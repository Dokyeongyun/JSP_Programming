<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
<form method="post" action = "42_checkPwForReadPro.jsp">
	<table border="1" style="border-collapse:collapse;">
		<tr height = "50">
			<td width="200">비밀번호 입력</td>
			<td width = "300">
				<input type = "password" name = "pw" size = "20">
			</td>
		</tr>
	</table>
	<input type = "submit" value = "확인">
	<input type = "hidden" name = "num" value = "${num}">
</form>
</body>
</html>