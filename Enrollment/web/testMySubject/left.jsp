<%@ page import="DAO.StudentDAO" %>
<%@ page import="DTO.StudentDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String stuNum = (String) session.getAttribute("stuNum");
    StudentDTO student = StudentDAO.getInstance().getStudent(stuNum);

    int major = student.getMajor();
    String temp = "";
    if(major==1){
        temp = "컴퓨터공학";
    }else if(major==2){
        temp = "전자공학과";
    }else if(major==3){
        temp = "응용수학과";
    }
%>
</body>
<table border="1">
    <tr>
        <td colspan="2" bgcolor="#00FFFF">2020년 2학기 수강신청</td>
    </tr>
    <tr>
        <td bgcolor="00FFFF">이름</td>
        <td><%=student.getName()%></td>
    </tr>
    <tr>
        <td bgcolor="00FFFF">학번</td>
        <td><%=student.getStuNum()%></td>
    </tr>
    <tr>
        <td bgcolor="00FFFF">학부(과)</td>
        <td><%=temp%></td>
    </tr>
    <tr>
        <td bgcolor="00FFFF">학년</td>
        <td><%=student.getGrade()%></td>
    </tr>
    <tr>
        <td bgcolor="00FFFF">최소신청학점</td>
        <%if(student.getGrade()==4){%>
        <td>9</td>
        <%}else{%>
        <td>12</td>
        <%}%>
    </tr>
    <tr>
        <td bgcolor="00FFFF">최대신청학점</td>
        <td>19</td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <input type="button" value="로그아웃" onclick="window.location.href='logout.jsp'"/>
        </td>
    </tr>
</table>
</html>
