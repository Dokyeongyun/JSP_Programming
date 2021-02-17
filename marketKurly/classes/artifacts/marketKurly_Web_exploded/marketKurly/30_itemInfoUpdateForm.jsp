<%@page import="marketKurly.managerDAO"%>
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
	request.setCharacterEncoding("UTF-8");
%>


<%
int item_number=Integer.parseInt(request.getParameter("item_number"));
itemDTO bean = managerDAO.instance.getOneItem(item_number);

%>
<form method="post" action = "29_itemInfoUpdatePro.jsp" enctype="multipart/form-data" accept-charset="UTF-8">
	<table border="1"  style="border-collapse:collapse;">
		<tr height="30">
			<td width="150" align="center">
			 	번호
			</td>
			<td width = "300">
				<%=bean.getItem_number() %>
			</td>
		</tr>
		<tr height="30">
			<td width="150" align="center">
			 	카테고리
			</td>
			<td width = "300">
				<select name="category">
					<option value="100" <% if(bean.getItem_category().equals("100")) { %>selected <% }%>>채소</option>
					<option value="200" <% if(bean.getItem_category().equals("200")) { %>selected <% }%>>해산물</option>
					<option value="300" <% if(bean.getItem_category().equals("300")) { %>selected <% }%>>육류</option>
					<option value="400" <% if(bean.getItem_category().equals("400")) { %>selected <% }%>>전자제품</option>
				</select>
			</td>
		</tr>
		<tr height="30">
			<td width="150" align="center">
			 	상품명
			</td>
			<td width = "300">
				<input type = "text" name = "name" value="<%=bean.getItem_name() %>">
			</td>
		</tr>
		<tr height="30">
			<td width="150" align="center">
			 	가격
			</td>
			<td width = "300">
				<input type = "text" name = "price" value="<%=bean.getItem_price() %>">
			</td>
		</tr>
		<tr height="30">
			<td width="150" align="center">
			 	재고
			</td>
			<td width = "300">
				<input type = "text" name = "stock"  size="3" value="<%=bean.getItem_stock() %>">
			</td>
		</tr>
		<tr height="30">
			<td width="150" align="center">
			 	이미지
			</td>
			<td width = "300">
				<img src="img/<%=bean.getItem_image() %>" height="30">
				<input type="file" name = "image" value="업로드">
			</td>
		</tr>
		<tr height="30">
			<td width="150" align="center">
			 	상품정보
			</td>
			<td width = "300">
				<input type = "text" name = "info" value="<%=bean.getItem_info() %>" >
			</td>
		</tr>
		<tr height="30">
			<td width="150" align="center">
			 	할인률
			</td>
			<td width = "300">
				<input type = "text" name = "discount_rate" size="3" value="<%=bean.getDiscount_rate() %>">%
			</td>
		</tr>
		<tr height="30">
			<td width="150" align="center">
			 	등록일
			</td>
			<td width = "300">
				<%=bean.getReg_date() %>
			</td>
		</tr>
		<tr height="30">
			<td width="150" align="center">
			 	판매량
			</td>
			<td width = "300">
				<%=bean.getSold() %>
			</td>
		</tr>
		<tr height="30">
			<td width="450" align="center" colspan="2">
			 	<input type="submit" value="수정하기">&nbsp;
			 	<input type="hidden" name="item_number" value=<%=bean.getItem_number() %>>
			 	<input type="hidden" name="item_category" value=<%=bean.getItem_category() %>>
			 	<input type="hidden" name="item_name" value=<%=bean.getItem_name() %>>
			 	<input type="hidden" name="item_price" value=<%=bean.getItem_price() %>>
			 	<input type="hidden" name="item_stock" value=<%=bean.getItem_stock() %>>
			 	<input type="hidden" name="item_image" value=<%=bean.getItem_image() %>>
			 	<input type="hidden" name="item_info" value=<%=bean.getItem_info() %>>
			 	
			 	<input type="reset" value="다시작성">
			 	
			</td>
		</tr>
	</table>
</form>
</body>
</html>