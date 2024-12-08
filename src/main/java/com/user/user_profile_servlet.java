package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/user_profile_servlet")
public class user_profile_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String userName = request.getParameter("user_name");
	        
	        try {

	            List<user> userData = user_db_util.get_user(userName);
	            
	            request.setAttribute("userData", userData);
	        } catch (Exception e) {

	            e.printStackTrace();

	            request.setAttribute("errorMessage", "There was an error fetching the user data.");
	        }


	        RequestDispatcher dispatcher = request.getRequestDispatcher("user_profile.jsp");
	        dispatcher.forward(request, response);
	}

}