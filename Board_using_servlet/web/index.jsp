<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, javax.naming.InitialContext, javax.naming.Context" %>
<html>
<head>
    <title>Title</title>
</head>
<body style="margin: 0">

<%
    String center = request.getParameter("center");
    if(center==null){
        center = "center.jsp";
    }

/*    try{
        InitialContext initCtx = new InitialContext();
        Context envContext = (Context)initCtx.lookup("java:/comp/env");
        DataSource ds = (DataSource) envContext.lookup("jdbc/seohee");
        Connection conn = ds.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT VERSIOM()");
        while(rs.next()){
            out.println("연결" + rs.getString("version()"));
        }
    }catch (Exception e){
        e.printStackTrace();
    }*/

%>

<div align="center">
    <div style="height: 10%">
        <jsp:include page="header.jsp"/>
    </div>
    <div style="height: 80%">
        <jsp:include page="<%=center%>"/>
    </div>
    <div style="height: 10%">
        <jsp:include page="footer.jsp"/>
    </div>
</div>

</body>
</html>
