<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
<c:if test="${check == 1}">
	<script>
		location.href="showBoardContent.jsp?num=${num}";
	</script>
</c:if>
<c:if test="${check != 1}">
	<script>
		alert("비밀번호가 다릅니다.");
		location.href="customerCenter.do";
	</script>
</c:if>
</body>
</html>