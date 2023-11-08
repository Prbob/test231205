<%@page import="java.text.SimpleDateFormat"%>
<%@page import="vo.MemberTbl"%>
<%@page import="Dao.Dao"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");

	int custno = Integer.parseInt(request.getParameter("custno"));
	String custname = request.getParameter("custname");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String joindate = request.getParameter("joindate");
	String grade = request.getParameter("grade");
	String city = request.getParameter("city");
 
	MemberTbl member = new MemberTbl();
	member.setCustno(custno);
	member.setCustname(custname);
	member.setPhone(phone);
	member.setAddress(address);
	member.setJoindate(joindate);
	//member.setJoindate(new SimpleDateFormat("yyyyMMdd").parse(joindate));
	member.setGrade(grade);
	member.setCity(city);
	
	Dao dao = Dao.getInstance();
	
	dao.insertMember(member);
	
	
	
%>
<script type="text/javascript">
	alert('회원 등록이 완료되었습니다. ');
	location.href="index.jsp";
</script>