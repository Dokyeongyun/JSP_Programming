<%@page import="java.util.Vector"%>
<%@page import="marketKurly.itemDAO"%>
<%@page import="marketKurly.itemDTO"%>
<%@page import="java.util.ArrayList"%>
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
<%--
 insert into item values(1,'채소', '대파',1200,3,'1.jpg', '대파입니다', 0, now());
	insert into item values(2,'채소', '상추',2000,4,'2.jpg', '상추입니다', 10, now());
	insert into item values(3,'채소', '당근',2500,8,'3.jpg', '당근입니다', 10, now());
	insert into item values(4,'채소', '깻잎',1200,0,'4.jpg', '깻잎입니다', 0, now());
	insert into item values(5,'채소', '애호박',1000,5,'5.jpg', '애호박입니다', 0, now());
	insert into item values(6,'채소', '버섯',1500,4,'6.jpg', '버섯입니다', 20, now());
	insert into item values(7,'채소', '단호박',3000,7,'7.jpg', '단호박입니다', 10, now());
	insert into item values(8,'채소', '파프리카',3000,6,'8.jpg', '파프리카입니다', 10, now());
	insert into item values(9,'채소', '아스파라거스',3000,10,'9.jpg', '아스파라거스입니다',0, now());
	insert into item values(10,'채소', '양파',2000,11,'10.jpg', '양파입니다', 0, now());

	insert into item values(11,'해산물', '자반고등어',5000,20,'11.jpg', '고등어입니다', 0, now());
	insert into item values(12,'해산물', '연어',14000,40,'12.jpg', '노르웨이산 연어입니다', 0, now());
	insert into item values(13,'해산물', '오징어',5000,10,'13.jpg', '오징어입니다', 10, now());
	insert into item values(14,'해산물', '바지락',7000,0,'14.jpg', '바지락입니다', 0, now());
	insert into item values(15,'해산물', '새우',10000,1,'15.jpg', '새우입니다', 10, now());
	insert into item values(16,'해산물', '전복',20000,5,'16.jpg', '전복입니다', 0, now());

	insert into item values(17,'육류', '막창',20000,5,'17.jpg', '막창입니다', 0, now());
	insert into item values(18,'육류', '안심스테이크',18000,0,'18.jpg', '안심스테이크입니다',0, now());
	insert into item values(19,'육류', '닭', 12000,4,'19.jpg', '닭입니다', 20, now());
	insert into item values(20,'육류', '닭다리',10000,7,'20.jpg', '닭다리입니다', 0, now());
	insert into item values(21,'육류', '폭립',20000,10,'21.jpg', '폭립니다', 10, now());
	insert into item values(22,'육류', '양념갈비',25000,20,'22.jpg', '양념갈비입니다', 30, now());
	insert into item values(23,'육류', '등갈비구이',20000,0,'23.jpg', '등갈비구이입니다', 0, now());
	insert into item values(24,'육류', '치즈돈가스',13000,1,'24.jpg', '치즈돈가스입니다', 0, now());
	insert into item values(25,'육류', '닭가슴살',5000,4,'25.jpg', '닭가슴살입니다', 0, now());
	insert into item values(26,'육류', '차돌박이',20000,3,'26.jpg', '차돌박이입니다', 10, now());

	insert into item values(27,'전자제품', '그라인더',28000,3,'27.jpg', '그라인더입니다', 10, now());
	insert into item values(28,'전자제품', '스팀다리미',30000,3,'28.jpg', '스팀다리미입니다', 10, now());
	insert into item values(29,'전자제품', '헤어드라이기',25000,3,'29.jpg', '헤어드라이기입니다', 10, now());
	insert into item values(30,'전자제품', '체중계',19000,3,'30.jpg', '체중계입니다', 10, now());
	insert into item values(31,'전자제품', '전자체중계',22000,3,'31.jpg', '전자체중계입니다', 10, now());
	insert into item values(32,'전자제품', '미니선풍기',16000,0,'32.jpg', '미니선풍기입니다', 10, now());
	insert into item values(33,'전자제품', '청소기',40000,3,'33.jpg', '청소기입니다', 10, now());
	insert into item values(34,'전자제품', '카메라',50000,3,'34.jpg', '카메라입니다', 10, now());
	insert into item values(35,'전자제품', '믹서기',3800,3,'35.jpg', '믹서기입니다', 10, now());
--%>

<%
	ArrayList<itemDTO> allItem = itemDAO.instance.getAllItem();
	String managerId = (String)session.getAttribute("managerId");
	int check=-1;
	if(managerId!=null){
		check=1;
	}

%>
	<div>
		<h3>상품 카테고리 검색</h3>
		<form method = "post" action = "00_shopMain.jsp?center=17_showOneCategory.jsp">
			<select name="category">
				<option value = "1">채소</option>
				<option value = "2">해산물</option>
				<option value = "3">육류</option>
				<option value = "4">전자제품</option>
			</select>
			<input type = "image" src = "img/findcate.png" name = "submit" value="submit" style="width:25px;">
		</form>
	</div>
<hr size = "1" color = "purple" width = "300">
<br>
	<h1>전체 상품</h1>
	<table>
	<%
	int j=0;
	for(int i=0;i<allItem.size();i++){
		itemDTO bean = allItem.get(i);
		
		if(j%3==0){
			%>
			<tr height="250" >
			<%
		}
		%>
			<td width = "400" align="center">
			<%
			if(check==1){
				%>
				<a href="00_shopMain.jsp?center=28_itemInfoUpdate.jsp?item_number=<%=bean.getItem_number() %>&item_image=<%=bean.getItem_image() %>" >
				<%
				if(bean.getItem_stock()>0){
					%>
					<img alt="" src="img/<%=bean.getItem_image() %>" width = "250">
					<%
				}else{
					%>
					<img alt="" src="img/<%=bean.getItem_image() %>" width = "250" style = "opacity : 40%">
					<%
				}
				%>
				</a>
				<%
			}else{
				%>
				<a href="00_shopMain.jsp?center=18_showOneItem.jsp?item_number=<%=bean.getItem_number() %>&item_image=<%=bean.getItem_image() %>" >
				<%
				if(bean.getItem_stock()>0){
					%>
					<img alt="" src="img/<%=bean.getItem_image() %>" width = "250">
					<%
				}else{
					%>
					<img alt="" src="img/<%=bean.getItem_image() %>" width = "250" style = "opacity : 40%">
					<%
				}
				%>
				</a>
				<%
			}
			%>
				<p>
				<font size = "5"><b><%=bean.getItem_name() %></b></font></p>
				
				<%
				if(bean.getItem_stock()>0){
					int price = bean.getItem_price();
					int realprice = bean.getItem_price() - bean.getItem_price()*bean.getDiscount_rate()/100;
					if(price==realprice){
						%>
						<p><font size = "4"><%=bean.getItem_price() %>원</font></p>
						<%
					}else if(price>realprice){
						%>
						<p><font size = "3"><del><%=bean.getItem_price() %>원</del></font>
						→				
						<font size = "4" color = "purple"><b><%=realprice %>원</b></font></p>
						<%
					}
					
					%>
					<p><font size = "2"><%=bean.getItem_info() %></font></p>
					<%
				}else{
					%>
					<p><font size = "3" color = "red"><b>품절</b></font></p>
					<%
				}%>
			</td>		
			
		
		<%	
		
		j+=1;
	}
	
	%>
	
	</table>
</body>
</html>