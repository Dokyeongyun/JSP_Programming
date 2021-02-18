<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
</head>
<body>

<c:set var="id" value="${sessionScope.get('id')}"/>
<c:set var="managerId" value="${sessionScope.get('managerId')}"/>

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

	<c:forEach var="bean" items="${boardList}">
		<tr height="30">
			<td width = "50" align="center">${number}</td>
			<c:set var="number" value="${number-1}"/>
			<td width = "400" align="left">
				<c:if test="${bean.re_step > 1}">
					<c:forEach var="j" begin="0" end="${(bean.re_step-1) * 5}">
						&nbsp;
					</c:forEach>
				</c:if>
				<c:if test="${managerId == null}">
					<a href="showBoardContent.do?num=${bean.num}" style="text-decoration: none">${bean.title}</a>
				</c:if>
				<c:if test="${managerId != null}">
					<a href="checkPwForRead.do?num=${bean.num}" style="text-decoration: none">${bean.title}</a>
				</c:if>
			</td>
			<td width = "200" align="center">${bean.writer}</td>
			<td width = "200" align="center">${bean.reg_date}</td>
			<td width = "50" align="center">${bean.readcount}</td>
		</tr>
	</c:forEach>
</table>
<table>
	<tr height= "30">
		<td width = "910" align="right">
			<input type = "button" value = "글쓰기" onclick = "location.href='write.do'">
		</td>
	</tr>
</table>
<p>
	<c:if test="${count > 0}">
		<c:set var="pageCount" value="${count / pageSize + (count % pageSize == 0 ? 0 : 1)}"/>
		<c:set var="startPage" value="1"/>
	<c:if test="${curPage % pageSize != 0}">
		<c:set var="startPage" value="${(curPage / pageSize) * pageSize + 1}"/>
	</c:if>
	<c:if test="${curPage % pageSize == 0}">
		<c:set var="startPage" value="${((curPage / pageSize)-1) * pageSize + 1}"/>
	</c:if>
		<c:set var="endPage" value="${startPage + pageSize - 1}"/>
	<c:if test="${endPage > pageCount}">
		<c:set var="endPage" value="${pageCount}"/>
	</c:if>
	<c:if test="${startPage > 10}">
	<a href="00_shopMain.jsp?center=07_customerCenter.jsp?pageNum=${startPage - 10}"> [이전] </a>
	</c:if>
	<c:forEach var="i" begin="${startPage}" end="${endPage+1}">
	<a href="customerCenter.do?pageNum=${i}"> [${i}] </a>
	</c:forEach>
	<c:if test="${endPage < pageCount}">
	<a href="customerCenter.do?pageNum=${startPage + 10}"> [다음] </a>
	</c:if>
	</c:if>
</body>
</html>