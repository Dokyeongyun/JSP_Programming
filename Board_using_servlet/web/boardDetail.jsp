<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    .boardWriteTable > tbody > tr > td {
        padding: 10px;
        text-align-last: center;
    }
    .title {
        font-weight: bold; font-size: 20px; text-align: center
    }
    .content {
        text-align-last: left
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
    <h1> 게시글 읽기 </h1>
    <form action="boardWrite.do" method="post">
        <table class="boardWriteTable" border="1">
            <tr>
                <td class="title">작성자</td>
                <td><div class="content">${boardDetail.writer}</div></td>
                <td class="title">조회수</td>
                <td><div class="content">${boardDetail.hit}</div></td>
                <td class="title">등록시간</td>
                <td><div class="content">${boardDetail.regDate}</div></td>
            </tr>
            <tr>
                <td class="title">제목</td>
                <td colspan="6"><div class="content">${boardDetail.title}</div></td>
            </tr>
            <tr>
                <td colspan="6">
                    <div style="text-align-last: left; min-height: 300px">${boardDetail.content}</div>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <c:if test="${sessionScope.get('loginUser') eq boardDetail.writer}">
                        <input class="board_table_input" type="submit" value="수정하기" onclick="location.href='boardModify.do?num=${boardDetail.num}'"/>
                        <input class="board_table_input" type="submit" value="삭제하기" onclick="location.href='boardDelete.do?num=${boardDetail.num}'"/>
                    </c:if>
                    <c:if test="${sessionScope.get('loginUser') ne boardDetail.writer}">
                        <input class="board_table_input" value="댓글쓰기"/>
                        <input class="board_table_input" value="목록으로" onclick="location.href='board.do'"/>
                    </c:if>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
