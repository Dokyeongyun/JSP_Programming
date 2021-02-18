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
        var con = confirm("상품을 장바구니에 담았습니다.\n장바구니를 확인하시겠습니까?");
        location.href="cartInfo.do";
    </script>
</c:if>
<c:if test="${check != 1}">
    <script>
        alert("실패했습니다. 잠시 후 다시 시도해주세요.");
        history.back();
    </script>
</c:if>
</body>
</html>