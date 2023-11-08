package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.Dao;
import vo.MemberTbl;

@WebServlet("/MemberInsertServlet")
public class MemberInsertServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		
		response.setContentType("text/html; charser=utf-8");
		
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println(" alert('회원 등록이 완료되었습니다.'); ");
		out.println(" location.href='index.jsp';");
		out.println(" </script>");
	}

}
