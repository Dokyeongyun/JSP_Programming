<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<style>
    .board_table {
        width: 70%;
    }
    .board_table > tbody > tr > td{
        padding: 10px;
        text-align: center;
    }
    .board_table > thead > tr {
        text-align: center;
        padding: 10px;
        font-weight: bold;
    }
    .board_table > thead > tr > td {
        padding: 10px;
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
    <h1> 게시판 </h1>
    <table border="1" class="board_table">
        <thead>
        <tr>
            <td>글 번호</td>
            <td style="width: 60%;">글 제목</td>
            <td>작성자</td>
            <td>조회수</td>
            <td>등록시간</td>
        </tr>
        </thead>
        <c:forEach var="i" items="${list}">
            <tr>
                <td>${i.num}</td>
                <td style="text-align: left;"><a href="boardDetail.do?num=${i.num}">${i.title}</a></td>
                <td>${i.writer}</td>
                <td>${i.hit}</td>
                <td>${i.regDate}</td>
            </tr>
        </c:forEach>
    </table>

    <div align="right" style="width: 70%; margin-top: 20px">
        <form action="index.jsp?center=boardWrite.jsp" method="post">
            <input class="board_table_input" type="submit" value="글 쓰기"/>
        </form>

    </div>
</div>
</body>
</html>
