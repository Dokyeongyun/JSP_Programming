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
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	String address = request.getParameter("address");
	String email = request.getParameter("email");
	
	int check = -1;
	
	if(check==-1){
		check = customerDAO.instance.checkDoubleId(id);
		if(check==1){
			%>
			<script>
				alert("���̵� �ߺ��Դϴ�.");
				history.go(-1);
			</script>
			<%
		}else{
			check = customerDAO.instance.checkDoubleEmail(email);
			if(check==2){
				%>
				<script>
					alert("�̸��� �ߺ��Դϴ�.");
					history.go(-1);
				</script>
				<%
			}else{
				customerDAO.instance.insertMember(id, pw, name, tel, address, email);
				%>
				<script>
				alert("ȸ�������� �Ϸ�Ǿ����ϴ�.");
				location.href="00_shopMain.jsp";
				</script>
				<% 
			}
		}
	}
			
	%>
	
	
	
		

	
	
</body>
</html>