<%@page import="marketKurly.managerDAO"%>
<%@page import="marketKurly.managerDTO"%>
<%@page import="marketKurly.buyDAO"%>
<%@page import="marketKurly.cartDAO"%>
<%@page import="marketKurly.customerDAO"%>
<%@page import="marketKurly.customerDTO"%>
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
String managerId=(String)session.getAttribute("managerId");

customerDTO customerbean = buyDAO.instance.getCustomerInfo(id);
managerDTO managerbean = managerDAO.instance.getManagerInfo(managerId);
String name="";
%>
		<div align="right">
			<font size="2">
			<%
			if(id==null && managerId==null){
				%>
			<a href = "00_shopMain.jsp?center=08_join.jsp" style="text-decoration: none">ȸ������</a>&nbsp;
			<img alt="" src="img/top1.jpg"> &nbsp;
			<a href = "00_shopMain.jsp?center=04_customerLogin.jsp" style="text-decoration: none">�α���</a>&nbsp;
				<%
			}else{
				if(id!=null){
					name = customerbean.getName();
					System.out.println("�α��� ���̵� Ȯ�ο� = " + name);
					%>
					<%=name %>�� &nbsp;  <img alt="" src="img/top1.jpg"> &nbsp;
					<a href = "00_shopMain.jsp?center=24_orderListCheck.jsp" style="text-decoration: none">�ֹ�Ȯ��</a>&nbsp;
					<%
				}else if(managerId!=null){
					name = managerbean.getName();
					%>
					<%=name %>�� &nbsp;  <img alt="" src="img/top1.jpg"> &nbsp;
					<a href = "00_shopMain.jsp?center=28_itemInfoUpdate.jsp" style="text-decoration: none">��ǰ����</a>&nbsp;
					<img alt="" src="img/top1.jpg"> &nbsp;
					<a href = "00_shopMain.jsp?center=34_checkAllOrder.jsp" style="text-decoration: none">�ֹ�Ȯ��</a>&nbsp;
					<%
				}
				%>
					<img alt="" src="img/top1.jpg"> &nbsp;
					<a href = "06_logout.jsp" style="text-decoration: none">�α׾ƿ�</a>&nbsp;
				<%
			}
			%>
					<img alt="" src="img/top1.jpg"> &nbsp;
					<a href = "00_shopMain.jsp?center=07_customerCenter.jsp" style="text-decoration: none">������</a>&nbsp;
			</font>
		</div>
		<div align="center">
			<a href="00_shopMain.jsp">
				<img src="img/logo.png" alt="" height="80">
			</a>
		</div>
		<br>
		<div align="center">
			<table>
				<tr height="50">
					<td width = "180" align = "center" id="dropdown">
						<font size="3" color="black"><a href = "00_shopMain.jsp?center=16_showAllCategory.jsp" style="text-decoration: none"><b>��ü��ǰ ����</b></a></font>
					</td>
					<td width="10" align = "center">
						<img alt="" src="img/top1.jpg">
					</td>
					
					<td width = "180" align = "center">
						<font size="3" color="black"><a href = "00_shopMain.jsp?center=25_showNewItem.jsp" style="text-decoration: none"><b>�Ż�ǰ</b></a></font>
					</td>
					<td width="10" align = "center">
						<img alt="" src="img/top1.jpg">
					</td>
					
					<td width = "180" align = "center">
						<font size="3" color="black"><a href = "00_shopMain.jsp?center=26_showBestItem.jsp" style="text-decoration: none"><b>����Ʈ</b></a></font>
					</td>
					<td width="10" align = "center">
						<img alt="" src="img/top1.jpg">
					</td>
					
					<td width = "180" align = "center">
						<font size="3" color="black"><a href = "00_shopMain.jsp?center=27_showDiscountedItem.jsp" style="text-decoration: none"><b>�˶����</b></a></font>
					</td>
					<td width="10" align = "center">
						<img alt="" src="img/top1.jpg">
					</td>
					
					<td width = "180" align = "center">
						<font size="3" color="black"><a href = "#" style="text-decoration: none"><b>�̺�Ʈ</b></a></font>
					</td>
					
					<td width = "40" align = "center">
						<a href = "00_shopMain.jsp?center=19_cartInfo.jsp"><img alt="" src="img/cart.png" width="30"></a>
					</td>
				</tr>
			</table>
		</div>
</body>
</html>