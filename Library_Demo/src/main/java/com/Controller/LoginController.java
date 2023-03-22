package com.Controller;

import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.Login_Dao;
import com.Dao.MyAcc_Dao;
import com.Model.Login;


/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userMail=request.getParameter("uMail");
		String userPass=request.getParameter("uPass");
		
		Login login=new Login(userMail, userPass);
		
		login.setuMail(userMail);
		login.setuPass(userPass);
		
		Login_Dao ldao=new Login_Dao();
		boolean b=ldao.LoginAccount(login);
		
		MyAcc_Dao mdao=new MyAcc_Dao();
		String[] arr=mdao.userdata(userMail);
		
		/*Statement rs=mdao.history(userMail);
		HttpSession session1=request.getSession();
		session1.setAttribute("list", rs);*/
	
		
		HttpSession Namesession=request.getSession();
		Namesession.setAttribute("userName", arr[0]);
		Namesession.setAttribute("userMob", arr[1]);			
		
		PrintWriter pw=response.getWriter();
		
		if(b) {
			// create session
			HttpSession session=request.getSession();
			session.setAttribute("userMail", userMail);
			session.setAttribute("userPass", userPass);
			response.sendRedirect("User-Home.jsp");
			
		}
		else {
			
			response.sendRedirect("UserLoginError.jsp");
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
