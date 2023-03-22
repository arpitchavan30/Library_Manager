package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.Login_Dao;
import com.Dao.MyAcc_Dao;
import com.Model.adLogin;

/**
 * Servlet implementation class AdLoginController
 */
@WebServlet("/AdLoginController")
public class AdLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdLoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String AdminMail=request.getParameter("AdMail");
		String AdminPass=request.getParameter("AdPass");
		
		adLogin adlog=new adLogin(AdminMail, AdminPass);
		
		adlog.setAdMail(AdminMail);
		adlog.setAdPass(AdminPass);
		
		Login_Dao ldao=new Login_Dao();
		boolean b=ldao.LoginadAccount(adlog);
		
		MyAcc_Dao mdao=new MyAcc_Dao();
		String[] arr=mdao.Addata(AdminMail);
		
		HttpSession Namesession=request.getSession();
		Namesession.setAttribute("AdMail", arr[0]);
		Namesession.setAttribute("AdName", arr[1]);	
		Namesession.setAttribute("AdMob", arr[2]);	
		
		
		PrintWriter pw=response.getWriter();
		
		if(b) {
			// create session
			HttpSession Adsession=request.getSession();
			Adsession.setAttribute("AdMail", AdminMail);
			Adsession.setAttribute("AdPass", AdminPass);
			
			response.sendRedirect("AdMy-Account.jsp");
		}
		else {
			
			response.sendRedirect("AdLoginError.jsp");
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
