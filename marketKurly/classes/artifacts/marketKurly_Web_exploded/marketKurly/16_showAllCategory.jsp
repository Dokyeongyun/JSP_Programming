<%@page import="java.util.Vector"%>
<%@page import="marketKurly.itemDAO"%>
<%@page import="marketKurly.itemDTO"%>
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
<%--
 insert into item values(1,'ä��', '����',1200,3,'1.jpg', '�����Դϴ�', 0, now());
	insert into item values(2,'ä��', '����',2000,4,'2.jpg', '�����Դϴ�', 10, now());
	insert into item values(3,'ä��', '���',2500,8,'3.jpg', '����Դϴ�', 10, now());
	insert into item values(4,'ä��', '����',1200,0,'4.jpg', '�����Դϴ�', 0, now());
	insert into item values(5,'ä��', '��ȣ��',1000,5,'5.jpg', '��ȣ���Դϴ�', 0, now());
	insert into item values(6,'ä��', '����',1500,4,'6.jpg', '�����Դϴ�', 20, now());
	insert into item values(7,'ä��', '��ȣ��',3000,7,'7.jpg', '��ȣ���Դϴ�', 10, now());
	insert into item values(8,'ä��', '������ī',3000,6,'8.jpg', '������ī�Դϴ�', 10, now());
	insert into item values(9,'ä��', '�ƽ��Ķ�Ž�',3000,10,'9.jpg', '�ƽ��Ķ�Ž��Դϴ�',0, now());
	insert into item values(10,'ä��', '����',2000,11,'10.jpg', '�����Դϴ�', 0, now());

	insert into item values(11,'�ػ깰', '�ڹݰ���',5000,20,'11.jpg', '�����Դϴ�', 0, now());
	insert into item values(12,'�ػ깰', '����',14000,40,'12.jpg', '�븣���̻� �����Դϴ�', 0, now());
	insert into item values(13,'�ػ깰', '��¡��',5000,10,'13.jpg', '��¡���Դϴ�', 10, now());
	insert into item values(14,'�ػ깰', '������',7000,0,'14.jpg', '�������Դϴ�', 0, now());
	insert into item values(15,'�ػ깰', '����',10000,1,'15.jpg', '�����Դϴ�', 10, now());
	insert into item values(16,'�ػ깰', '����',20000,5,'16.jpg', '�����Դϴ�', 0, now());

	insert into item values(17,'����', '��â',20000,5,'17.jpg', '��â�Դϴ�', 0, now());
	insert into item values(18,'����', '�Ƚɽ�����ũ',18000,0,'18.jpg', '�Ƚɽ�����ũ�Դϴ�',0, now());
	insert into item values(19,'����', '��', 12000,4,'19.jpg', '���Դϴ�', 20, now());
	insert into item values(20,'����', '�ߴٸ�',10000,7,'20.jpg', '�ߴٸ��Դϴ�', 0, now());
	insert into item values(21,'����', '����',20000,10,'21.jpg', '�����ϴ�', 10, now());
	insert into item values(22,'����', '��䰥��',25000,20,'22.jpg', '��䰥���Դϴ�', 30, now());
	insert into item values(23,'����', '�����',20000,0,'23.jpg', '������Դϴ�', 0, now());
	insert into item values(24,'����', 'ġ�����',13000,1,'24.jpg', 'ġ������Դϴ�', 0, now());
	insert into item values(25,'����', '�߰�����',5000,4,'25.jpg', '�߰������Դϴ�', 0, now());
	insert into item values(26,'����', '��������',20000,3,'26.jpg', '���������Դϴ�', 10, now());

	insert into item values(27,'������ǰ', '�׶��δ�',28000,3,'27.jpg', '�׶��δ��Դϴ�', 10, now());
	insert into item values(28,'������ǰ', '�����ٸ���',30000,3,'28.jpg', '�����ٸ����Դϴ�', 10, now());
	insert into item values(29,'������ǰ', '������̱�',25000,3,'29.jpg', '������̱��Դϴ�', 10, now());
	insert into item values(30,'������ǰ', 'ü�߰�',19000,3,'30.jpg', 'ü�߰��Դϴ�', 10, now());
	insert into item values(31,'������ǰ', '����ü�߰�',22000,3,'31.jpg', '����ü�߰��Դϴ�', 10, now());
	insert into item values(32,'������ǰ', '�̴ϼ�ǳ��',16000,0,'32.jpg', '�̴ϼ�ǳ���Դϴ�', 10, now());
	insert into item values(33,'������ǰ', 'û�ұ�',40000,3,'33.jpg', 'û�ұ��Դϴ�', 10, now());
	insert into item values(34,'������ǰ', 'ī�޶�',50000,3,'34.jpg', 'ī�޶��Դϴ�', 10, now());
	insert into item values(35,'������ǰ', '�ͼ���',3800,3,'35.jpg', '�ͼ����Դϴ�', 10, now());
--%>

<%
	ArrayList<itemDTO> allItem = itemDAO.instance.getAllItem();
	String managerId = (String)session.getAttribute("managerId");
	int check=-1;
	if(managerId!=null){
		check=1;
	}

%>
	<div>
		<h3>��ǰ ī�װ� �˻�</h3>
		<form method = "post" action = "00_shopMain.jsp?center=17_showOneCategory.jsp">
			<select name="category">
				<option value = "1">ä��</option>
				<option value = "2">�ػ깰</option>
				<option value = "3">����</option>
				<option value = "4">������ǰ</option>
			</select>
			<input type = "image" src = "img/findcate.png" name = "submit" value="submit" style="width:25px;">
		</form>
	</div>
<hr size = "1" color = "purple" width = "300">
<br>
	<h1>��ü ��ǰ</h1>
	<table>
	<%
	int j=0;
	for(int i=0;i<allItem.size();i++){
		itemDTO bean = allItem.get(i);
		
		if(j%3==0){
			%>
			<tr height="250" >
			<%
		}
		%>
			<td width = "400" align="center">
			<%
			if(check==1){
				%>
				<a href="00_shopMain.jsp?center=28_itemInfoUpdate.jsp?item_number=<%=bean.getItem_number() %>&item_image=<%=bean.getItem_image() %>" >
				<%
				if(bean.getItem_stock()>0){
					%>
					<img alt="" src="img/<%=bean.getItem_image() %>" width = "250">
					<%
				}else{
					%>
					<img alt="" src="img/<%=bean.getItem_image() %>" width = "250" style = "opacity : 40%">
					<%
				}
				%>
				</a>
				<%
			}else{
				%>
				<a href="00_shopMain.jsp?center=18_showOneItem.jsp?item_number=<%=bean.getItem_number() %>&item_image=<%=bean.getItem_image() %>" >
				<%
				if(bean.getItem_stock()>0){
					%>
					<img alt="" src="img/<%=bean.getItem_image() %>" width = "250">
					<%
				}else{
					%>
					<img alt="" src="img/<%=bean.getItem_image() %>" width = "250" style = "opacity : 40%">
					<%
				}
				%>
				</a>
				<%
			}
			%>
				<p>
				<font size = "5"><b><%=bean.getItem_name() %></b></font></p>
				
				<%
				if(bean.getItem_stock()>0){
					int price = bean.getItem_price();
					int realprice = bean.getItem_price() - bean.getItem_price()*bean.getDiscount_rate()/100;
					if(price==realprice){
						%>
						<p><font size = "4"><%=bean.getItem_price() %>��</font></p>
						<%
					}else if(price>realprice){
						%>
						<p><font size = "3"><del><%=bean.getItem_price() %>��</del></font>
						��				
						<font size = "4" color = "purple"><b><%=realprice %>��</b></font></p>
						<%
					}
					
					%>
					<p><font size = "2"><%=bean.getItem_info() %></font></p>
					<%
				}else{
					%>
					<p><font size = "3" color = "red"><b>ǰ��</b></font></p>
					<%
				}%>
			</td>		
			
		
		<%	
		
		j+=1;
	}
	
	%>
	
	</table>
</body>
</html>