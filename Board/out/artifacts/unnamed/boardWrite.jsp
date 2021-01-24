<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div id="centerWrapper">
    <h3>새글 작성하기</h3><br>

    <form action="boardWriteProcess.jsp" method="post">
    <table class="tg" style="table-layout: fixed; width: 327px">
        <colgroup>
            <col style="width: 89px">
            <col style="width: 238px">
        </colgroup>
        <tbody>
        <tr>
            <td class="tg-wp8o">작성자</td>
            <td class="tg-0lax"><input type="text" name="writer"/> </td>
        </tr>
        <tr>
            <td class="tg-wp8o">제목</td>
            <td class="tg-0lax"><input type="text" name="subject"/></td>
        </tr>
        <tr>
            <td class="tg-wp8o">이메일</td>
            <td class="tg-0lax"><input type="text" name="email"/></td>
        </tr>
        <tr>
            <td class="tg-wp8o">비밀번호</td>
            <td class="tg-0lax"><input type="password" name="password"/></td>
        </tr>
        <tr>
            <td class="tg-wp8o">내용</td>
            <td class="tg-0lax"><textarea name="content" rows="10"></textarea></td>
        </tr>
        <tr>
            <td class="tg-73oq" colspan="2">
                <input type="submit" value="등록하기"/>
                <input type="button" value="다시 작성하기"/>
                <input type="button" value="목록으로"/>
            </td>
        </tr>
        </tbody>
    </table>
    </form>
</div>
<style type="text/css">
    div#centerWrapper{
        position: absolute;
        text-align-last: center;
        width: 100%;
        text-align: -webkit-center;
    }

    .tg  {border-collapse:collapse;border-spacing:0;}
    .tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
        overflow:hidden;padding:10px 5px;word-break:normal; vertical-align: middle; align-content: center}
    .tg .tg-wp8o{border-color:#000000;text-align:center;vertical-align:top}
    .tg .tg-0lax{text-align:left;vertical-align:top}
    .tg .tg-73oq{border-color:#000000;text-align:left;vertical-align:top}
</style>
</body>
</html>
