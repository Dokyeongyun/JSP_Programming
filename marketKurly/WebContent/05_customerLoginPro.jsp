<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<c:set var="id" value="${id}" scope="session"/>
	<script>
		alert("�α��� ����!");
		location.href='main.do';
	</script>
</c:if>
<c:if test="${check != 1}">
	<script>
		alert("���̵�� ��й�ȣ�� Ȯ�����ּ���");
		history.go(-1);
	</script>
</c:if>
</body>
</html>