package com.vendor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.services_db_util;

@WebServlet("/VendorUpdateServlet")
public class VendorUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String type = request.getParameter("type");
		String price = request.getParameter("price");
		

		boolean isTrue;

		isTrue = vendor_db_util.update_vendor(id,name, address, email, phone, type, price);

		if (isTrue == true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Edit Vendor Success..!');");
			out.println("location='vendors_dashboard.jsp'");
			out.println("</script>");

		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Edit Vendor Unuccess..!');");
			out.println("location='vendors_dashboard.jsp'");
			out.println("</script>");

		}
		
	}

}
