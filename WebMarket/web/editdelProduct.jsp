<%@ page import="DTO.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="productDAO" class="DAO.ProductRepository"/>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>상품삭제</title>
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
            <img src="WEB-INF/resources/img/iphone6.jpg" alt="상품이미지">
            <h3><%=listOfProduct.getPname()%></h3>
            <p><%=listOfProduct.getDescription()%>
            <p><%=listOfProduct.getUnitPrice()%>원
            <p><a href="#" onclick="deleteConfirm('<%=listOfProduct.getProductId()%>')" class="btn btn-danger" role="button">삭제 &raquo;</a>
        </div>
        <%
            }
        %>
    </div>
    <hr>
</div>
<jsp:include page="footer.jsp" />
</body>

<script type="text/javascript">
    function deleteConfirm(productId) {
        if (confirm("정말 상품을 삭제하시겠습니까?") === true)
            location.href = "#?id=" + productId;
    }
</script>
</html>
