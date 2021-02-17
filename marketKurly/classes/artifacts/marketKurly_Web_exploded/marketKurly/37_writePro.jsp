<%@page import="marketKurly.boardDAO"%>
<%@page import="marketKurly.boardDTO"%>
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
	String writer = request.getParameter("writer");
	String title = request.getParameter("title");
	String pw = request.getParameter("pw");
	String content = request.getParameter("content");
	
	boardDTO dto = new boardDTO();
	
	dto.setWriter(writer);
	dto.setTitle(title);
	dto.setPw(pw);
	dto.setContent(content);
	
	boardDAO.instance.insertBoard(dto);
	response.sendRedirect("00_shopMain.jsp?center=07_customerCenter.jsp");
	
	%>
</body>
</html>