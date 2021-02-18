<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
<c:set var="num" value="0"/>

<h2>주문내역 확인</h2>
<hr size="2" color="purple" width = "300">
<br><br>
<table>
	<tr height="50">
		<td width="50" align="center">
			<font size = "3" color="purple">번호</font>
		</td>
		<td width="50" align="center">
			<font size = "3" color="purple"></font>
		</td>
		<td width="100" align="center">
			<font size = "3" color="purple">상품명</font>
		</td>
		<td width="50" align="center">
			<font size = "3" color="purple">수량</font>
		</td>
		<td width="100" align="center">
			<font size = "3" color="purple">가격</font>
		</td>
		<td width="200" align="center">
			<font size = "3" color="purple">주문일</font>
		</td>
		<td width="150" align="center">
			<font size = "3" color="purple">결제수단</font>
		</td>
	</tr>
	<tr height="10">
		<td colspan="7">
			<hr size="2" color="gray" width="800">
		</td>
	</tr>
	<c:forEach var="bean" items="${buyList}">
		<tr height="50">
			<td width="50" align="center">
				<c:set var="num" value="${num+1}"/>
				<font size="2">${num}</font>
			</td>
			<td width="50" align="center">
				<img src="img/${bean.iten_image}" height="50">
			</td>
			<td width="100" align="center">
				<font size = "2">${bean.item_name}</font>
			</td>
			<td width="50" align="center">
				<font size = "2">${bean.buy_count}</font>
			</td>
			<td width="100" align="center">
				<font size = "2" >${bean.buy_price * bean.buy_count}</font>
			</td>
			<td width="200" align="center">
				<font size = "2">${bean.buy_date}</font>
			</td>
			<td width="150" align="center">
				<font size = "2">${bean.houpay}</font>
			</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>