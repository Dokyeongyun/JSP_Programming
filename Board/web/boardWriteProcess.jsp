<%@ page import="com.board.BoardDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="board" class="com.board.BoardDTO">
    <jsp:setProperty name="board" property="*"/>
</jsp:useBean>

<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    BoardDAO.getInstance().boardWrite(board);
    response.sendRedirect("boardList.jsp");
%>

</body>
</html>
