package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.MyAcc_Dao;
import com.Model.UpdateAdminPass;

/**
 * Servlet implementation class UpdateAdPassController
 */
@WebServlet("/UpdateAdPassController")
public class UpdateAdPassController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAdPassController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String AdOldPass=request.getParameter("AdOldPass");
		String AdNewPass=request.getParameter("AdNewPass");
		
		UpdateAdminPass updtadpass=new UpdateAdminPass(AdOldPass, AdNewPass);
		
		MyAcc_Dao mdao=new MyAcc_Dao();
		int i=mdao.updateAdPass(updtadpass);
		
		if(i>0) {
			System.out.println("Test2");
			response.sendRedirect("AdMy-Account.jsp");
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
