<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
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
		<td align="center" colspan="3"> ${bean.title}</td>
	</tr>
	<tr height="80">
		<td align="center" width="120"> 글 내용 </td>
		<td align="center" colspan="3"> ${bean.content}</td>
	</tr>
	<tr height="40">
		<td align="center" colspan="4">
			<input type="button" value="답글쓰기" onclick="location.href='writeAnswer.do?num=${bean.num}'">
			<input type="button" value="수정하기" onclick="location.href='update.do?num=${bean.num}'" >
			<input type="button" value="삭제하기" onclick="location.href='delete.do?num=${bean.num}'" >
			<input type="button" value="목록보기" onclick="location.href='customerCenter.do'" >
		</td>
	</tr>
</table>
</body>
</html>