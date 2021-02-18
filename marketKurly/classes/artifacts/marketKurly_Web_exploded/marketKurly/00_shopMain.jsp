<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�����ø�</title>
<style>
	a{
		color : black;
	}
	a:hover{
		color : purple;
	}

</style>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
%>
<%--

CREATE DATABASE marketkurlydb01;
USE marketkurlydb01;

CREATE TABLE customer(
	id VARCHAR(50),
    pw VARCHAR(16),
    name VARCHAR(10),
    reg_date VARCHAR(50),
    tel VARCHAR(20),
    address VARCHAR(100),
	email VARCHAR(20)
);

CREATE TABLE item(
	item_number int(50),
	item_category VARCHAR(10),
    item_name VARCHAR(16),
    item_price int(50),
    item_stock int(50),
    item_image VARCHAR(10),
    item_info VARCHAR(100),
    discount_rate int(50),
    reg_date VARCHAR(50),
	sold int(50)
);

CREATE TABLE cart(
	cart_number int(50),
	buyer VARCHAR(50),
	item_name VARCHAR(16),
	buy_price int(50),
	buy_count int(50),
	item_image VARCHAR(50)
);

CREATE TABLE buy(
	customer_id VARCHAR(50),
	customer_name VARCHAR(50),
	cart_number int(50),
	item_name VARCHAR(50),
	buy_price int(50),
	buy_count int(50),
	item_image VARCHAR(50),
	buy_date VARCHAR(50),
	howpay VARCHAR(50),
	address VARCHAR(100)
);

CREATE table manager(
	id varchar(50),
    pw varchar(50),
    name varchar(50)
);

create table board(
	num int(10),
	writer varchar(20),
	title varchar(50),
	pw varchar(20),
	reg_date date,
	ref int(10),
	re_step int(10),
	re_level int(10),
	readcount int(10),
	content varchar(100)
);

---------------------------------------------------------------------------
	insert into manager values('admin','admin','������');
	insert into customer values('asterria','1234','������','2020-11-18','01031487426','����� ��õ��','asterria_@naver.com');
	insert into item values(1,'ä��', '����',1200,3,'1.jpg', '�����Դϴ�', 0, now(), 10);
	insert into item values(2,'ä��', '����',2000,4,'2.jpg', '�����Դϴ�', 10, now(), 0);
	insert into item values(3,'ä��', '���',2500,8,'3.jpg', '����Դϴ�', 10, now(), 0);
	insert into item values(4,'ä��', '����',1200,0,'4.jpg', '�����Դϴ�', 0, now(), 0);
	insert into item values(5,'ä��', '��ȣ��',1000,5,'5.jpg', '��ȣ���Դϴ�', 0, now(), 0);
	insert into item values(6,'ä��', '����',1500,4,'6.jpg', '�����Դϴ�', 20, now(), 0);
	insert into item values(7,'ä��', '��ȣ��',3000,7,'7.jpg', '��ȣ���Դϴ�', 10, now(), 0);
	insert into item values(8,'ä��', '������ī',3000,6,'8.jpg', '������ī�Դϴ�', 10, now(), 0);
	insert into item values(9,'ä��', '�ƽ��Ķ�Ž�',3000,10,'9.jpg', '�ƽ��Ķ�Ž��Դϴ�',0, now(), 0);
	insert into item values(10,'ä��', '����',2000,11,'10.jpg', '�����Դϴ�', 0, now(), 0);
	insert into item values(11,'�ػ깰', '�ڹݰ���',5000,20,'11.jpg', '�����Դϴ�', 0, now(), 4);
	insert into item values(12,'�ػ깰', '����',14000,40,'12.jpg', '�븣���̻� �����Դϴ�', 0, now(), 0);
	insert into item values(13,'�ػ깰', '��¡��',5000,10,'13.jpg', '��¡���Դϴ�', 10, now(), 0);
	insert into item values(14,'�ػ깰', '������',7000,0,'14.jpg', '�������Դϴ�', 0, now(), 0);
	insert into item values(15,'�ػ깰', '����',10000,1,'15.jpg', '�����Դϴ�', 10, now(), 0);
	insert into item values(16,'�ػ깰', '����',20000,5,'16.jpg', '�����Դϴ�', 0, now(), 0);
	insert into item values(17,'����', '��â',20000,5,'17.jpg', '��â�Դϴ�', 0, now(), 0);
	insert into item values(18,'����', '�Ƚɽ�����ũ',18000,0,'18.jpg', '�Ƚɽ�����ũ�Դϴ�',0, now(), 0);
	insert into item values(19,'����', '��', 12000,4,'19.jpg', '���Դϴ�', 20, now(), 0);
	insert into item values(20,'����', '�ߴٸ�',10000,7,'20.jpg', '�ߴٸ��Դϴ�', 0, now(), 8);
	insert into item values(21,'����', '����',20000,10,'21.jpg', '�����ϴ�', 10, now(), 0);
	insert into item values(22,'����', '��䰥��',25000,20,'22.jpg', '��䰥���Դϴ�', 30, now(), 0);
	insert into item values(23,'����', '�����',20000,0,'23.jpg', '������Դϴ�', 0, now(), 5);
	insert into item values(24,'����', 'ġ�����',13000,1,'24.jpg', 'ġ������Դϴ�', 0, now(), 50);
	insert into item values(25,'����', '�߰�����',5000,4,'25.jpg', '�߰������Դϴ�', 0, now(), 0);
	insert into item values(26,'����', '��������',20000,3,'26.jpg', '���������Դϴ�', 10, now(), 10);
	insert into item values(27,'������ǰ', '�׶��δ�',28000,3,'27.jpg', '�׶��δ��Դϴ�', 10, now(), 0);
	insert into item values(28,'������ǰ', '�����ٸ���',30000,3,'28.jpg', '�����ٸ����Դϴ�', 10, now(), 0);
	insert into item values(29,'������ǰ', '������̱�',25000,3,'29.jpg', '������̱��Դϴ�', 10, now(), 0);
	insert into item values(30,'������ǰ', 'ü�߰�',19000,3,'30.jpg', 'ü�߰��Դϴ�', 10, now(), 0);
	insert into item values(31,'������ǰ', '����ü�߰�',22000,3,'31.jpg', '����ü�߰��Դϴ�', 10, now(), 0);
	insert into item values(32,'������ǰ', '�̴ϼ�ǳ��',16000,0,'32.jpg', '�̴ϼ�ǳ���Դϴ�', 10, now(), 0);
	insert into item values(33,'������ǰ', 'û�ұ�',40000,3,'33.jpg', 'û�ұ��Դϴ�', 10, now(), 0);
	insert into item values(34,'������ǰ', 'ī�޶�',50000,3,'34.jpg', 'ī�޶��Դϴ�', 10, now(), 0);
	insert into item values(35,'������ǰ', '�ͼ���',3800,3,'35.jpg', '�ͼ����Դϴ�', 10, now(), 7);
 --%>

<%
//	String center=request.getParameter("center");
//
//	if(center==null){
//		center="03_center.jsp";
//	}
%>

<c:if test="${center == null}">
	<c:set var="center" value="03_center.jsp"/>
</c:if>

	<div align="center">
		<jsp:include page="01_top.jsp"/>
		<jsp:include page="${center}"/>
		<jsp:include page="02_bottom.jsp"/>
	</div>
</body>
</html>