<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<style>
    .joinTable > tbody > tr > td {
        padding: 10px;
        text-align: center;
        font-size: 20px;
        font-weight: bolder;
    }
    .joinTable_input {
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
    <form action="join.do" method="post">
        <table class="joinTable">
            <tr><h1>회원가입</h1></tr>
            <tr>
                <td>아이디</td>
                <td><input type="text" id="id" name="id"/></td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input type="password" id="password" name="password"/></td>
            </tr>
            <tr>
                <td>이름</td>
                <td><input type="text" id="name" name="name"/></td>
            </tr>
            <tr>
                <td>닉네임</td>
                <td><input type="text" id="nickName" name="nickName"/></td>
            </tr>
            <tr>
                <td colspan="2"><input class="joinTable_input" type="submit" value="회원가입"/> </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
