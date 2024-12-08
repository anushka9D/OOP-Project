package com.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/user_update_servlet")
public class user_update_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		boolean isTrue1;
		boolean isTrue2;
		
			
			isTrue1 =user_db_util.update_user(name, phone, address,email,password);
			isTrue2 =user_login_db_util.update_user_login(email,password);
			
			request.setAttribute("user_name",email);
			
			if(isTrue1 == true && isTrue2 == true) {
				out.println("<script type='text/javascript'>");
				out.println("alert('Update Success..!');");
				out.println("</script>");

				
			}else {
				out.println("<script type='text/javascript'>");
				out.println("alert('Unsuccess..!');");
				out.println("</script>");
			}
			
				RequestDispatcher dis = request.getRequestDispatcher("user_home.jsp");
				dis.forward(request, response);
		
	}

}
