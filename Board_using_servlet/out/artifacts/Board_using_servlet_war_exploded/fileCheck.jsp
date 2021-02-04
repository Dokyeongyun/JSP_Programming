<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    request.setCharacterEncoding("UTF-8");

    String name = request.getParameter("name");
    String subject = request.getParameter("subject");
    String fileName = request.getParameter("fileName");
    String originalName = request.getParameter("originalName");

    out.println(name+" "+subject+" "+fileName+" "+originalName);
%>
<h3>업로드 파일 확인</h3>
작성자 : <%=name%><br>
제목 : <%=subject%><br>
파일 다운로드 : <a id="download" href="#"><%=originalName%></a>

<script type="text/javascript">
    document.getElementById("download").addEventListener("click", function(event) {
        event.preventDefault(); // a 태그의 기본동작을 막음
        event.stopPropagation();

        // fileName을 UTF-8로 인코딩후 쿼리 문자열에 포함시킨다. (파일이름이 한글일 경우 쿼리파라미터에 제대로 안들어가기 때문)
        var fileName = encodeURIComponent("<%=fileName%>");
        window.location.href = "fileDownload.jsp?fileName="+fileName;
    });
</script>
</body>
</html>
