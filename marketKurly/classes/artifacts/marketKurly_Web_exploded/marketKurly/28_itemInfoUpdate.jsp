<%@page import="java.util.ArrayList"%>
<%@page import="marketKurly.itemDAO"%>
<%@page import="marketKurly.itemDTO"%>
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
ArrayList<itemDTO> allItem = itemDAO.instance.getAllItem();

%>
<br>
<table>
	<tr>
		<td width="1000" align="left">
			<button onclick="location.href='00_shopMain.jsp?center=32_addNewItem.jsp'">�Ż�ǰ �߰��ϱ�</button>
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
	<%
	for(int i=0;i<allItem.size();i++){
		itemDTO bean = allItem.get(i);
		
		%>
		<tr height="50">
			<td width = "50" align="center">
				<%=bean.getItem_number() %>
			</td>
			<td width = "100" align = "center"><%--ī�װ� --%>
				<%
				if(bean.getItem_category().equals("100")){
					%>
					ä��
					<%
				}else if(bean.getItem_category().equals("200")){
					%>
					�ػ깰
					<%
				}else if(bean.getItem_category().equals("300")){
					%>
					����
					<%
				}else if(bean.getItem_category().equals("400")){
					%>
					������ǰ
					<%
				}
				
				%>
			
			</td>
			<td width = "100" align = "center"><%--��ǰ�� --%>
				<%=bean.getItem_name() %>
			</td>
			<td width = "100" align = "center"><%--���� --%>
				<%=bean.getItem_price() %>
			</td>
			<td width = "50" align = "center" ><%--��� --%>
				<%=bean.getItem_stock() %>
			</td>
			<td width = "50" align = "center"><%--�����̹��� --%>
				<img src="img/<%=bean.getItem_image() %>" height="50">
			</td>
			<td width = "200" align = "center"><%--��ǰ���� --%>
				<%=bean.getItem_info() %>
			</td>
			<td width = "50" align = "center"><%--���η� --%>
				<%=bean.getDiscount_rate() %>%
			</td>
			<td width = "100" align = "center"><%--�����--%>
				<%=bean.getReg_date() %>
			</td>
			<td width = "50" align = "center"><%--�Ǹŷ�--%>
				<%=bean.getSold() %>
			</td>
			<td width = "50" align = "center"><%--������ư--%>
				<a href="00_shopMain.jsp?center=30_itemInfoUpdateForm.jsp?item_number=<%=bean.getItem_number() %>">����</a>
			</td>
			
			<td width = "50" align = "center"><%--������ư--%>
				<a href="31_deleteItem.jsp?item_number=<%=bean.getItem_number() %>">����</a>
			</td>
		</tr>
		<%
	}
	
	%>

		</table>
</body>
</html>