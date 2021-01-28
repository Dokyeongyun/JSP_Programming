<%@ page import="DAO.SubjectDAO" %>
<%@ page import="DTO.SubjectDTO" %>
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
<a href="managerMain.jsp">관리자 메인으로</a><br><br>

전체 강의 개수 : <%=list.size()%>개 <br><br>

<a href="subjectInsert.jsp">강의 등록</a><br><br>

<div align="left">
    <table border="1">
        <tr>
            <td>번호</td>
            <td>강좌명</td>
            <td>교수명</td>
            <td>학점</td>
            <td>전공</td>
            <td>강의실</td>
            <td>강의목적</td>
            <td>목표</td>
            <td>평가방법</td>
            <td>학년</td>
            <td>수강가능인원</td>
            <td>수정</td>
            <td>삭제</td>
        </tr>
        <%
            for(int i=0; i<list.size(); i++){
        %>
        <tr>
            <td><%=list.get(i).getSubjectNum()%></td>
            <td><%=list.get(i).getSubjectName()%></td>
            <td><%=list.get(i).getProfessorName()%></td>
            <td><%=list.get(i).getHakjum()%></td>
            <td><%=list.get(i).getMajor()%></td>
            <td><%=list.get(i).getRoom()%></td>
            <td><%=list.get(i).getSubjectPurpos()%></td>
            <td><%=list.get(i).getSubjectGoal()%></td>
            <td><%=list.get(i).getSubjectTest()%></td>
            <td><%=list.get(i).getGrade()%></td>
            <td><%=list.get(i).getStudentCount()%></td>
            <td><a href="#">수정</a> </td>
            <td><a href="#">삭제</a> </td>
        </tr>
        <%
            }
        %>
    </table>
</div>
</body>
</html>
