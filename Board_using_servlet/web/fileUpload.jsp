<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.io.File" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    // request.getRealPath("상대경로")를 이용해 파일을 저장할 절대 경로를 구해옴
    // 운영체제 및 프로젝트가 위치할 환경에 따라 경로가 다름
    String realPath = request.getRealPath("/uploadFile");
    out.println("절대경로: "+realPath+"<br>");

    // 한 번에 올릴 수 있는 파일 용량 : 10Mb
    int maxSize = 1024*1024*10;

    String name = "";
    String subject = "";

    String fileName = "";
    String originalName = "";

    long fileSize = 0;
    String fileType = "";

    MultipartRequest multi = null;

    try {
        multi = new MultipartRequest(request, realPath, maxSize, "UTF-8", new DefaultFileRenamePolicy());

        name = multi.getParameter("name");
        subject = multi.getParameter("subject");

        // 전송한 전체 파일의 이름을 가져옴
        Enumeration files = multi.getFileNames();

        while(files.hasMoreElements()){
            // 파일 이름
            String file = (String) files.nextElement();
            // 실제 파일이름
            originalName = multi.getOriginalFileName(file);
            // 파일명이 중복될 경우 중복정책에 의해 (ex 1,2,3...) Unique하게 파일명을 생성
            fileName = multi.getFilesystemName(file);
            // 파일의 타입 가져오기
            fileType = multi.getContentType(file);
            // 실제 파일을 가져옴
            File file1 = multi.getFile(file);
            // 파일 사이즈
            fileSize = file.length();
        }
    } catch (Exception e){
        e.printStackTrace();
    }
%>
<form action="fileCheck.jsp" method="post" name="fileCheckFormName">
    <input type="hidden" value="<%=name%>" name="name">
    <input type="hidden" value="<%=subject%>" name="subject">
    <input type="hidden" value="<%=fileName%>" name="fileName">
    <input type="hidden" value="<%=originalName%>" name="originalName">
</form>
<a href="#" onclick="javascript:document.fileCheckFormName.submit()">
    업로드 파일 확인하기 : <%=fileName%>
</a>
</body>
</html>
