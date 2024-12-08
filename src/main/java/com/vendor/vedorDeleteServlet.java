package com.vendor;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class vedorDeleteServlet
 */
@WebServlet("/vedorDeleteServlet")
public class vedorDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String vId = request.getParameter("id");		
		
		boolean isTrue = vendor_db_util.deleteVendor(vId) ;
		
		if (isTrue == true) {	
			RequestDispatcher dis = request.getRequestDispatcher("vendors_dashboard.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("vendors_dashboard.jsp");
			dis2.forward(request, response);
		}

		
	}

}
