<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
 파일 업로드
   - 웹 브라우저에서 서버로 파일을 전송하여 서버에 저장하는 것
   - 파일전송시 jsp페이지에서 form 사용
   - 전송된 파일 서버에 저장하기 위해서 오픈 라이브러리

 MultipartRequest 클래스 이용
  - 웹 페이지에서 서버로 업로드되는 파일 자체만 다룸
  - 일반 데이터와 파일 데이터를 구별하여 파일 데이터만 접근
  - 한글 인코딩을 얻기 쉽고, 서버 파일 폴더의 중복적인 이름이 있으면 자동으로 덮어씀
  - jsp 페이지 page 디렉티브 태그에서 com.oreilly.servlet.*

 파일 업로드 시 form 태그 규칙
  - method 속성은 반드시 post
  - get 방식은 데이터를 전송할 수 있는 개수의 제한이 있어 데이터전송이 원활하게 이루어지지 않을 수 있음
  - enctype // encoded type 반드시 multipart/form-data로 설정
  - action 속성 파일 업로드를 처리할 jsp파일로 설정
  - input 속성 type = file
--%>

<center>
    <h3>파일 업로드 폼</h3>
    <%--
        파일업로드를 위해선 반드시 post방식, enctype(인코딩타입) 은 Multipart/form-data여야함
    --%>
    <form action="fileUpload.jsp" method="post" enctype="Multipart/form-data">
        작성자 : <input type="text" name="name"/><br>
        제목 : <input type="text" name="subject"/><br>
        파일명 : <input type="file" name="fileName"/><br>
        <input type="submit" value="전송"/>
        <input type="reset" value="취소"/>
    </form>
</center>
</body>
</html>
