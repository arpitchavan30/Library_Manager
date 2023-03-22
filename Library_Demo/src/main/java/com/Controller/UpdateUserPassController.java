package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.MyAcc_Dao;
import com.Model.UpdateUser;
import com.Model.UpdateUserPass;

/**
 * Servlet implementation class UpdateUserPassController
 */
@WebServlet("/UpdateUserPassController")
public class UpdateUserPassController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserPassController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String OldPass=request.getParameter("oldPass");
		String NewPass=request.getParameter("newPass");
		
		UpdateUserPass updtpass=new UpdateUserPass(OldPass, NewPass);
		
		
		MyAcc_Dao mdao=new MyAcc_Dao();
		int i=mdao.updateUserPass(updtpass);
		
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
