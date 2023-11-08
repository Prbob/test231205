<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 템플릿을 이용한 방법 -->
<title>Insert title here</title>
<link rel = "stylesheet" href="./shop.css">

</head>
<body>

<header>
	<h1>쇼핑몰 회원 관리 ver 1.0</h1>
</header>

<nav>
	<span><a href="memberRegJSP.jsp">회원등록-jsp</a></span> &nbsp;
	<span><a href="memberlist.jsp">회원목록조회/수정-jsp</a></span> &nbsp;
	<span><a href="#">회원매출조회-jsp</a></span> &nbsp;&nbsp;&nbsp;
	
	<span><a href="MemberRegServlet">회원등록-sevlet</a></span> &nbsp;
	<span><a href="#">회원목록조회/수정-sevlet</a></span> &nbsp;
	<span><a href="#">회원매출조회-sevlet</a></span> &nbsp;&nbsp;&nbsp;
	<span><a href="#">홈으로</a></span> &nbsp;
</nav>

<section>
	<h2>쇼핑몰 회원관리 프로그램</h2>
	<p>
	쇼핑몰 회원정보와 회원 매출정보 데이터베이스를 구축하고 회원관리 프로그램을 작성하는 프로그램이다.<br>
	프로그램 작성 순서
	<ol> 
		<li>1. 회원정보 테이블을 생성한다.</li>
		<li>2. 매출정보 테이블을 생성한다. </li>
		<li>3. 회원정보, 매출정보 테이블에 제시된 문제지와 참조데이터를 추가 생성한다.</li>
		<li>4. 외원정보 입력 화면프로그램을 작성한다. </li>
		<li>5. 회원정보 조회 프로그램을 작성한다. </li>
		<li>6. 회원매출정보 조회 프로그램을 작성한다.</li>
	</ol>  
	</p>
</section>

<footer>
	<p>
		KRDKOREA Copyrightⓒ2016 All rights reserved. Human resource Development Service of Korea
	</p>
</footer>

</body>
</html>