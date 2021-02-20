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

<div width = "800">
	<h2>�ֹ���</h2>
	<hr size="2" color="purple" width = "300">
	<br><br>
	<form method="post" action = "insertOrderList.do" accept-charset="UTF-8-">
		<table>
			<tr height="50">
				<td colspan = "4">
					<h3 align = "left">���Ż�ǰȮ��</h3>
				</td>
			</tr>
			<tr height="5">
				<td colspan ="4">
					<hr size="1" color="gray" width="800">
				</td>
			</tr>
			<c:forEach var="bean" items="${itemList}">
				<tr height = "50">
					<td width = "200" align="center">
						<c:set var="num" value="${num+1}"/>
						<font size="2"><b>${num}</b></font>
					</td>
					<td width = "100" align="center">
						<img src="img/${bean.item_image}" height="50">
					</td>
					<td width = "400" align="center">
						<font size="3">${bean.item_name}</font>
					</td>
					<td width = "100" align="center">
						<font size="3">${bean.buy_count}</font>
					</td>
				</tr>
			</c:forEach>
		</table>

		<%-- --%>
		<table>
			<tr height="50">
				<td colspan = "2">
					<h3 align = "left">������ ����</h3>
				</td>
			</tr>
			<tr height="5">
				<td colspan ="2">
					<hr size="1" color="gray" width="800">
				</td>
			</tr>
			<tr height = "50">
				<td width = "200" align="center">
					<font size="2"><b>�̸�</b></font>
				</td>
				<td width = "600">
					<input type="text" name = "buyerName" value="${customerBean.name}" style="width:200px; height:30px"/>
				</td>
			</tr>
			<tr height = "50">
				<td width = "200" align="center">
					<font size="2"><b>��ȭ��ȣ</b></font>
				</td>
				<td width = "600">
					<input type="text" name = "buyerTel" value="${customerBean.tel}" style="width:200px; height:30px"/>
				</td>
			</tr>
			<tr height = "50">
				<td width = "200" align="center">
					<font size="2"><b>�ּ�</b></font>
				</td>
				<td width = "600">
					<input type="text" name = "buyerAddress" value="${customerBean.address}" style="width:300px; height:30px"/>
				</td>
			</tr>
		</table>
		<br>

		<table>
			<tr height="50">
				<td colspan = "2">
					<h3 align = "left">�������</h3>
				</td>
			</tr>
			<tr height="5">
				<td colspan ="2">
					<hr size="1" color="gray" width="800">
				</td>
			</tr>
			<tr height="50">
				<td width="200" align="center">
					<font size="2"><b>��������</b></font>
				</td>
				<td width="600">
					<select name="howPay">
						<option value="1">������ü</option>
						<option value="2">�ſ�ī��</option>
					</select>
				</td>
			</tr>
		</table>

		<table>
			<tr height="50">
				<td width="800">
					<h3 align = "left">�����ݾ�</h3>
				</td>
			</tr>
			<tr height="5">
				<td width="800">
					<hr size="1" color="gray" width="800">
				</td>
			</tr>
			<tr height="50">
				<td align = "right" width="800">
					<h3>${total} ��</h3>
				</td>
			</tr>
			<tr height="50">
				<td align="center" width="800">
					<input type="image" src = "img/pay.PNG" name="submit" value = "submit" style="height:50px">
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>