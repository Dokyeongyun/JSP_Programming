<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>공지사항</title>
</head>
<body>
<%
    String stuNum = (String) session.getAttribute("stuNum");
    if(stuNum==null){
        response.sendRedirect("login.jsp");
    }
%>

<div>
    <h1>공지사항</h1>
    <table border="1">
        <tr>
            <td colspan="4" align="center"><h1>수강신청 기간</h1></td>
        </tr>
        <tr>
            <td align="center" width="200">구분</td>
            <td align="center" width="200">대상</td>
            <td align="center" width="200">수강신청일시</td>
            <td align="center" width="200">수강인원배분비율</td>
        </tr>
        <tr>
            <td align="center" width="200">수강신청</td>
            <td align="center" width="200">전체 대학생</td>
            <td align="center" width="200">2021.01.28(목) 10:00~17:00 까지</td>
            <td align="center" width="200">100%</td>
        </tr>
    </table>
</div>
</body>
</html>
