<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel ="stylesheet" href="./shop.css">
</head>
<body>
<header>
	<h1>쇼핑몰 회원 관리 ver 1.0</h1>
</header>

<nav>
	<span><a href="memberRegJSP.jsp">회원등록-jsp</a></span> &nbsp;
	<span><a href="#">회원목록조회/수정-jsp</a></span> &nbsp;
	<span><a href="#">회원매출조회-jsp</a></span> &nbsp;&nbsp;&nbsp;
	
	<span><a href="MemberRegServlet">회원등록-sevlet</a></span> &nbsp;
	<span><a href="#">회원목록조회/수정-sevlet</a></span> &nbsp;
	<span><a href="#">회원매출조회-sevlet</a></span> &nbsp;&nbsp;&nbsp;
	<span><a href="#">홈으로</a></span> &nbsp;
</nav>
<section>
	<h1>홈쇼핑 회원 등록</h1>
	<form action="MemberInsertServlet" method="POST" name="frm">
		<table border="1">
			<tr>
				<th>회원번호 (자동발생)</th>
				<td> <input type="text" name="custno" value="${nextCustno}" readonly="readonly"></td>
			</tr>
			<tr>
				<th>회원 성명</th>
				<td><input type="text" name="custname"></td>
			</tr>
			<tr>
				<th>회원 전화</th>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<th>회원 주소</th>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<th>가입일자</th>
				<td><input type="text" name="joindate"></td>
			</tr>
			
			<tr>
				<th>고객등급(A:VIP, B:일반, C:직원)</th>
				<td><input type="text" name="grade"></td>
			</tr>
			<tr>
				<th>도시코드</th>
				<td><input type="text" name="city"></td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit" onclick="return check()">등록</button>
					<button type="button">조회</button>
				</td>
			</tr>
			
			
		</table>
	</form>
	</section>
</body>
</html>