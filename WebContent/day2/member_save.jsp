<%@page import="org.apache.catalina.tribes.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP1 프로젝트[7]</title>
<style>
      ul{
         list-style : none;
         padding-inline-start:0px;   /* 목록 들여쓰기 없애기 */
      }
      ul #name{
         padding : 5px 20px;
         margin : 5px 0px;
         background-color: tomato;
         color : white;
      }
      li {
         padding : 5px 20px;
         }
      
   
   </style>
</head>
<body>
<!-- 이 파일에서는 사용자 정보를 전달 받아서 화면에 출력. 그리고 이후에는 데이터베이스에 정보를 저장합니다. -->
<%
	//서버에서 데이터 처리를 위한 자바코드
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");    
	String email = request.getParameter("email");       
	String age = request.getParameter("age");
	String addr = request.getParameter("addr");
	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");
	
	

	//참고 : hobby는 배열입니다. -> getParameterValues()메소드로 데이터를 받습니다. 
%>

<h3>환영합니다. WELCOME!!!</h3>
<ul>
	<li id="name">이름 : <%= name %></li>
	<li>이메일 : <%= email %></li>
	<li>나이 : <%= age %></li>
	<li>주소 : <%= addr %></li>
	<li>성별 : <%= gender %></li>
	<li>취미 : <%= Arrays.toString(hobby) %></li>
</ul>
</body>
</html>