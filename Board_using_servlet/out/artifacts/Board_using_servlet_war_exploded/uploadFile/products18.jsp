<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

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
			<% String sql = "select * from product";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(sql);
			
			while(rs.next()){			
			%>
			<div class="col-md-4">
				<h3><%=rs.getPname("p_name")%></h3>
				<p><%=rs.getDescription("p_description")%>
				<p><%=rs.getUnitPrice("p_UnitPrice")%>원
				<p><a href="./product.jsp?id=<%=product.getProductId("p_id")%>" 
				class="btn btn-secondary" role="button"> 상세 정보 &raquo;</a>
			</div>
			<%
			}
			if(rs != null) rs.close();
			if(pstmt != null) rs.close();
			if(conn != null) conn.close();
					
			%>
			
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
