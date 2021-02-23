<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=EUC-KR" language="java" %>
<c:set var="title" value="이디야 커피입니다."/>

<html>
<head>
    <title>${title}</title>
    <script src="//code.jquery.com/jquery.min.js"></script>
</head>
<body>
<style>
    ul {
        list-style: none;
    }
    li {
        float: left;
    }

    .header {
        width: 100%;
        height: 150px;
        margin: 20px 0;
    }
    .header_upper_left {
        float: left;
        margin-left: 150px;
    }
    .header_upper_right {
        float: right;
        margin-right: 150px;
    }
    .header_upper_left > table > tbody > tr > td {
        font-size: 13px;
        font-weight: bold;
        padding: 0 10px;
    }
    .header_upper_right > table > tbody > tr > td {
        font-size: 13px;
        font-weight: bold;
        padding: 0 10px;
    }
    .header_lower {
        float: left;
    }
    .header_lower > table {
        width: 100%;
        margin: 0 100px;
        text-align-last: center;
    }
    .header_lower > table > tbody > tr > td {
        font-size: 18px;
        padding: 20px;
    }
    body {
        margin: 0;
    }

    .center {
        width: 100%;
    }

    #subMenu > td {
        font-size: 14px;
        color: #646464;
    }
</style>

<div class="header">
    <div class="header_upper">
        <div class="header_upper_left">
            <table>
                <tr>
                    <td>브랜드 사이트</td>
                    <td width="10" align = "center"><img alt="" src="img/top1.jpg"></td>
                    <td>기업 사이트</td>
                </tr>
            </table>
        </div>
        <div class="header_upper_right">
            <table>
                <tr>
                    <td><a href="login.jsp">로그인</a></td>
                    <td width="10" align = "center"><img alt="" src="img/top1.jpg"></td>
                    <td><a href="join.jsp">회원가입</a></td>
                    <td width="10" align = "center"><img alt="" src="img/top1.jpg"></td>
                    <td>매장찾기</td>
                    <td width="10" align = "center"><img alt="" src="img/top1.jpg"></td>
                    <td>고객의 소리</td>
                </tr>
            </table>
        </div>
    </div>
    <div class="header_lower" align="center">
        <table align="center">
            <tr>
                <td style="padding: 0 0">
                    <a href="/"><img src="img/logo.png" alt="" height="140"></a>
                </td>
                <td class="menu" onmouseover="over()">메뉴</td>
                <td class="menu" onmouseover="over()">이디야멤버스</td>
                <td class="menu" onmouseover="over()">기프트카드</td>
                <td class="menu" onmouseover="over()">이디야커피랩</td>
                <td class="menu" onmouseover="over()">이디야컬쳐랩</td>
                <td class="menu" onmouseover="over()">이디야 소식</td>
            </tr>
            <tr id="subMenu" style="display: none">
                <td></td>
                <td onmouseover="over()" onmouseout="out()"><a href="showBeverage.jsp">음료</a></td>
            </tr>
        </table>
    </div>
</div>

<script>
    var subMenu = $("#subMenu");
    function over(){
        subMenu.show();
    }
    function out() {
        subMenu.hide();
    }
</script>