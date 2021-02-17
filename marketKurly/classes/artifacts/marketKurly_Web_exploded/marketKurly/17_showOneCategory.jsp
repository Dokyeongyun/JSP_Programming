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

<%
	int category = Integer.parseInt(request.getParameter("category"));
	String cate="";
	if(category==1){
		cate = "100";
	}else if(category==2){
		cate = "200";
	}else if(category==3){
		cate = "300";
	}else if(category==4){
		cate = "400";
	}
	String categoryname="";
	if(cate.equals("100")){
		categoryname = "채소";
	}else if(cate.equals("200")){
		categoryname="해산물";
	}else if(cate.equals("300")){
		categoryname="육류";
	}else if(cate.equals("400")){
		categoryname="전자제품";
	}
	
	ArrayList<itemDTO> onecateList = itemDAO.instance.getOneCategory(categoryname);

%>

<h2><%=categoryname%> 카테고리</h2>
	
	<table>
	<%
	int j=0;
	for(int i=0;i<onecateList.size();i++){
		itemDTO bean = onecateList.get(i);
		
		if(j%3==0){
			%>
			<tr height="250" >
			<%
		}
		%>
			<td width = "400" align="center">
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
				<p>
				<font size = "5"><b><%=bean.getItem_name() %></b></font></p>
				
				<%
				if(bean.getItem_stock()>0){
					int price = bean.getItem_price();
					int realprice = bean.getItem_price() - bean.getItem_price()*bean.getDiscount_rate()/100;
					if(price==realprice){
						%>
						<p><font size = "4"><%=bean.getItem_price() %>원</font></p>
						<%
					}else if(price>realprice){
						%>
						<p><font size = "3"><del><%=bean.getItem_price() %>원</del></font>
						→				
						<font size = "4" color = "purple"><b><%=realprice %>원</b></font></p>
						<%
					}
					
					%>
					<p><font size = "2"><%=bean.getItem_info() %></font></p>
					<%
				}else{
					%>
					<p><font size = "3" color = "red"><b>품절</b></font></p>
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