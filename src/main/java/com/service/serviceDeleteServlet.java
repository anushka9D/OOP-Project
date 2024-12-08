package com.service;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/serviceDeleteServlet")
public class serviceDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String sId = request.getParameter("id");		
		
		boolean isTrue = services_db_util.deleteServices(sId);
		
		if (isTrue == true) {	
			RequestDispatcher dis = request.getRequestDispatcher("service_dashboard.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("service_dashboard.jsp");
			dis2.forward(request, response);
		}
		
	}

}
