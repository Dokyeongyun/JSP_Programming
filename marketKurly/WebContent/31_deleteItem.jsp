<%@page import="marketKurly.DAO.managerDAO"%>
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
	int item_number=Integer.parseInt(request.getParameter("item_number"));
	System.out.println("item_number확인 = " + item_number);
	
	managerDAO.instance.deleteItem(item_number);
	response.sendRedirect("00_shopMain.jsp?center=28_itemInfoUpdate.jsp");
	%>
</body>
</html>