<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
<h1>신상품</h1>
<table>
	<c:set var="j" value="0"/>
	<c:forEach var="bean" items="${newItem}">
	<c:if test="${j%3==0}">
	<tr height="250">
		</c:if>
		<td width = "400" align="center">
			<a href="showOneItem.do?item_number=${bean.item_number}&item_image=${bean.item_image}">
				<c:if test="${bean.item_stock > 0}">
					<img alt="" src="img/${bean.item_image}" width = "250">
				</c:if>
				<c:if test="${bean.item_stock <= 0}">
					<img alt="" src="img/${bean.item_image}" width = "250" style = "opacity : 40%">
				</c:if>
			</a>
			<p><font size = "5"><b>${bean.item_name}</b></font></p>
			<c:if test="${bean.item_stock > 0}">
				<c:set var="price" value="${bean.item_price}"/>
				<c:set var="realPrice" value="${bean.item_price - bean.item_price * bean.discount_rate/100}"/>
				<c:if test="${price == realPrice}">
					<p><font size = "4">${bean.item_price} 원</font></p>
				</c:if>
				<c:if test="${price > realPrice}">
					<p><font size = "3">${bean.item_price} 원</font>
						→
						<font size = "4" color = "purple"><b>${realPrice} 원</b></font></p>
				</c:if>
			</c:if>
			<c:if test="${bean.item_stock > 0}">
				<p><font size = "3" color = "red"><b>품절</b></font></p>
			</c:if>
		</td>
			<c:set var="j" value="${j+1}"/>
		</c:forEach>
</table>
</body>
</html>