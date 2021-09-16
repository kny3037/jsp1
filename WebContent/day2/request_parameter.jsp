<%@page import="sun.font.Script"%>
<%@page import="day1.MyUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP1 프로젝트[4]</title>
</head>
<body>
<!-- request parameter : request 객체에 저장되어 서버에게 전달되는 데이터. 
	 1)URL뒤에 ?에 쿼리 문자열로 전달하는 방법
	 (name=%ED%99%8D%EA%B8%B8%EB%8F%99(실제로는 이름을 입력했지만 데이터화 되어 표현됨)&age=34)->쿼리문자열
	 2)method를 post로 하여 전달하는 방법  -->
<!-- 요청 URL : http://localhost:8082/jsp1/day2/request_parameter.jsp?name=%ED%99%8D%EA%B8%B8%EB%8F%99(실제로는 이름을 입력했지만 데이터화 되어 표현됨)&age=34 
								ㄴ**Request Method : GET-->
<h3>Request Parameter 연습</h3>
<!-- 이 jsp파일의 역할 : 사용자가 보낸 데이터를 받아서 처리합니다.-->
<hr>
<%
	//form date(method post)로 전달된 데이터의 인코딩 필요합니다. 
	request.setCharacterEncoding("UTF-8");

	//request의 파라미터 가져오기 입니다. 파리미터가 10개라면...getParameter()메소드는 몇번? 10번
			//예고편 : DTO(VO) 타입 클래스를 이용해서 파라미터와 객체를 자동으로 매핑(프레임워크)
	String name = request.getParameter("name");    //"name" 은 ? 뒤에 파라미터이름
	String age = request.getParameter("age");      //파라미터 안받았다고 오류가 발생하지 않습니다. 
	String location = request.getParameter("location");
	
	
%>
<ul>
	<li>이름 : <%= name %></li>
	<li>나이 : <%= age %></li>
<!-- 파라미터에 location도 전달해보기 -->
	<li>지역 : <%= location %></li>
</ul>
<!-- 파라미터값으로 MyUser 객체를 생성 해봅시다. -->
<%
	//if (age==null) age="999"; 

if(age==null || age.length()==0){  //

%>

	<script type="text/javascript">
	alert('나이를 입력하세요.')
	</script>

	<%
		//if(age==null){
		//브라우저에 태그를 print 하라는 것은 -> 응답할 html 형식 문서에 태그가 추가되는 것입니다. 
		//out.print("<script>");
	    //out.print("alert('나이를 반드시 입력해야합니다.')");
	    //out.print("</script>");
	}else{
		MyUser my2 = new MyUser(name,Integer.parseInt(age),location);
					     //Integer.parseInt(age) -> age가 null이면 오류
		out.print(my2); //out은 내장객체 -> 브라우저에 출력
%>

<ul>
	<li>이름 : <%= my2.getName()%></li>
	<li>나이 : <%= my2.getAge()%></li>
<!-- 파라미터에 location도 전달해보기 -->
	<li>지역 : <%= my2.getLocation() %></li>
</ul>
<%
	}//if end
	 %>




</body>
</html>