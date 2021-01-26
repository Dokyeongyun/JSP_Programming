<%@ page import="DAO.StudentDAO" %>
<%@ page import="DAO.SubjectDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String stuNum = request.getParameter("stuNum");
    String password = request.getParameter("password");

    int isManager = StudentDAO.getInstance().managerCheck(stuNum, password);
    if(isManager==1){
        session.setAttribute("manager", stuNum);
        response.sendRedirect("managerMain.jsp");
    }
    int isStudent = StudentDAO.getInstance().studentCheck(stuNum, password);

%>
</body>
</html>
