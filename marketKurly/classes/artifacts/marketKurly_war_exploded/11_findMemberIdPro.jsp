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
		alert("ȸ������ ���̵�� ${id}�Դϴ�.");
		location.href="login.do";
	</script>
</c:if>
<c:if test="${id == ''}">
	<script>
		alert("�ش��ϴ� ȸ�������� �������� �ʽ��ϴ�.");
		history.go(-1);
	</script>
</c:if>
</body>
</html>