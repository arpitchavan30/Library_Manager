package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.Registration_Dao;
import com.Model.Register;

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userName=request.getParameter("uName");
		String userEmail=request.getParameter("uEmail");
		String userMob=request.getParameter("uMob");
		String userPass=request.getParameter("uPass");
		
		Register reg=new Register(userName, userEmail, userMob, userPass);
//		reg.setUserName(uName);
//		reg.setUserEmail(uEmail);
//		reg.setUserMob(uMob);
//		reg.setUserPass(uPass);
		
		
		Registration_Dao rdao=new Registration_Dao();
		int i=rdao.CreateAccount(reg);
		
		PrintWriter pw=response.getWriter();
		if(i>0) {
			
			response.sendRedirect("Login.html");
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
