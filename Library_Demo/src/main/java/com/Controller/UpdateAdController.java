package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.MyAcc_Dao;
import com.Model.UpdateAdmin;

/**
 * Servlet implementation class UpdateAdController
 */
@WebServlet("/UpdateAdController")
public class UpdateAdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String AdminID=request.getParameter("AdID");
		String AdminName=request.getParameter("AdName");
		String AdminMail=request.getParameter("AdMail");
		String AdminMob=request.getParameter("AdMob");
		
		UpdateAdmin updtAd=new UpdateAdmin(AdminID, AdminName, AdminMail, AdminMob);
		
		MyAcc_Dao mdao=new MyAcc_Dao();
		int i=mdao.updateAd(updtAd);
		
		PrintWriter pw=response.getWriter();
		
		if(i>0) {
			
			response.sendRedirect("AdMy-Account.jsp");
			System.out.println("test 1");
		}
		else {
			pw.print("i is null");
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
