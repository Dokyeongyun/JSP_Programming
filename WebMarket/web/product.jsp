﻿<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="DTO.Product"%>
<%@ page import="DAO.ProductRepository"%>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<title>상품 상세정보</title>
	<script type="text/javascript">
		function addToCart() {
			if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
				document.addForm.submit();
			}
		}
	</script>
</head>
<body>
<jsp:include page="menu.jsp" />
<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">상품 상세정보</h1>
	</div>
</div>
<%
	String id = request.getParameter("id");
	ProductRepository productDAO = new ProductRepository();
	Product product = productDAO.getProductById(id);
%>
<div class="container">
	<div class="row">
		<div class ="col-md-5">
			<img src="C:\Users\aserv\IdeaProjects\WebMarket\web\WEB-INF\resources\img\iphone6.jpg" alt="상품이미지">
		</div>
		<div class="col-md-6">
			<h3><%=product.getPname()%></h3>
			<p><%=product.getDescription()%>
			<p><b>상품 코드 : </b><span class="badge badge-danger"> <%=product.getProductId()%></span>
			<p><b>제조사</b> : <%=product.getManufacturer()%>
			<p><b>분류</b> : <%=product.getCategory()%>
			<p><b>재고 수</b> : <%=product.getUnitsInStock()%>
			<h4><%=product.getUnitPrice()%>원</h4>
			<p><form name="addForm" action="./addCart.jsp?id=<%=product.getProductId()%>" method="post">
			<a href="#" class="btn btn-info" onclick="addToCart()"> 상품 주문 &raquo;</a>
			<a href="#" class="btn btn-warning"> 장바구니 &raquo;</a>
			<a href="#" class="btn btn-secondary"> 상품 목록 &raquo;</a>
		</form>
		</div>
	</div>
	<hr>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>