<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>

<div class="center" align="center">
    <div>
        <img src="img/join.PNG" alt="" height="620" width="100%">
    </div>
    <form action="joinPro.jsp" method="post">
        <div class="join_content">
            <div class="join_txt">회원정보입력</div>
            <div style="margin:30px 0;">
                <table class="join_form_table">
                    <tr>
                        <td>아이디(이메일)</td>
                        <td>
                            <input class="join_content_input" type="text" name="email1"/> @
                            <input class="join_content_input" type="text" name="email2"/>
                            <select class="join_content_input">
                                <option value="">직접입력</option>
                                <option value="naver.com">naver.com</option>
                                <option value="daum.net">daum.net</option>
                                <option value="nate.com">nate.com</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>이름</td>
                        <td><input class="join_content_input" type="text" name="name" placeholder="이름"/></td>
                    </tr>
                    <tr>
                        <td>휴대폰</td>
                        <td><input class="join_content_input" type="text" name="phone" placeholder="휴대폰"/></td>
                    </tr>
                    <tr>
                        <td>비밀번호</td>
                        <td><input class="join_content_input" type="password" name="password" placeholder="비밀번호"/></td>
                    </tr>
                    <tr>
                        <td>비밀번호 확인</td>
                        <td><input class="join_content_input" type="password" name="passwordChk" placeholder="비밀번호 확인"/></td>
                    </tr>
                    <tr>
                        <td>생년월일</td>
                        <td><input class="join_content_input" type="text" name="birthDay" placeholder="생년월일"/></td>
                    </tr>
                </table>
            </div>
            <input class="join_content_button" type="submit" value="가입하기"/>
        </div>
    </form>
</div>

<jsp:include page="footer.jsp"/>

<style>
    .join_content {
        margin: 50px 200px;
        border: 1px solid #ddd;
        padding: 50px 100px;
    }
    .join_txt {
        font-size: 30px;
        margin-bottom: 20px;
    }
    .join_content_input {
        width: 250px;
        height: 60px;
        border: 1px solid #ddd;
        padding: 10px;
    }
    .join_content_button {
        width: 500px;
        height: 60px;
        border: none;
        background-color: #20488f;
        color: white;
        font-weight: bold;
        font-size: 20px;
    }
    .join_form_table > tbody > tr > td{
        padding-right: 50px;
    }
</style>

