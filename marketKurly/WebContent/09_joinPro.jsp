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
		alert('ȸ�����Կ� �����ϼ̽��ϴ�. �α��� �� �̿����ּ���.');
		location.href='main.do';
	</script>
</c:if>
<c:if test="${check != 1}">
	<script>
		alert('ȸ�����Կ� �����߽��ϴ�. �ٽ� �õ����ּ���.');
		history.back();
	</script>
</c:if>
</body>
</html>