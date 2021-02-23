<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>

<div class="center" align="center">
    <div class="login_bg">
        <div class="login_content">
            <div class="login_content_txt1">로그인</div>
            <div class="login_content_txt2">Welcome, Ediya Coffee</div>
            <div class="login_content_txt3">이디야커피에 오신 것을 환영합니다.</div>

            <form action="loginPro.jsp" method="post">
                <div class="login_input_content">
                    <div class="login_input_box">
                        <input type="text" name="id" placeholder="이메일을 입력하세요"/>
                    </div>
                    <div class="login_input_box">
                        <input type="password" name="password" placeholder="비밀번호를 입력하세요"/>
                    </div>
                    <div>
                        <input type="checkbox" name="emailSave"> 이메일 저장
                    </div>
                    <div class="login_input_box2">
                        <input type="submit" value="로그인"/>
                    </div>
                    <div class="login_content_button">
                        <input type="button" onclick="location.href='join.jsp'" value="회원가입"/>
                        <input type="button" value="이메일 찾기"/>
                        <input type="button" value="비밀번호 찾기"/>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"/>

<style>
    .login_bg {
        height: max-content;
        padding-bottom: 50px;
        background-color: burlywood;
    }
    .login_content {
        margin: 0 300px;
        padding-top: 150px;
    }
    .login_content_txt1 {
        font-size: 100px;
        font-weight: 50;
        color: white;
        margin-bottom: 30px;
    }
    .login_content_txt2 {
        font-size: 40px;
        font-weight: bold;
        color: white;
        margin-bottom: 15px;
    }
    .login_content_txt3 {
        font-size: 20px;
        font-weight: 50;
        color: white;
        margin-bottom: 30px;
    }
    .login_input_content {
        height: fit-content;
        background-color: white;
        padding: 30px;
        margin: 20px 0;
    }
    .login_input_box {
        margin: 20px 200px;
    }
    .login_input_box2 {
        margin: 20px 200px;
    }
    .login_input_box > input{
        width: 100%;
        height: 60px;
        padding-left: 20px;
        border: 1px solid #ddd;
    }
    .login_input_box2 > input{
        width: 100%;
        height: 60px;
        padding-left: 20px;
        border: 1px solid #ddd;
        color: white;
        background-color: #20488f;
        font-size: 20px;
        font-weight: bolder;
    }
    .login_content_button {
        margin: 20px 200px;
    }
    .login_content_button > input {
        border: 1px solid #ddd;
        background-color: white;
        padding: 20px;
        width: 205px;
    }
</style>