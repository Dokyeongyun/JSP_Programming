<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<style>
    .boardWriteTable {
        width: 80%;
    }
    .boardWriteTable > tbody > tr > td{
        padding: 10px;
        text-align-last: center;
    }
    .board_table_input {
        border: none;
        padding: 10px;
        background-color: cadetblue;
        color: white;
        font-size: 15px;
        font-weight: bolder;
    }
</style>
<div style="padding: 20px">
    <h1> 게시글 작성 </h1>
    <form action="boardWrite.do" method="post">
        <table class="boardWriteTable" border="1">
            <tr>
                <td style="font-weight: bold; font-size: 20px; text-align: center">제목</td>
                <td width="80%"><input style="width: 100%; height: 100%" type="text" id="title" name="title"/></td>
            </tr>
            <tr>
                <td colspan="2"><textarea id="content" name="content" style="width: 100%;" rows="25"></textarea> </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input class="board_table_input" type="submit" value="글쓰기"/>
                    <input class="board_table_input" type="reset" value="초기화"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
