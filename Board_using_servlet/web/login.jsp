<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<style>
    .loginTable > tbody > tr > td {
        padding: 10px;
        text-align: center;
        font-size: 20px;
        font-weight: bolder;
    }
    .loginTable_input {
        border: none;
        width: 100%;
        padding: 10px;
        background-color: blueviolet;
        color: white;
        font-size: 20px;
        font-weight: bolder;
    }
</style>
<div>
    <form action="login.do" method="post">
        <table class="loginTable">
            <tr><h1>로그인</h1></tr>
            <tr>
                <td>아이디</td>
                <td><input type="text" id="id" name="id"/></td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input type="password" id="password" name="password"/></td>
            </tr>
            <tr>
                <td colspan="2"><input class="loginTable_input" type="submit" value="로그인"/> </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
