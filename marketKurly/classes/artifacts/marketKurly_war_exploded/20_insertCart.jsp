<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="marketKurly.DAO.cartDAO"%>
<%@page import="marketKurly.DTO.cartDTO"%>
<%@page import="marketKurly.DAO.itemDAO"%>
<%@page import="marketKurly.DTO.itemDTO"%>
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
        var con = confirm("��ǰ�� ��ٱ��Ͽ� ��ҽ��ϴ�.\n��ٱ��ϸ� Ȯ���Ͻðڽ��ϱ�?");
        location.href="cartInfo.do";
    </script>
</c:if>
<c:if test="${check != 1}">
    <script>
        alert("�����߽��ϴ�. ��� �� �ٽ� �õ����ּ���.");
        history.back();
    </script>
</c:if>
</body>
</html>