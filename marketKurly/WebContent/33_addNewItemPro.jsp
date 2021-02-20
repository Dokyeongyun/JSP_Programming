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
		alert("상품정보 추가가 완료되었습니다.");
		location.href="itemInfoUpdate.do";
	</script>
</c:if>
<c:if test="${check == -1}">
	<script>
		alert("상품정보 추가에 실패했습니다.");
		history.back();
	</script>
</c:if>
</body>
</html>