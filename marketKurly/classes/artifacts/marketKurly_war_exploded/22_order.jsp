<%@page import="marketKurly.DAO.buyDAO"%>
<%@page import="marketKurly.DTO.customerDTO"%>
<%@page import="marketKurly.DAO.cartDAO"%>
<%@page import="marketKurly.DTO.cartDTO"%>
<%@page import="java.util.ArrayList"%>
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
	customerDTO customerBean = buyDAO.instance.getCustomerInfo(id);
	ArrayList<cartDTO> itemlist = buyDAO.instance.getItemList(id);
	int num=0;
	int total = Integer.parseInt(request.getParameter("total"));
%>
<div width = "800">
	<h2>�ֹ���</h2>
	<hr size="2" color="purple" width = "300">
	<br><br>
	<form method="post" action = "23_insertOrderList.jsp" accept-charset="UTF-8-">
	
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
		
		<%
		
		for(int i=0;i<itemlist.size();i++){
			cartDTO bean = itemlist.get(i);
			
			%>
			<tr height = "50">
				<td width = "200" align="center">
					<font size="2"><b><%=++num %></b></font>
				</td>
				<td width = "100" align="center">
					<img src="img/<%=bean.getItem_image() %>" height="50">
				</td>
				<td width = "400" align="center">
					<font size="3"><%=bean.getItem_name() %></font>
				</td>
				<td width = "100" align="center">
					<font size="3"><%=bean.getBuy_count() %></font>
				</td>
			</tr>
			<%
		}
		%>
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
				<input type="text" name = "buyerName" value=<%=customerBean.getName() %> style="width:200px; height:30px">
			</td>
		</tr>
		<tr height = "50">
			<td width = "200" align="center">
				<font size="2"><b>��ȭ��ȣ</b></font>
			</td>
			<td width = "600">
				<input type="text" name = "buyerTel" value=<%=customerBean.getTel() %> style="width:200px; height:30px">
			</td>
		</tr>
		<tr height = "50">
			<td width = "200" align="center">
				<font size="2"><b>�ּ�</b></font>
			</td>
			<td width = "600">
				<input type="text" name = "buyerAddress" value=<%=customerBean.getAddress() %> style="width:300px; height:30px">
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
					<h3><%=total %>��</h3>
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