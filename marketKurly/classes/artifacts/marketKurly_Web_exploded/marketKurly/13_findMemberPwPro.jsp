<%@page import="marketKurly.DAO.customerDAO"%>
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
request.setCharacterEncoding("UTF-8");
%>
<%
String name = request.getParameter("name");
String id = request.getParameter("id");
String email = request.getParameter("email");

String pw = customerDAO.instance.findPw(name, id, email);

if(pw!=null){
	%>
	<script>
		alert("회원님의 패스워드는 <%= pw %>입니다.");
		location.href="00_shopMain.jsp?center=04_customerLogin.jsp"
	</script>
	<%
	
}else{
	%>
	<script>
		alert("해당하는 회원정보가 존재하지 않습니다.");
		history.go(-1);
	</script>
	<%
}

%>
</body>
</html>