<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
<form method = "post" action = "updatePro.do" accept-charset="UTF-8">
	<table border = "1" style="border-collapse:collapse;">
		<tr height="40">
			<td align="center" width="120"> 글번호 </td>
			<td align="center" width="180"> ${bean.num}</td>
			<td align="center" width="120"> 조회수 </td>
			<td align="center" width="180"> ${bean.readcount}</td>
		</tr>
		<tr height="40">
			<td align="center" width="120"> 작성자 </td>
			<td align="center" width="180"> ${bean.writer}</td>
			<td align="center" width="120"> 작성일 </td>
			<td align="center" width="180"> ${bean.reg_date}</td>
		</tr>
		<tr height="40">
			<td align="center" width="120"> 제목 </td>
			<td align="center" colspan="3">
				<input type = "text" value="${bean.title}" size = "30">
			</td>
		</tr>
		<tr height="80">
			<td align="center" width="120"> 글 내용 </td>
			<td align="center" colspan="3">
			<textarea name="content" cols="50" rows="10">
				${bean.content}
			</textarea>
			</td>
		</tr>
	</table>
	<br>
	<input type = "submit" value = "수정하기">&nbsp;
	<input type = "reset" value = "다시작성">
	<input type = "hidden" name = "num" value = ${num}>
</form>
</body>
</html>