<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
</head>
<body>
<c:if test="${check != -1}">
	<script>
		alert("��ǰ���� �߰��� �Ϸ�Ǿ����ϴ�.");
		location.href="itemInfoUpdate.do";
	</script>
</c:if>
<c:if test="${check == -1}">
	<script>
		alert("��ǰ���� �߰��� �����߽��ϴ�.");
		history.back();
	</script>
</c:if>
</body>
</html>