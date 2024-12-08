package com.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/user_delete_servlet")
public class user_delete_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String user_email = request.getParameter("user_email");
		
		boolean istrue1 = user_db_util.delete_user(user_email);
		boolean istrue2 = user_login_db_util.delete_user_login(user_email);
		
		if(istrue1 == true && istrue2 == true) {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Delete Success..!');");
			out.println("location='index.jsp'");
			out.println("</script>");
			
		}else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Delete Unsuccess..!');");
			out.println("</script>");
		}
		
	}

}
