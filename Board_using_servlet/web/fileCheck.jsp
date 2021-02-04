<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    request.setCharacterEncoding("UTF-8");

    String writer = (String) request.getAttribute("writer");
    String title = (String) request.getAttribute("title");
    String fileName = (String) request.getAttribute("fileName");
    String originalName = (String) request.getAttribute("originalName");

%>
<h1>업로드 파일 확인</h1>

<style>
    .fileCheck_table {
        border-top: 3px solid black;
        border-bottom: 3px solid black;
    }
    .fileCheck_table > tbody > tr > td{
        padding: 10px 20px;
        font-weight: 400;
        font-size: 20px;
    }
</style>
<table class="fileCheck_table">
    <tr>
        <td>작성자</td>
        <td><%=writer%></td>
    </tr>
    <tr>
        <td>제목</td>
        <td><%=title%></td>
    </tr>
    <tr>
        <td>파일 다운로드</td>
        <td><a id="download" href="#"><%=originalName%></a></td>
    </tr>
</table>
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
