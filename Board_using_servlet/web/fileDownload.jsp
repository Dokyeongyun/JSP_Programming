<%@ page import="java.io.File" %>
<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String fileName = request.getParameter("fileName");
    String savePath = "uploadFile"; // 상대경로
    String realPath = request.getRealPath(savePath);

    System.out.println("다운로드 폴더 상대 경로 : "+savePath);
    System.out.println("다운로드 폴더 절대 경로 : "+realPath);
    System.out.println("파일 이름 : "+fileName);

    String filePath = realPath+"\\"+fileName;

    File outputFile = new File(filePath);
    int fileSize = 1024*1024*10; // 10MB
    byte[] temp = new byte[fileSize];

    FileInputStream fis = new FileInputStream(outputFile);

    String mimeType = request.getServletContext().getMimeType(filePath);
    System.out.println("파일 타입 : "+mimeType);

    if(mimeType == null){
        mimeType = "application.octec-stream";
    }

    // 다운로드 타입 지정
    response.setContentType(mimeType);
    // 한글 파일명을 인코딩하여 쿼리 파라미터에 정상적으로 들어가도록
    String encodedFileName = new String(fileName.getBytes(StandardCharsets.UTF_8));
    response.setHeader("Content-Disposition", "attatchment;filename="+encodedFileName);

    // 브라우저에 띄우기
    ServletOutputStream os = response.getOutputStream();
    int numRead = 0;

    while((numRead = fis.read(temp, 0, temp.length)) != -1 ){
        os.write(temp, 0, numRead);
    }
    os.flush();
    os.close();
    fis.close();
%>

</body>
</html>
