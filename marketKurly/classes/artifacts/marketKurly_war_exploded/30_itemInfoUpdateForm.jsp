<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form method="post" action = "itemInfoUpdatePro.do" enctype="multipart/form-data" accept-charset="UTF-8">
	<table border="1"  style="border-collapse:collapse;">
		<tr height="30">
			<td width="150" align="center">번호</td>
			<td width = "300">${bean.item_number}</td>
		</tr>
		<tr height="30">
			<td width="150" align="center">카테고리</td>
			<td width = "300">
				<select name="category">
					<option value="100" <c:if test="${bean.item_category == '100'}"> selected </c:if>> 채소</option>
					<option value="200" <c:if test="${bean.item_category == '200'}"> selected </c:if>> 해산물</option>
					<option value="300" <c:if test="${bean.item_category == '300'}"> selected </c:if>> 육류</option>
					<option value="400" <c:if test="${bean.item_category == '400'}"> selected </c:if>> 전자제품</option>
				</select>
			</td>
		</tr>
		<tr height="30">
			<td width="150" align="center">상품명</td>
			<td width = "300"><input type = "text" name = "name" value="${bean.item_name}"></td>
		</tr>
		<tr height="30">
			<td width="150" align="center">가격</td>
			<td width = "300"><input type = "text" name = "price" value="${bean.item_price}"></td>
		</tr>
		<tr height="30">
			<td width="150" align="center">재고</td>
			<td width = "300"><input type = "text" name = "stock"  size="3" value="${bean.item_stock}"></td>
		</tr>
		<tr height="30">
			<td width="150" align="center">이미지</td>
			<td width = "300">
				<img src="img/${bean.item_image}" height="30">
				<input type="file" name = "image" value="업로드">
			</td>
		</tr>
		<tr height="30">
			<td width="150" align="center">상품정보</td>
			<td width = "300"><input type = "text" name = "info" value="${bean.item_info}" ></td>
		</tr>
		<tr height="30">
			<td width="150" align="center">할인률</td>
			<td width = "300"><input type = "text" name = "discount_rate" size="3" value="${bean.discount_rate}">%</td>
		</tr>
		<tr height="30">
			<td width="150" align="center">등록일</td>
			<td width = "300">${bean.reg_date}</td>
		</tr>
		<tr height="30">
			<td width="150" align="center">판매량</td>
			<td width = "300">${bean.sold}</td>
		</tr>
		<tr height="30">
			<td width="450" align="center" colspan="2">
			 	<input type="submit" value="수정하기">&nbsp;
			 	<input type="hidden" name="item_number" value="${bean.item_number}"/>
			 	<input type="hidden" name="item_category" value="${bean.item_category}"/>
			 	<input type="hidden" name="item_name" value="${bean.item_name}"/>
			 	<input type="hidden" name="item_price" value="${bean.item_price}"/>
			 	<input type="hidden" name="item_stock" value="${bean.item_stock}"/>
			 	<input type="hidden" name="item_image" value="${bean.item_image}"/>
			 	<input type="hidden" name="item_info" value="${bean.item_info}"/>
			 	<input type="reset" value="다시작성">
			</td>
		</tr>
	</table>
</form>
</body>
</html>