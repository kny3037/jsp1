<%@page import="day1.MyUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day3[5]-request 객체의 애트리뷰트</title>
</head>
<body>
<%
	//request_attribute.jsp 파일에서 전달받은 데이터 출력하기
	MyUser user = (MyUser)request.getAttribute("attr1");
	//int n1 = (int)request.getAttribute("attr2")
	String s1 = (String)request.getAttribute("attr3");
	
	out.print(user);out.print("<br>");
	//out.print(n1);out.print("<br>");
	out.print(s1);out.print("<br>");
	
	//url은 http://localhost:8082/jsp1/day3/request_attribute.jsp 입니다.
	//url 요청을 http://localhost:8082/jsp1/day3/request_result.jsp 하면 null만 출력됩니다. 
	
%>




</body>
</html>