<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="Dao.Dao" %>
<%
	// 새로운 회원 번호 발급 받기
	Dao dao = Dao.getInstance();

	int nextCustno = dao.selectNextCustno();
	
	request.setAttribute("nextCustno", nextCustno);
	
	request.getRequestDispatcher("memberRegJSPForm.jsp").forward(request, response);
%>