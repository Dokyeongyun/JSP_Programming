<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
</head>
<body>
<c:set var="check" value="-1"/>
<div>
	<h3>상품 카테고리 검색</h3>
	<form method = "post" action = "showOneCategory.do">
		<select name="category">
			<option value = "1">채소</option>
			<option value = "2">해산물</option>
			<option value = "3">육류</option>
			<option value = "4">전자제품</option>
		</select>
		<input type = "image" src = "img/findcate.png" name = "submit" value="submit" style="width:25px;">
	</form>
</div>
<hr size = "1" color = "purple" width = "300">
<br>
<h1>전체 상품</h1>
<table>
	<c:set var="j" value="0"/>
	<c:forEach var="bean" items="${allItem}">
	<c:if test="${j%3==0}"><tr height="250"></c:if>
	<td width = "400" align="center">
		<c:if test="${check == 1}">
		<a href="00_shopMain.jsp?center=28_itemInfoUpdate.jsp?item_number=${bean.item_number}&item_image=${bean.item_image}" >
			<c:if test="${bean.item_stock > 0}">
				<img alt="" src="img/${bean.item_image}" width="250">
			</c:if>
			<c:if test="${bean.item_stock <= 0}">
				<img alt="" src="img/${bean.item_image}" width = "250" style = "opacity : 40%">
			</c:if>
		</a>
		</c:if>
		<c:if test="${check != 1}">
			<a href="showOneItem.do?item_number=${bean.item_number}&item_image=${bean.item_image}" >
			<c:if test="${bean.item_stock > 0}">
				<img alt="" src="img/${bean.item_image}" width="250">
			</c:if>
			<c:if test="${bean.item_stock <= 0}">
				<img alt="" src="img/${bean.item_image}" width = "250" style = "opacity : 40%">
			</c:if>
		</a>
		</c:if>
		<p><font size = "5"><b>${bean.item_name}</b></font></p>
		<c:if test="${bean.item_stock > 0}">
			<c:set var="price" value="${bean.item_price}"/>
			<c:set var="realprice" value="${bean.item_price - bean.item_price * bean.discount_rate/100}"/>
			<c:if test="${price==realprice}">
				<p><font size = "4">${bean.item_price} 원</font></p>
			</c:if>
			<c:if test="${price>realprice}">
				<p><font size = "3"><del>${bean.item_price} 원</del></font>
				→
				<font size = "4" color = "purple"><b>${realprice}원</b></font></p>
			</c:if>
			<c:if test="${price<realprice}">
				<p><font size = "3" color = "red"><b>품절</b></font></p>
			</c:if>
		</c:if>
		<c:set var="j" value="${j+1}"/>
	</c:forEach>
</table>
</body>
</html>