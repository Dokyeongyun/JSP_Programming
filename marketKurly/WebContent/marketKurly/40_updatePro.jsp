<%@page import="marketKurly.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	%>
	<%
	int num = Integer.parseInt(request.getParameter("num"));
	
	boardDAO.instance.updateBoard(num);
	
	
	%>
	<script>
		alert("게시글 수정이 완료되었습니다.");
		location.href="00_shopMain.jsp?center=07_customerCenter.jsp";
	
	</script>
	
</body>
</html>