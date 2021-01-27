<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<style>
    .table_td{
        border: 1px solid black;
    }
</style>
<%--
1. 매니저의 id 가져오기

--%>

<%
/*    String managerId = (String) session.getAttribute("managerId");
    if(managerId==null){
        response.sendRedirect("login.jsp");
    }*/
%>
<h2>수강과목 등록</h2>
<div align="left">
    <form id="subjectInsert" action="subjectInsertPro.jsp" method="post">
        <table border="1">
            <tr>
                <td>강좌명</td>
                <td class="table_td"><input type="text" size="50" maxlength="20" name="subjectName"/> </td>
            </tr>
            <tr>
                <td>교수명</td>
                <td class="table_td"><input type="text" size="50" maxlength="20" name="professorName"/> </td>
            </tr>
            <tr>
                <td>학점</td>
                <td class="table_td"><input type="text" size="50" maxlength="20" name="hakjum"/> </td>
            </tr>
            <tr>
                <td>전공</td>
                <td class="table_td">
                    <select name="major">
                        <option value="1">컴퓨터공학</option>
                        <option value="2">전자공학</option>
                        <option value="3">응용수학</option>
                        <option value="4">교양</option>
                    </select> </td>
            </tr>
            <tr>
                <td>강의실</td>
                <td class="table_td"><input type="text" size="50" maxlength="10" name="room"/> </td>
            </tr>
            <tr>
                <td>강의목적</td>
                <td class="table_td"><textarea rows="13" cols="40" name="subjectPurpose"></textarea> </td>
            </tr>
            <tr>
                <td>강의목표</td>
                <td class="table_td"><textarea rows="13" cols="40" name="subjectGoal"></textarea> </td>
            </tr>
            <tr>
                <td>평가방법</td>
                <td class="table_td"><input type="text" size="50" maxlength="20" name="subjectTest"/> </td>
            </tr>
            <tr>
                <td>학년</td>
                <td class="table_td">
                    <select name="grade">
                        <option value="1">1학년</option>
                        <option value="2">2학년</option>
                        <option value="3">3학년</option>
                        <option value="4">4학년</option>
                    </select> </td>
            </tr>
            <tr>
                <td>수강가능인원</td>
                <td class="table_td"><input type="text" size="50" maxlength="20" name="studentCount"/> </td>
            </tr>
            <tr>
                <td class="table_td" align="center" colspan="2">
                    <input type="button" value="강의등록"/>
                    <input type="button" value="다시작성"/>
                </td>
            </tr>
            <tr>
                <td class="table_td" align="right" colspan="2">
                    <input type="button" value="원본 저장하기"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
