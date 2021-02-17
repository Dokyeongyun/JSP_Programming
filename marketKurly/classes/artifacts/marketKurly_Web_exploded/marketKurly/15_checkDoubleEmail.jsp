<%@page import="marketKurly.customerDAO"%>
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
	String email = request.getParameter("email");
	int check = customerDAO.instance.checkDoubleId(email);
	
	if(check==1){
		%>
		<script>
		alert("중복이메일입니다.");
		history.go(-1);
		</script>
		<%
	}else{
		%>
		<script>
			alert("사용가능한 이메일입니다.");
		</script>
		<%
		response.sendRedirect("00_shopMain.jsp?center=08_join.jsp");
	}
	
	%>
</body>
</html>