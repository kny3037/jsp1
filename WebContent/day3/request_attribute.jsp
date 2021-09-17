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
<!-- request 객체의 애트리뷰트를 이용하여
	  현재 B.jsp 파일에서 다른 A.jsp 파일로 데이터를 전달합니다. 
	  그리고 이때, A.jsp 파일로 이동하는 명령은 pageContext.forward("A.jsp")로 합니다.
	http://localhost:8082/jsp1/day3/B.jsp
	http://localhost:8082/jsp1/day3/A.jsp
	위의 2가지 url은 요청이 다릅니다. 
-->
<%
	MyUser vo = new MyUser("사나",23,"서울");
	int value1 = 23;
	String value2 = "Hello";
	
	//위의 3가지 값은 request_result.jsp 파일로 전달합니다.
	
	//첫번째 인자는 String으로 이름을 설정해주고, 2번째 인자에 데이터를 넣어준다.
    //setAttribute로 request에 넣어주면 object타입으로 변환된다.
    //다른 파일에서 getAttribute로 불러왔을때 데이터를 캐스팅해줘야한다.
    //getAttribute로 불러올때 set에서 설정한 이름으로 불러와야한다.
	
	request.setAttribute("attr1", vo);         //setAttribute에서 attr1dms 애트리뷰트key, vo는 애트리뷰트의 값
	request.setAttribute("attr2", value1);     //애트리뷰트 중복된 키 사용하면 값은 덮어쓰기(변경)
	request.setAttribute("attr3", value2);
	
	pageContext.forward("request_result.jsp");  
	//요청을 변경하는게 아니고 요청을 전달(forword)합니다. ->요청이 발생할때의 request 객체 정보를 똑같이 사용할 수 있게 합니다. 
	//요청을 전달했기 때문에 url 변경이 없습니다. 
	/* 사용자입력(또는 조회)-> 처리 -> 결과 출력 순서로 봤을 때 
	      처리에서 결과로 넘어가는 과정에서 필요합니다.
	*/
	
	//1. 기존에는 하나의 jsp파일안에 자바코드랑 html코드를 같이 함.
	//2. 그래서 자바코드만있는 B(attribute)와 html코드가잇는A(result) 두가지 파일로 구분했음.
	//3. 이전까진 각각의 jsp파일을 실행 각각의 파일명으로 실행해서 들어갔다.
	//    (url이 각 파일의 파일명이었음)
	//4. 하지만 이제는 요청을 한번만 받아서 url이 B파일(attribute)의 url로 고정이고 B파일에 attribute를 A에 전달하여 브라우저에 출력한다.
	
	
	
	
	
%>
</body>
</html>