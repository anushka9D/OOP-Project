package com.event_planning;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		boolean istrue;
		String check_role;
		
		istrue = login_db_util.validate(username, password);
		check_role = login_db_util.login_role();
		
		if(istrue == true) {
			
			if(check_role.equals("admin")) {
				RequestDispatcher dis = request.getRequestDispatcher("admin_dashboard.jsp");
				dis.forward(request, response);
				
			}else if(check_role.equals("user")) {
				
				request.setAttribute("user_name",username);
				
				RequestDispatcher dis = request.getRequestDispatcher("user_home.jsp");
				dis.forward(request, response);
				
				
			}else{
				out.println("<script type='text/javascript'>");
				out.println("alert('Your username or password is incorrect');");
				out.println("location='login.jsp'");
				out.println("</script>");
				
			}
		}
		
		
		else{
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='login.jsp'");
			out.println("</script>");
		}
		
	}

}
