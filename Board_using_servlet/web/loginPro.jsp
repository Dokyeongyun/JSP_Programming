<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${check == 1}">
    <script>
        alert('로그인 성공!');
        location.href='index.jsp'
    </script>
</c:if>
<c:if test="${check == -1}">
    <script>
        alert('로그인 실패!');
        history.back();
    </script>
</c:if>
<c:if test="${check == -2}">
    <script>
        alert('이미 로그인되어 있습니다.');
        location.href='index.jsp'
    </script>
</c:if>
</body>
</html>
