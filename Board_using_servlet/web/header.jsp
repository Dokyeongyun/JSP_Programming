<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<style>
    .top_style {
        height: 80px;
        background-color: aliceblue;
        opacity: 50%;
    }
    .header_table {
        height: inherit;
        border-bottom: 3px solid #ddd;
        font-size: 20px;
        font-weight: bolder;
        color: mediumpurple;
    }
    .header_table > tbody > tr >td {
        padding: 10px;
    }

    a{ text-decoration: none}

</style>
<div align="center" class="top_style">
    <table align="center" class="header_table">
        <tr>
            <td><a href="index.jsp?center=login.jsp">LOGIN</a></td>
            <td><a href="index.jsp?center=join.jsp">JOIN</a></td>
            <td><a href="board.do">BOARD</a></td>
            <td><a href="index.jsp?center=fileUploadForm.jsp">UPLOAD</a></td>
            <td><a href="index.jsp?center=fileUploadForm.jsp">DOWNLOADS</a></td>
        </tr>
    </table>
</div>

</body>
</html>
