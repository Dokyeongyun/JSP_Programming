<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form method="post" action = "33_addNewItemPro.jsp" enctype="multipart/form-data" accept-charset="UTF-8">
	<table border="1"  style="border-collapse:collapse;">
		<tr height="30">
			<td width ="200">��ǰ ī�װ�</td>
			<td width = "500">
				<select name="category">
					<option value="100">ä��</option>
					<option value="200">�ػ깰</option>
					<option value="300">����</option>
					<option value="400">������ǰ</option>
				</select>
			
			</td>
		</tr>
		<tr height="30">
			<td width ="200">��ǰ��</td>
			<td width = "500">
				<input type="text" name="name">
			</td>
		</tr>
		<tr height="30">
			<td width ="200">��ǰ����</td>
			<td width = "500">
				<input type="text" name="price">��
			</td>
		</tr>
		<tr height="30">
			<td width ="200">��ǰ���</td>
			<td width = "500">
				<input type="text" name="stock">
			</td>
		</tr>
		<tr height="30">
			<td width ="200">�̹���</td>
			<td width = "500">
				<input type="file" name="image">
			</td>
		</tr>
		<tr height="30">
			<td width ="200">��ǰ����</td>
			<td width = "500">
				<input type="text" name="info" size="50">
			</td>
		</tr>
		<tr height="30">
			<td width ="200">���η�</td>
			<td width = "500">
				<input type="text" name="discountRate">%
			</td>
		</tr>
	
	</table>
	<input type="submit" value="��ǰ �߰��ϱ�">
</form>

</body>
</html>