<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>수강 신청 사이트</title>
</head>
<%
    String stuNum = (String) session.getAttribute("stuNum");
    if(stuNum==null){
        response.sendRedirect("login.jsp");
    }
    String center = request.getParameter("center");
    if(center==null){
        center = "notice.jsp";
    }
%>
<body>
<table>
    <tr align="center" height="200">
        <td align="center" width="200" rowspan="2">
            <jsp:include page="left.jsp"/>
        </td>
        <td align="center" width="800">
            <jsp:include page="top.jsp"/>
        </td>
    </tr>
    <tr height="200">
        <td align="center" width="800">
            <jsp:include page="<%=center%>"/>
        </td>
    </tr>
</table>
</body>
</html>
