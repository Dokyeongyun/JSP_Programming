<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>

<div class="center" align="center">
    <div>
        <img src="img/beverage.PNG" alt="" height="300" width="100%">
    </div>

    <div class="beverage_content">
        <h1>추천 상품</h1><hr>

        <div class="beverage_recommend">
            <table>
                <tr>
                    <td width="33%"><img src="img/beverage/골든슈배너.PNG" alt="" height="340" width="288"></td>
                    <td width="33%"><img src="img/beverage/딸기라떼.PNG" alt="" height="340" width="243"></td>
                    <td width="33%"><img src="img/beverage/딸기에이드.PNG" alt="" height="340" width="226"></td>
                </tr>
                <tr>
                    <td> 골든슈배너 </td>
                    <td> 딸기라떼 </td>
                    <td> 딸기에이드 </td>
                </tr>
            </table>
        </div>

        <div>
            <table class="beverage_search_form">
                <tr>
                    <td>메뉴 검색</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><input type="text" name="searchBeverage"/></td>
                </tr>
                <tr style="height: 10px; background-color: #ddd"></tr>
                <tr>
                    <td><input type="checkbox" name="coffeeChk"/> COFFEE</td>
                    <td><input type="checkbox" name="coffeeChk"/> BEVERAGE</td>
                    <td><input type="checkbox" name="coffeeChk"/> BLENDING TEA</td>
                    <td><input type="checkbox" name="coffeeChk"/> FLATCCINO</td>
                    <td><input type="checkbox" name="coffeeChk"/> SHAKE & ADE</td>
                    <td><input type="checkbox" name="coffeeChk"/> ICE FLAKES</td>
                    <td><input type="checkbox" name="coffeeChk"/> RTD</td>
                </tr>
            </table>
        </div>

        <div class="searchResult">
            <table>
                <tr>
                    <td width="25%"><img src="img/beverage/복숭아망고음료.PNG" alt="" height="340" width="284"></td>
                    <td width="25%"><img src="img/beverage/복숭아요거트.PNG" alt="" height="340" width="255"></td>
                    <td width="25%"><img src="img/beverage/아이스아메.PNG" alt="" height="340" width="287"></td>
                    <td width="25%"><img src="img/beverage/이디야당근쥬스.PNG" alt="" height="340" width="285"></td>
                </tr>
                <tr>
                    <td> 복숭아망고음료 </td>
                    <td> 복숭아망고음료 </td>
                    <td> 아이스아메리카노 </td>
                    <td> 이디야당근쥬스 </td>
                </tr>
            </table>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"/>

<style>
    .beverage_content {
        margin: 30px 200px;
    }
    .beverage_recommend {
        padding: 40px;
    }
    .beverage_recommend > table {
        width: 100%;
    }
    .beverage_recommend > table > tbody > tr > td {
        text-align-last: center;
        margin-bottom: 20px;
        font-size: 15px;
        font-weight: bold;
    }
    .beverage_search_form{
        margin-top: 50px;
        margin-bottom: 50px;
        border: 1px solid #ddd;
        padding: 20px 40px;
    }
    .beverage_search_form > tbody > tr > td {
        font-weight: bold;
        padding: 10px 20px;
    }
    .searchResult {
        margin-bottom: 30px;
    }
    .searchResult > table > tbody > tr > td {
        text-align-last: center;
        font-size: 15px;
        font-weight: bold;
    }
</style>
