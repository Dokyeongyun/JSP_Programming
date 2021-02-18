<%@page import="marketKurly.DAO.cartDAO"%>
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
	int cart_number = Integer.parseInt(request.getParameter("cart_number"));
	String buyer =(String)session.getAttribute("id");
	
	if(buyer==null){
		%>
		<script>
		alert("로그인 후 이용이 가능합니다.");
		location.href="00_shop_Main.jsp";
		</script>
		<%
	}else{
		cartDAO.instance.deleteCart(cart_number);
		response.sendRedirect("00_shopMain.jsp?center=19_cartInfo.jsp");
		
	}

%>
</body>
</html>