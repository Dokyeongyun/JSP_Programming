<%@ page import="DAO.MemberDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>

<%
    String id = request.getParameter("id");
    String password = request.getParameter("password");

    int check = MemberDAO.instance.memberLogin(id, password);

    if(check == 1){
%>
<script>
    alert('로그인 성공!');
    location.href="index.jsp";
</script>
<%
} else{
%>
<script>
    alert('입력정보를 확인해주세요.');
    history.back();
</script>
<%
    }
%>

<jsp:include page="footer.jsp"/>

