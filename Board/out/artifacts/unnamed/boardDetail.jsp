<%@ page import="com.board.BoardDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int boardNum = Integer.parseInt(request.getParameter("boardNum"));
    System.out.println(boardNum);

    out.println(BoardDAO.getInstance().getBoardInfo(boardNum));
%>
</body>
</html>
