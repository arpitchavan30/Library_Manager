package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.MyAcc_Dao;
import com.Model.ReturnBook;

/**
 * Servlet implementation class ReturnController
 */
@WebServlet("/ReturnController")
public class ReturnController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReturnController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usermail=request.getParameter("UMail");
		String bookid=request.getParameter("BookId");
		String redate=request.getParameter("ReDate");
		
		ReturnBook rebook=new ReturnBook(usermail,bookid,redate);
		

		MyAcc_Dao rdao=new MyAcc_Dao();
		boolean b=rdao.returnbook(rebook);
	

		PrintWriter pw=response.getWriter();

		if(b) {
			
			response.sendRedirect("Charges.jsp");
		}
		else {
			pw.print("<h1>Something went wrong...</h1>");
			pw.print("<a href='Return.jsp' > Go Back </a>");
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
