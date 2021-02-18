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

<%
request.setCharacterEncoding("UTF-8");
%>

<c:if test="${check == 1}">
	<script>
		alert('회원가입에 성공하셨습니다. 로그인 후 이용해주세요.');
		location.href='main.do';
	</script>
</c:if>
<c:if test="${check != 1}">
	<script>
		alert('회원가입에 실패했습니다. 다시 시도해주세요.');
		history.back();
	</script>
</c:if>
</body>
</html>