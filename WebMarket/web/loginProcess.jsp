<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String dbId = "Do";
    String dbPassword = "1234";

    String inputId = request.getParameter("id");
    String inputPassword = request.getParameter("password");

    if(inputId.equals(dbId)){
        if (inputPassword.equals(dbPassword)) {
            session.setAttribute("id", inputId);

%>
<script>
    alert('로그인 되었습니다. \n메인페이지로 이동합니다.');
    location.href="welcome.jsp";
</script>
<%
}else{
%>
<script>
    alert('비밀번호를 잘못 입력하셨습니다.');
    history.back();
</script>
<%
    }
}else{
%>
<script>
    alert('없는 아이디입니다.');
    history.back();
</script>
<%
    }

%>
</body>
</html>
