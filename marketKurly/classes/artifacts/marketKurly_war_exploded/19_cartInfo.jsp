<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
</head>
<body>
<c:set var="num" value="0"/>
<c:set var="total" value="0"/>
<c:set var="deliveryfee" value="3000"/>

<h2>장바구니</h2>
<hr size="2" color="purple" width = "300">
<c:if test="${cnt == 0}">
	<h3>장바구니에 담겨있는 상품이 없습니다.</h3>
</c:if>
<c:if test="${cnt != 0}">
	<c:forEach var="i" items="${cartList}">
		<table>
			<tr height="40">
				<td width="50" align="center">
					<c:set var="num" value="${num+1}"/>
					<font size="2">${num}</font>
				</td>
				<td width = "100" align = "center">
					<img alt="" src="img/${i.item_image}" height="40">
				</td>
				<td width = "300">
					<font size = "3"> <b>${i.item_name}</b></font>
				</td>
				<td width = "100" align = "center">
					<font size = "3"> <b>${i.buy_count}</b></font>
				</td>
				<td width = "100">
					<font size = "3"> <b>${i.buy_price * i.buy_count} 원</b></font>
				</td>
				<td width = "40" align = "center">
					<input type = "image" src = "img/delete.png" onclick="location.href='deleteCart.do?cart_number=${i.cart_number}'"/>
				</td>
			</tr>
		</table>
		<hr size="1" color="gray" width="680">
		<c:set var="total" value="${total + i.buy_count * i.buy_price}"/>
	</c:forEach>
	<form method="post" action="order.do">
			<table>
				<tr height = "30">
					<td align="right" width = "480" align="right">
						<h4>총 상품금액 </h4>
					</td>
					<td align="right" width = "200" align="right">
						<h4>${total} 원</h4>
					</td>
				</tr>
				<tr height = "30">
					<td align="right" width = "480" align="right">
						<h4>배송비 </h4>
					</td>
					<td align="right" width = "200" align="right">
						<c:if test="${total < 40000}">
							<h4>${deliveryfee} 원</h4>
							<font size="2" color="purple">
									${40000-total} 원 추가주문 시, 무료배송
							</font>
						</c:if>
						<c:if test="${total >= 40000}">
							<h4>0원</h4>
						</c:if>
					</td>
				</tr>
				<tr height = "40">
					<td align="right" width = "480" align="right">
						<h3>총 결제금액 </h3>
					</td>
					<td align="right" width = "200" align="right">
						<c:if test="${total < 40000}">
							<h3><b>${total + deliveryfee} 원</b></h3>
						</c:if>
						<c:if test="${total >= 40000}">
							<h3><b>${total} 원</b></h3>
						</c:if>
					</td>
				</tr>
				<tr height = "30">
					<td align="right" colspan="2">
						<input type="image" src="img/order.PNG" name="submit" value="submit" style="height:50px"/>
						<input type="hidden" name="total" value=${total}/>
					</td>
				</tr>
			</table>
		</form>
</c:if>
</body>
</html>