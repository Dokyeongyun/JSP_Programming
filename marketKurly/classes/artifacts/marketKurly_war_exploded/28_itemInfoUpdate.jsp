<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
</head>
<body>

<br>
<table>
	<tr>
		<td width="1000" align="left">
			<button onclick="location.href='addNewItem.do'">신상품 추가하기</button>
		</td>
	</tr>
</table>

<table border="1"  style="border-collapse:collapse;">
	<tr height="50">
		<td width = "50" align="center"><b>번호</b></td>
		<td width = "100" align = "center"><b>카테고리</b></td>
		<td width = "100" align = "center"><b>상품명</b></td>
		<td width = "100" align = "center"><b>가격</b></td>
		<td width = "50" align = "center"><b>재고</b></td>
		<td width = "50" align = "center"><b>이미지</b></td>
		<td width = "200" align = "center"><b>상품정보</b></td>
		<td width = "50" align = "center"><b>할인률</b></td>
		<td width = "100" align = "center"><b>등록일</b></td>
		<td width = "50" align = "center"><b>판매량</b></td>
		<td width = "100" align = "center" colspan="2"><b>수정/삭제</b></td>
		<c:forEach var="bean" items="${allItem}">

	<tr height="50">
		<td width = "50" align="center">${bean.item_number}</td>
		<td width = "100" align = "center"><%--카테고리 --%>
			<c:if test="${bean.item_category == '100'}">채소</c:if>
			<c:if test="${bean.item_category == '200'}">해산물</c:if>
			<c:if test="${bean.item_category == '300'}">육류</c:if>
			<c:if test="${bean.item_category == '400'}">전자제품</c:if>
		</td>
		<td width = "100" align = "center"><%--상품명 --%>${bean.item_name}</td>
		<td width = "100" align = "center"><%--가격 --%>${bean.item_price}</td>
		<td width = "50" align = "center" ><%--재고 --%>${bean.item_stock}</td>
		<td width = "50" align = "center"><%--현재이미지 --%><img src="img/${bean.item_image}" height="50"></td>
		<td width = "200" align = "center"><%--상품정보 --%>${bean.item_info}</td>
		<td width = "50" align = "center"><%--할인률 --%>${bean.discount_rate}</td>
		<td width = "100" align = "center"><%--등록일--%>${bean.reg_date}</td>
		<td width = "50" align = "center"><%--판매량--%>${bean.sold}</td>
		<td width = "50" align = "center"><%--수정버튼--%><a href="itemInfoUpdateForm.do?item_number=${bean.item_number}">수정</a></td>
		<td width = "50" align = "center"><%--삭제버튼--%><a href="deleteItem.do?item_number=${bean.item_number}">삭제</a></td>
	</tr>
	</c:forEach>
</table>
</body>
</html>