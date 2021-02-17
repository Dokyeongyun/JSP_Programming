<%@page import="marketKurly.boardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="marketKurly.boardDAO"%>
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
			String id=(String)session.getAttribute("id");
			String managerId=(String)session.getAttribute("managerId");

			int pageSize= 10;
			String pageNum = request.getParameter("pageNum");
			if(pageNum ==null){
				pageNum = "1";
			}
			int count = 0;
			int number = 0;
			
			int curPage = Integer.parseInt(pageNum); 
			count = boardDAO.instance.getAllCount();
			
			int startRow = (curPage - 1) * pageSize;
			int endRow = curPage * pageSize;
			ArrayList<boardDTO> boardlist = boardDAO.instance.getAllBoardlist(startRow, endRow);
			
			number = count - (curPage - 1) * pageSize;
		%>
		
<h2>고객센터</h2>
<hr size = "1" color = "purple" width = "300">
<br>

	<table border="1" style="border-collapse:collapse;">
		<tr height = "30">
			<td width = "50" align="center">번호</td>
			<td width = "400" align="center">제목</td>
			<td width = "200" align="center">작성자</td>
			<td width = "200" align="center">작성일</td>
			<td width = "50" align="center">조회수</td>
		</tr>
		<%
		for(int i=0;i<boardlist.size();i++){
			boardDTO bean = boardlist.get(i);
			
			%>
			<tr height="30">
				<td width = "50" align="center"><%=number-- %></td>
				<td width = "400" align="left">
					<%
						if(bean.getRe_step() > 1){
							
							for(int j=0; j<(bean.getRe_step()-1)*5; j++){
					%>
						&nbsp;
					<%			
							}
						}
					%>
					<%
					if(managerId!=null){
						%>
						<a href="00_shopMain.jsp?center=35_showBoardContent.jsp?num=<%= bean.getNum() %>" style="text-decoration: none"><%=bean.getTitle() %></a>
						<%
					}else{
						%>
						<a href="00_shopMain.jsp?center=41_checkPwForRead.jsp?num=<%= bean.getNum() %>" style="text-decoration: none"><%=bean.getTitle() %></a>
						<%
					}
					%>						
				</td>
				<td width = "200" align="center"><%=bean.getWriter() %></td>
				<td width = "200" align="center"><%=bean.getReg_date() %></td>
				<td width = "50" align="center"><%=bean.getReadcount() %></td>
			</tr>
			
			<%
			
		}
		
		
		%>
	</table>
	
	<table>
		<tr height= "30">
			<td width = "910" align="right">
				<input type = "button" value = "글쓰기" onclick = "location.href='00_shopMain.jsp?center=36_write.jsp'">
			</td>
		</tr>
	</table>
	
	<p>
	 	<%
			if(count > 0){
				int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);	
				int startPage = 1;
				if(curPage % pageSize != 0){
					startPage = (int)(curPage / pageSize) * pageSize + 1;
				}else{
					startPage = ((int)(curPage / pageSize )- 1) * pageSize + 1;
				}
				int endPage = startPage + pageSize - 1;	
				if(endPage > pageCount) endPage = pageCount;
					
				if(startPage > 10){
		%>
			<a href="00_shopMain.jsp?center=07_customerCenter.jsp?pageNum=<%= startPage - 10 %>"> [이전] </a>
		<%
				}
				for(int i=startPage; i<=endPage; i++){
		%>
			<a href="00_shopMain.jsp?center=07_customerCenter.jsp?pageNum=<%= i %>"> [<%= i %>] </a>
		<%
					
				}
				if(endPage < pageCount){
		%>
			<a href="00_shopMain.jsp?center=07_customerCenter.jsp?pageNum=<%= startPage + 10 %>"> [다음] </a>
		<%
				}
			}
		 %>
</body>
</html>