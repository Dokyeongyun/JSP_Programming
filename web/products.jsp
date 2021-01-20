<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="DTO.Product"%>
<jsp:useBean id="productDAO" class="DAO.ProductRepository" scope="session" />

<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<title>상품 목록</title>
</head>
<body>
<jsp:include page="menu.jsp" />
<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">상품목록</h1>
	</div>
</div>
<%
	ArrayList<Product> listOfProducts = productDAO.getAllProducts();
%>

<div class="container">
	<div class="row" align="center">
		<%@ include file = "dbconn.jsp" %>
		<%
			for(int i=0; i<listOfProducts.size(); i++){
		%>
		<div class="col-md-4">
			<img src="WEB-INF/resources/img/iphone6.jpg" alt="상품이미지">
			<h3><%=listOfProducts.get(i).getPname()%></h3>
			<p><%=listOfProducts.get(i).getDescription()%>
			<p><%=listOfProducts.get(i).getUnitPrice()%>원
			<p><a href="./product.jsp?id=<%=listOfProducts.get(i).getProductId()%>"
				  class="btn btn-secondary" role="button"> 상세 정보 &raquo;</a>
		</div>
		<%
			}
		%>

		<%-- DB에서 읽어오기 --%>
<%--		<%
			try {
				String sql = "select * from product";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery(sql);
				while(rs.next()){
		%>
		<div class="col-md-4">
			<h3><%=rs.getString("p_name")%></h3>
			<p><%=rs.getString("p_description")%>
			<p><%=rs.getInt("p_UnitPrice")%>원
			<p><a href="./product.jsp?id=<%=rs.getString("p_id")%>"
				  class="btn btn-secondary" role="button"> 상세 정보 &raquo;</a>
		</div>
		<%
				}
			} catch (SQLException throwables) {
				throwables.printStackTrace();
			}
		%>--%>

	</div>
	<hr>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>
