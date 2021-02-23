<%@ page import="DAO.MemberDAO" %>
<%@ page import="DTO.MemberDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>

<%
    String password = request.getParameter("password");
    String email1 = request.getParameter("email1");
    String email2 = request.getParameter("email2");
    String birthDay = request.getParameter("birthDay");
    String phone = request.getParameter("phone");

    MemberDTO memberDTO = new MemberDTO();
    memberDTO.setId(email1+"@"+email2);
    memberDTO.setPassword(password);
    memberDTO.setBirthDay(birthDay);
    memberDTO.setPhone(phone);
    int check = MemberDAO.instance.memberJoin(memberDTO);

    if(check == 1){
%>
<script>
    alert('회원가입 성공, 로그인 후 이용해주세요.');
    location.href="login.jsp";
</script>
<%
} else{
%>
<script>
    alert('회원가입에 실패했습니다. 다시 시도해 주세요.');
    history.back();
</script>
<%
    }
%>

<jsp:include page="footer.jsp"/>

