<%@page import="marketKurly.DAO.managerDAO"%>
<%@page import="marketKurly.DTO.managerDTO"%>
<%@page import="marketKurly.DAO.buyDAO"%>
<%@page import="marketKurly.DAO.cartDAO"%>
<%@page import="marketKurly.DAO.customerDAO"%>
<%@page import="marketKurly.DTO.customerDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
		 pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
</head>
<body>
<%
	String id=(String)session.getAttribute("id");
	String managerId=(String)session.getAttribute("managerId");

	customerDTO customerbean = buyDAO.instance.getCustomerInfo(id);
	managerDTO managerbean = managerDAO.instance.getManagerInfo(managerId);
	String name="";
%>
<div align="right">
	<font size="2">
		<%
			if(id==null && managerId==null){
		%>
		<a href = "join.do" style="text-decoration: none">회원가입</a>&nbsp;
		<img alt="" src="img/top1.jpg"> &nbsp;
		<a href = "login.do" style="text-decoration: none">로그인</a>&nbsp;
		<%
		}else{
			if(id!=null){
				name = customerbean.getName();
				System.out.println("로그인 아이디 확인용 = " + name);
		%>
		<%=name %>님 &nbsp;  <img alt="" src="img/top1.jpg"> &nbsp;
		<a href = "00_shopMain.jsp?center=24_orderListCheck.jsp" style="text-decoration: none">주문확인</a>&nbsp;
		<%
		}else if(managerId!=null){
			name = managerbean.getName();
		%>
		<%=name %>님 &nbsp;  <img alt="" src="img/top1.jpg"> &nbsp;
		<a href = "00_shopMain.jsp?center=28_itemInfoUpdate.jsp" style="text-decoration: none">상품수정</a>&nbsp;
		<img alt="" src="img/top1.jpg"> &nbsp;
		<a href = "00_shopMain.jsp?center=34_checkAllOrder.jsp" style="text-decoration: none">주문확인</a>&nbsp;
		<%
			}
		%>
		<img alt="" src="img/top1.jpg"> &nbsp;
		<a href = "logout.do" style="text-decoration: none">로그아웃</a>&nbsp;
		<%
			}
		%>
		<img alt="" src="img/top1.jpg"> &nbsp;
		<a href = "customerCenter.do" style="text-decoration: none">고객센터</a>&nbsp;
	</font>
</div>
<div align="center">
	<a href="main.do">
		<img src="img/logo.png" alt="" height="80">
	</a>
</div>
<br>
<div align="center">
	<table>
		<tr height="50">
			<td width = "180" align = "center" id="dropdown">
				<font size="3" color="black"><a href = "showAllCategory.do" style="text-decoration: none"><b>전체상품 보기</b></a></font>
			</td>
			<td width="10" align = "center"><img alt="" src="img/top1.jpg"></td>

			<td width = "180" align = "center">
				<font size="3" color="black"><a href = "showNewItem.do" style="text-decoration: none"><b>신상품</b></a></font>
			</td>
			<td width="10" align = "center"><img alt="" src="img/top1.jpg"></td>

			<td width = "180" align = "center">
				<font size="3" color="black"><a href = "showBestItem.do" style="text-decoration: none"><b>베스트</b></a></font>
			</td>
			<td width="10" align = "center"><img alt="" src="img/top1.jpg"></td>

			<td width = "180" align = "center">
				<font size="3" color="black"><a href = "showDiscountedItem.do" style="text-decoration: none"><b>알뜰쇼핑</b></a></font>
			</td>
			<td width="10" align = "center"><img alt="" src="img/top1.jpg"></td>

			<td width = "180" align = "center">
				<font size="3" color="black"><a href = "#" style="text-decoration: none"><b>이벤트</b></a></font>
			</td>

			<td width = "40" align = "center">
				<a href="cartInfo.do"><img alt="" src="img/cart.png" width="30"></a>
			</td>
		</tr>
	</table>
</div>
</body>
</html>