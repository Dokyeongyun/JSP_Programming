<%@ page import="DAO.SubjectDAO" %>
<%@ page import="DAO.StudentDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String stuNum = request.getParameter("stuNum");
    String password = request.getParameter("password");

    int isManager = SubjectDAO.getInstance().managerCheck(stuNum, password);
    if(isManager == 1){
        session.setAttribute("manager", stuNum);
        response.sendRedirect("managerMain.jsp");
    }else{
        int isStudent = StudentDAO.getInstance().studentCheck(stuNum, password);
        if(isStudent == 1){
            session.setAttribute("stuNum", stuNum);
            response.sendRedirect("main.jsp");
        }else if(isStudent == 0){
%>
<script type="text/javascript">
    alert('비밀번호를 확인해주세요.');
    history.back();
</script>
<%
        }else{
%>
<script type="text/javascript">
    alert('없는 학번입니다.');
    history.back();
</script>
<%
        }
    }
%>

</body>
</html>
