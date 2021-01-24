<%@ page import="com.board.BoardDTO" %>
<%@ page import="com.board.BoardDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int boardNum = Integer.parseInt(request.getParameter("boardNum"));
    BoardDTO board = BoardDAO.getInstance().getBoardInfo(boardNum);
%>
<table style="table-layout: fixed; width: 429px">
    <colgroup>
        <col style="width: 89px">
        <col style="width: 102px">
        <col style="width: 90px">
        <col style="width: 148px">
    </colgroup>
    <tbody>
    <tr>
        <td>번호</td>
        <td><%=board.getBoardNum()%></td>
        <td>조회수</td>
        <td><%=board.getReadCount()%></td>
    </tr>
    <tr>
        <td>작성자</td>
        <td><%=board.getWriter()%></td>
        <td>이메일</td>
        <td><%=board.getEmail()%></td>
    </tr>
    <tr>
        <td>제목</td>
        <td><%=board.getSubject()%></td>
        <td>작성일</td>
        <td><%=board.getRegDate()%></td>
    </tr>
    <tr>
        <td>내용</td>
        <td colspan="3"><%=board.getContent()%></td>
    </tr>
    <tr>
        <td colspan="4">
            <button type="button" value="수정하기"></button>
            <button type="button" value="삭제하기"></button>
            <button type="button" value="목록으로"></button>
        </td>
    </tr>
    </tbody>
</table>
</body>
</html>
