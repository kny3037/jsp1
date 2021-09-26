<%@page import="day3.dao.CustomerDao"%>
<%@page import="day3.dto.Customer"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day3[]- db 회원 등록</title>
<style>
	ul{
		list-style: none;
		padding-inline-start:0px;  /* 목록 들여쓰기 없애기 */
	}
	ul #name{
		padding : 5px  20px;
		margin : 5px 0px;
		background-color: tomato;
		color:white;
	}
	li {
		padding : 5px  20px;
	}
</style>
</head>
<body>
<h3>환영합니다. WELCOME!!!</h3>
<ul>
	<li id="name">${cus.name} 님</li>
	<li>${cus.email}</li>
	<li>${cus.age }세 (${ cus.gender eq "male"? "남":"여"}) </li>
	<li>지역 : ${cus.addr}</li>
	<li>취미 : ${cus.hobby }</li>
</ul>
<a href="update.jsp?idx=${cus.idx}">정보 수정</a>
</body>
</html>
