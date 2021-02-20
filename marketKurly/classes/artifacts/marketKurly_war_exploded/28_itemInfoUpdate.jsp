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
			<button onclick="location.href='addNewItem.do'">�Ż�ǰ �߰��ϱ�</button>
		</td>
	</tr>
</table>

<table border="1"  style="border-collapse:collapse;">
	<tr height="50">
		<td width = "50" align="center"><b>��ȣ</b></td>
		<td width = "100" align = "center"><b>ī�װ�</b></td>
		<td width = "100" align = "center"><b>��ǰ��</b></td>
		<td width = "100" align = "center"><b>����</b></td>
		<td width = "50" align = "center"><b>���</b></td>
		<td width = "50" align = "center"><b>�̹���</b></td>
		<td width = "200" align = "center"><b>��ǰ����</b></td>
		<td width = "50" align = "center"><b>���η�</b></td>
		<td width = "100" align = "center"><b>�����</b></td>
		<td width = "50" align = "center"><b>�Ǹŷ�</b></td>
		<td width = "100" align = "center" colspan="2"><b>����/����</b></td>
		<c:forEach var="bean" items="${allItem}">

	<tr height="50">
		<td width = "50" align="center">${bean.item_number}</td>
		<td width = "100" align = "center"><%--ī�װ� --%>
			<c:if test="${bean.item_category == '100'}">ä��</c:if>
			<c:if test="${bean.item_category == '200'}">�ػ깰</c:if>
			<c:if test="${bean.item_category == '300'}">����</c:if>
			<c:if test="${bean.item_category == '400'}">������ǰ</c:if>
		</td>
		<td width = "100" align = "center"><%--��ǰ�� --%>${bean.item_name}</td>
		<td width = "100" align = "center"><%--���� --%>${bean.item_price}</td>
		<td width = "50" align = "center" ><%--��� --%>${bean.item_stock}</td>
		<td width = "50" align = "center"><%--�����̹��� --%><img src="img/${bean.item_image}" height="50"></td>
		<td width = "200" align = "center"><%--��ǰ���� --%>${bean.item_info}</td>
		<td width = "50" align = "center"><%--���η� --%>${bean.discount_rate}</td>
		<td width = "100" align = "center"><%--�����--%>${bean.reg_date}</td>
		<td width = "50" align = "center"><%--�Ǹŷ�--%>${bean.sold}</td>
		<td width = "50" align = "center"><%--������ư--%><a href="itemInfoUpdateForm.do?item_number=${bean.item_number}">����</a></td>
		<td width = "50" align = "center"><%--������ư--%><a href="deleteItem.do?item_number=${bean.item_number}">����</a></td>
	</tr>
	</c:forEach>
</table>
</body>
</html>