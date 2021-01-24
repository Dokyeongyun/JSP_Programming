<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    session.invalidate();
%>
<script>
    alert('로그아웃 되었습니다. 감사합니다.');
    location.href="welcome.jsp";
</script>
</body>
</html>
