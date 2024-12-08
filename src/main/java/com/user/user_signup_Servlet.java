package com.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/user_signup_Servlet")
public class user_signup_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword"); 
		
		boolean isTrue1;
		boolean isTrue2;
		
		if (repassword.equals(password)) {
			
			isTrue1 =user_db_util.insert_user(name, phone, address, email,password);
			isTrue2 =user_login_db_util.insert_user_login(email,password);
			
			if(isTrue1 == true && isTrue2 == true) {
				out.println("<script type='text/javascript'>");
				out.println("alert('Success..!');");
				out.println("location='login.jsp'");
				out.println("</script>");
				
			}else {
				out.println("<script type='text/javascript'>");
				out.println("alert('Email already use, Enter another Email ..!');");
				out.println("location='signup.jsp'");
				out.println("</script>");
				
			}
			
		}else {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Passwords are not matching Please Try again..!');");
			out.println("</script>");
			
		}
		

	}

}
