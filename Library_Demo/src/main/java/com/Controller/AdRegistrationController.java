package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.Registration_Dao;
import com.Model.adRegister;

/**
 * Servlet implementation class AdRegistrationController
 */
@WebServlet("/AdRegistrationController")
public class AdRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdRegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String adminMail=request.getParameter("adMail");
		String adminName=request.getParameter("adName");
		String adminMob=request.getParameter("adMob");
		String adminID=request.getParameter("adId");
		String adminPass=request.getParameter("adPass");
		
		adRegister adreg=new adRegister(adminMail, adminName, adminMob, adminID, adminPass);
		
		Registration_Dao rdao=new Registration_Dao();
		int i=rdao.CreateadadAccount(adreg);
		
		PrintWriter pw=response.getWriter();
		if(i>0) {
			
			response.sendRedirect("AdRegistration.jsp#adlogin");
		}
		else {
			pw.print("<h1 style=\"color:red;\">Email is already in use.</h1>");
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
