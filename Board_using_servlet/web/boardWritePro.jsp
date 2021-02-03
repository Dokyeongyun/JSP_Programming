<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:if test="${check==-2}">
    <script>
        alert('로그인 후 이용하실 수 있습니다.');
        location.href='index.jsp?center=login.jsp';
    </script>
</c:if>
<c:if test="${check==1}">
    <script>
        location.href='index.jsp?center=boardWriteComplete.jsp';
    </script>
</c:if>
</body>
</html>
