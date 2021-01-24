<%@ page import="DTO.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="productDAO" class="DAO.ProductRepository" scope="session" />

<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>상품수정</title>
</head>
<body>
<jsp:include page="menu.jsp" />
<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">상품수정</h1>
    </div>
</div>
<%
    ArrayList<Product> listOfProducts = productDAO.getAllProducts();
%>
<div class="container">
    <div class="row" align="center">
        <%
            for (Product listOfProduct : listOfProducts) {
        %>
        <div class="col-md-4">
            <img src="C:\Users\aserv\IdeaProjects\WebMarket\web\WEB-INF\resources\img\iphone6.jpg" alt="상품이미지">
            <h3><%=listOfProduct.getPname()%></h3>
            <p><%=listOfProduct.getDescription()%>
            <p><%=listOfProduct.getUnitPrice()%>원
            <p>	<a href="#?id=<%=listOfProduct.getProductId()%>" class="btn btn-success" role="button"> 수정 &raquo;</a>
        </div>
        <%
            }
        %>
    </div>
    <hr>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>
