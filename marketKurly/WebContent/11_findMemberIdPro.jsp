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

<c:if test="${id != ''}">
	<script>
		alert("회원님의 아이디는 ${id}입니다.");
		location.href="login.do";
	</script>
</c:if>
<c:if test="${id == ''}">
	<script>
		alert("해당하는 회원정보가 존재하지 않습니다.");
		history.go(-1);
	</script>
</c:if>
</body>
</html>