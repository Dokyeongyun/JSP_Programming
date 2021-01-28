<%@ page import="DTO.SubjectDTO" %>
<%@ page import="DAO.SubjectDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    ArrayList<SubjectDTO> list = SubjectDAO.getInstance().getSubjectList();
%>
<table border="1">
    <tr>
        <td>강의명</td>
        <td>교수명</td>
        <td>학점</td>
        <td>전공</td>
        <td>학년</td>
        <td>강의계획서</td>
    </tr>
    <%
        for(int i=0; i<list.size(); i++){
    %>
    <tr>
        <td><%=list.get(i).getSubjectName()%></td>
        <td><%=list.get(i).getProfessorName()%></td>
        <td><%=list.get(i).getHakjum()%></td>
        <td>
            <%
                String temp = "";
                String major = list.get(i).getMajor();
                if(major.equals("1")){
                    temp = "컴퓨터공학과";
                }else if(major.equals("2")){
                    temp = "전자공학과";
                }else if(major.equals("3")) {
                    temp = "응용수학과";
                }
            %><%=temp%></td>
        <td><%=list.get(i).getGrade()%></td>
        <td><input type="button" value="강의계획서"></td>
    </tr>
    <%
        }
    %>
</table>

</body>
</html>
