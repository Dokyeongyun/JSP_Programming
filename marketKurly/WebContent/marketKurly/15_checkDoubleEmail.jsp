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
		alert("�ߺ��̸����Դϴ�.");
		history.go(-1);
		</script>
		<%
	}else{
		%>
		<script>
			alert("��밡���� �̸����Դϴ�.");
		</script>
		<%
		response.sendRedirect("00_shopMain.jsp?center=08_join.jsp");
	}
	
	%>
</body>
</html>