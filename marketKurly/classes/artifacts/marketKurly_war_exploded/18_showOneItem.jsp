<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
</head>
<body>
<form method = "post" action = "insertCart.do">
	<table>
		<tr height="80">
			<td rowspan = "6" width = "350" align = "center" >
				<img alt="" src="img/${bean.item_image}" height = "350">
			</td>
			<td width = "400" colspan="2">
				<font size = "5"><b>${bean.item_name}</b></font><br>
				<font size = "2">${bean.item_info}</font>

			</td>
		</tr>
		<tr height="70">
			<td width = "400" colspan="2">
				<font size="3"><b><del>${bean.item_price} ��</del></b></font> ��
				<font size="4" color="purple"><b>${bean.item_price - bean.item_price*bean.discount_rate/100} ��</b></font><br>
				<font size="2" color = "purple">�α��� �� ���������� ����˴ϴ�.</font>
			</td>
		</tr>
		<tr height="50">
			<td width = "100">
				<font size="2"><b>�ǸŴ���</b></font>
			</td>
			<td width = "300">
				<font size="2">1��</font>
			</td>
		</tr>
		<tr height="50">
			<td width = "100">
				<font size="2"><b>��۹��</b></font>
			</td>
			<td width = "300">
				<font size="2">�������/�ù���</font>
			</td>
		</tr>
		<tr height="50">
			<td width = "100">
				<font size="2"><b>����Ÿ��</b></font>
			</td>
			<td width = "300">
				<font size="2">���/��������</font><br>
				<font size="1">�ù����� ���������� ��Ƽ�������� ��ü�˴ϴ�.</font>
			</td>
		</tr>
		<tr height="50">
			<td width = "100">
				<font size="2"><b>���ż���</b></font>
			</td>
			<td width = "300">
				<input type = "number" name="buycnt" min="0" max="100" size = "100" value = "1">
			</td>
		</tr>
		<tr height="35">
			<td colspan="3" align="right">
				<input type="image" src = "img/sendcart.PNG" name="submit" value="submit" style="height:50px">
				<input type="hidden" name = "item_number" value="${bean.item_number}">
			</td>
		</tr>
	</table>
</form>
</body>
</html>