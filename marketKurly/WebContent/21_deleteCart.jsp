<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="marketKurly.DAO.cartDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:if test="${check == -1}">
	<script>
		alert("로그인 후 이용이 가능합니다.");
		location.href="main.do";
	</script>
</c:if>
<c:if test="${check != -1}">
	<script>
		alert("상품을 장바구니에서 삭제했습니다.");
		location.href="cartInfo.do";
	</script>
</c:if>
</body>
</html>