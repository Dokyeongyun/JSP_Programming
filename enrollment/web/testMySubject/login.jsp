<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<style>
    .table_td{
        padding: 20px;
        border: 1px solid black;
    }
</style>
<div align="center">
    <form method="post" action="loginPro.jsp">
        <table border="1">
            <tr><td class="table_td" style="text-align-last: center;font-weight: bolder;font-size: 20px;">수강신청</td></tr>
            <tr><td class="table_td"><input type="text" name="stuNum" placeholder="학번"></td></tr><br>
            <tr><td class="table_td"><input type="password" name="password" placeholder="****"></td></tr><br>
            <tr><td class="table_td"><input type="submit" style="float: right" value="로그인"></td></tr><br>
        </table>
    </form>
</div>
</body>
</html>
