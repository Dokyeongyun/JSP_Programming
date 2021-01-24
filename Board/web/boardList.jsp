<%@ page import="java.util.ArrayList" %>
<%@ page import="com.board.BoardDTO" %>
<%@ page import="com.board.BoardDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>게시글 목록</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");

    ArrayList<BoardDTO> list = BoardDAO.getInstance().getBoardList();
    int count = BoardDAO.getInstance().getAllCount();
%>
<div align="center">
    <h2>게시글 목록 (<%=count%> 개)</h2>
    <table border="1">
        <tr>
            <td colspan="5"><a href="index.jsp">메인으로</a></td>
        </tr>
        <tr>
            <td colspan="5"><a href="boardWrite.jsp">새 게시글 작성</a></td>
        </tr>
        <tr>
            <td colspan="5"><a href="boardDeleteAll.jsp">전체 게시글 삭제</a></td>
        </tr>
        <tr>
            <td>번호</td>
            <td>작성자</td>
            <td>제목</td>
            <td>작성일자</td>
            <td>조회수</td>
        </tr>

        <%
            for (BoardDTO board : list) {
        %>
        <tr>
            <td><%=board.getBoardNum()%></td>
            <td><%=board.getWriter()%></td>
            <td><a href="boardDetail.jsp?boardNum=<%=board.getBoardNum()%>"><%=board.getSubject()%></a></td>
            <td><%=board.getRegDate()%></td>
            <td><%=board.getReadCount()%></td>
        </tr>
        <%
            }
        %>
    </table>
</div>
</body>
</html>
