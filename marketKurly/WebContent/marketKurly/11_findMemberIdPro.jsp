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
request.setCharacterEncoding("UTF-8");
%>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");

String id = customerDAO.instance.findId(name, email);

if(id!=null){
	%>
	<script>
	alert("ȸ������ ���̵�� <%=id%>�Դϴ�.");
	location.href="00_shopMain.jsp?center=04_customerLogin.jsp";
	</script>
	<%
	
}else{
	%>
	<script>
	alert("�ش��ϴ� ȸ�������� �������� �ʽ��ϴ�.");
	history.go(-1);
	</script>
	<%
}

%>
</body>
</html>