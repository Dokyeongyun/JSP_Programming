<%@page import="marketKurly.managerDAO"%>
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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	int check = managerDAO.instance.checkManager(id, pw);
	
	if(check==1){
		session.setAttribute("managerId", id);
		response.sendRedirect("00_shopMain.jsp");
	}else{
		check=customerDAO.instance.userCheck(id, pw);
		if(check==1){
			session.setAttribute("id", id);
			response.sendRedirect("00_shopMain.jsp");
		}
		%>
		<script>
		alert("아이디와 비밀번호를 확인해주세요");
		history.go(-1);
		</script>
		<%
	}
	
	%>
</body>
</html>