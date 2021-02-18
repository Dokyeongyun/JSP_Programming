<%@page import="marketKurly.DAO.cartDAO"%>
<%@page import="marketKurly.DTO.cartDTO"%>
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
		String buyer = (String)session.getAttribute("id");
		int item_number=Integer.parseInt(request.getParameter("item_number"));
		itemDTO bean = itemDAO.instance.getOneItem(item_number);
		String item_name = bean.getItem_name();
		int buy_price = bean.getItem_price() - bean.getItem_price()*bean.getDiscount_rate()/100;
		int buy_count = Integer.parseInt(request.getParameter("buycnt"));
		String item_image = bean.getItem_image();
		
		
		cartDTO dto = new cartDTO();
		dto.setBuyer(buyer);
		dto.setItem_name(item_name);
		dto.setBuy_price(buy_price);
		dto.setBuy_count(buy_count);
		dto.setItem_image(item_image);
		
		cartDAO.instance.insertCart(dto);
	%>
	<script>
	alert("상품을 장바구니에 담았습니다.");
	location.href="00_shopMain.jsp?center=19_cartInfo.jsp";
	</script>
	<%
	
	%>
</body>
</html>