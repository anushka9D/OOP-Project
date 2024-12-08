package com.vendor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/vendor_insert")
public class vendor_insert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String type = request.getParameter("type");
		String price = request.getParameter("price");
		
		boolean isTrue;
		
		isTrue=vendor_db_util.insert_vendor(name, address, email, phone, type, price);
		
		if(isTrue == true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Vendor Add Success..!');");
			out.println("location='vendors_dashboard.jsp'");
			out.println("</script>");
			
		}else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Add Vendor Unuccess..!');");
			out.println("location='vendors_dashboard.jsp'");
			out.println("</script>");
			
		}
		
	}

}
