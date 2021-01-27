<%@ page import="DTO.SubjectDTO" %>
<%@ page import="DAO.SubjectDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String subjectName = request.getParameter("subjectName");
    String professorName = request.getParameter("professorName");
    String hakjum = request.getParameter("hakjum");
    String major = request.getParameter("major");
    String room = request.getParameter("room");
    String subjectPurpos = request.getParameter("subjectPurpos");
    String subjectGoal = request.getParameter("subjectGoal");
    String subjectTest = request.getParameter("subjectTest");
    String grade = request.getParameter("grade");
    String studentCount = request.getParameter("studentCount");

    SubjectDTO subject = new SubjectDTO();
    subject.setSubjectNum(subjectName);
    subject.setProfessorName(professorName);
    subject.setHakjum(hakjum);
    subject.setMajor(major);
    subject.setRoom(room);
    subject.setSubjectPurpos(subjectPurpos);
    subject.setSubjectGoal(subjectGoal);
    subject.setSubjectTest(subjectTest);
    subject.setGrade(grade);
    subject.setStudentCount(studentCount);

    SubjectDAO.getInstance().insertSubject(subject);
    response.sendRedirect("subjectList.jsp");
%>

</body>
</html>
