<%@page import="marketKurly.DAO.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
%>

<%
int num = Integer.parseInt(request.getParameter("num"));
String pw = request.getParameter("pw");

int check = boardDAO.instance.checkPwForRead(num, pw);

if(check==1){
	%>
	<script>
	location.href="00_shopMain.jsp?center=35_showBoardContent.jsp?num=<%=num%>";
	</script>
	<%
}else{
	%>
	<script>
	alert("비밀번호가 다릅니다.");
	location.href="00_shopMain.jsp?center=07_customerCenter.jsp";
	</script>
	<%
}


%>
</body>
</html>