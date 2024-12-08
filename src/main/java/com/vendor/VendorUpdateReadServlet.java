package com.vendor;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/VendorUpdateReadServlet")
public class VendorUpdateReadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String vId = request.getParameter("id");
		
		
		try {
			
			List<vendor> vendorRead = vendor_db_util.vedorUpdateRead(vId) ;
			request.setAttribute("vendorRead", vendorRead);
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("vendor_update.jsp");
		dis.forward(request, response);
		
	}

}
