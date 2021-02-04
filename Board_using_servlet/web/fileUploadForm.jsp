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

<style>
    .input-file-button{
        width: 100%;
        height: 100%;
        margin: 5px;
        padding: 6px 15px;
        background-color: mediumpurple;
        border-radius: 2px;
        color: white;
        cursor: pointer;
        font-size: 12px;
    }
    .fileUpload_table {
        border-top: 2px solid black;
        border-bottom: 2px solid black;
        padding: 10px;
    }
    .fileUpload_table > tbody > tr > td{
        font-size: 18px;
        font-weight: bold;
        padding: 5px;
    }
    .fileUpload_table_button {
        background-color: mediumpurple;
        color: white;
        border: none;
        font-size: 15px;
        font-weight: bolder;
        padding: 7px 10px;
        width: 100px;
    }
</style>

<div>
    <h1>파일 업로드</h1>
    <%--
        파일업로드를 위해선 반드시 post방식, enctype(인코딩타입) 은 Multipart/form-data여야함
    --%>
    <form action="fileUpload.do" method="post" enctype="Multipart/form-data">
        <table class="fileUpload_table">
            <tr>
                <td>제목</td>
                <td colspan="2"><input type="text" name="title" style="width: 100%"></td>
            </tr>
            <tr style="height: 50px">
                <td>FILE1</td>
                <td><input type="text" id="fileName1_value"></td>
                <td style="width: max-content">
                    <label class="input-file-button" for="fileName1">찾아보기</label>
                    <input type="file" id="fileName1" name="fileName1" style="display: none"/>
                </td>
            </tr>
<%--            <tr style="height: 50px">
                <td>FILE2</td>
                <td><input type="text" id="fileName2_value" readonly></td>
                <td style="width: max-content">
                    <label class="input-file-button" for="fileName2">찾아보기</label>
                    <input type="file" id="fileName2" name="fileName2" style="display: none"/>
                </td>
            </tr>--%>
            <tr>
                <input type="hidden" name="writer"/>
                <td colspan="3" align="center">
                    <input class="fileUpload_table_button" type="button" value="뒤로" onclick="history.back()"/>
                    <input class="fileUpload_table_button" type="submit" value="업로드"/>
                </td>
            </tr>
        </table>
    </form>
</div>

<script>
    var f1 = document.getElementById('fileName1');
    var f2 = document.getElementById('fileName2');

    var fvalue1 = document.getElementById('fileName1_value');
    var fvalue2 = document.getElementById('fileName2_value');

    f1.addEventListener('change', function(event){
        fvalue1.value = f1.value;
    });
    f2.addEventListener('change', function(event){
        fvalue2.value = f2.value;
    });
</script>
</body>
</html>
