package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.MyAcc_Dao;
import com.Model.Register;
import com.Model.UpdateUser;

/**
 * Servlet implementation class UpdateUserController
 */
@WebServlet("/UpdateUserController")
public class UpdateUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String RegMail=request.getParameter("regMail");
		String NewName=request.getParameter("newName");
		String NewMob=request.getParameter("newMob");
		
		
		UpdateUser updtuser=new UpdateUser(RegMail, NewName, NewMob);
		//updtuser.setNewMail(NewName);
		//updtuser.setNewMail(NewMail);
		//updtuser.setNewMob(NewMob);
		
		MyAcc_Dao mdao=new MyAcc_Dao();
		int i=mdao.updateUser(updtuser);
		
		if(i>0) {
			System.out.println("Test2");
			response.sendRedirect("My-Account.jsp");
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
