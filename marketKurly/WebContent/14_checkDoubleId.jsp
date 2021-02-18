<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="marketKurly.DAO.customerDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:if test="${check == 1}">
	<script>
		alert("중복아이디입니다.");
		history.go(-1);
	</script>
</c:if>
<c:if test="${check != 1}">
	<script>
		alert("사용가능한 아이디입니다.");
		location.href="00_shopMain.jsp?center=08_join.jsp";
	</script>
</c:if>
</body>
</html>