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
	String id = request.getParameter("id");
	int check = customerDAO.instance.checkDoubleId(id);
	
	if(check==1){
		%>
		<script>
		alert("�ߺ����̵��Դϴ�.");
		history.go(-1);
		</script>
		<%
	}else{
		%>
		<script>
			alert("��밡���� ���̵��Դϴ�.");
			location.href="00_shopMain.jsp?center=08_join.jsp";
		</script>
		<%
	}
	
	%>
</body>
</html>