<%@page import="marketKurly.DAO.itemDAO"%>
<%@page import="marketKurly.DTO.itemDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
%>

	<%
	String id=(String)session.getAttribute("id");
	int item_number = Integer.parseInt(request.getParameter("item_number"));
	itemDTO bean = itemDAO.instance.getOneItem(item_number);
	%>
	
	<form method = "post" action = "20_insertCart.jsp">
		<table>
			<tr height="80">
				<td rowspan = "6" width = "350" align = "center" >
					<img alt="" src="img/<%=bean.getItem_image()%>" height = "350">
				</td>
				<td width = "400" colspan="2">
					<font size = "5"><b><%=bean.getItem_name() %></b></font><br>
					<font size = "2"><%=bean.getItem_info() %></font>
					
				</td>
			</tr>
			<tr height="70">
				<td width = "400" colspan="2">
					<font size="3"><b><del><%=bean.getItem_price() %>��</del></b></font> ��
					<font size="4" color="purple"><b><%=bean.getItem_price() - bean.getItem_price()*bean.getDiscount_rate()/100 %>��</b></font><br>
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
					<input type="hidden" name = "item_number" value="<%=bean.getItem_number() %>">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>