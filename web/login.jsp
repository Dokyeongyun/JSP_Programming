<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<html>
<head>
    <link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>로그인</title>
</head>
<body>
<%@ include file="menu.jsp"%>
<%!String greeting = "웹 쇼핑몰에 오신 것을 환영합니다";
    String tagline = "Welcome to Web Market!";%>
<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">
            <%=greeting%>
        </h1>
    </div>
</div>
<div class="container">
    <div class="text-center">

        <form action="loginProcess.jsp" method="post">
            <h4> Please Sign in </h4>
            <input class="text-input color-input-field" type="text" name="id"/><br>
            <input type="password" name="password"/><br>
            <input type="submit" value="Login">
        </form>

        <h3>
            <%=tagline%>
        </h3>
    </div>
    <hr>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>