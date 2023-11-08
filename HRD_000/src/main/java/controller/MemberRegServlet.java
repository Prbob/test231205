package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.Dao;

@WebServlet("/MemberRegServlet")
public class MemberRegServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Dao dao = Dao.getInstance();

		int nextCustno = dao.selectNextCustno();
		
		request.setAttribute("nextCustno", nextCustno);
		
		request.getRequestDispatcher("memberRegForm.jsp").forward(request, response);
	}

}
