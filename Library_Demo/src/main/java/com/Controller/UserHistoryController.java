package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.MyAcc_Dao;
import com.Model.UserHistory;

/**
 * Servlet implementation class UserHistoryController
 */
@WebServlet("/UserHistoryController")
public class UserHistoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserHistoryController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Usermail=request.getParameter("usermail");
		String Bookid=request.getParameter("bookid");
		String Issuedate=request.getParameter("issuedate");

		UserHistory uhistory=new UserHistory(Usermail, Bookid, Issuedate);
		
		
		MyAcc_Dao udao=new MyAcc_Dao();
		boolean b=udao.updateUserHistory(uhistory);
	

		PrintWriter pw=response.getWriter();

		if(b) {
			
			response.sendRedirect("Payment_confirm.html");
		}
		else {
			pw.print("<h1>Something went wrong...</h1>");
			pw.print("<a href='Issue.jsp' > Go Back </a>");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
