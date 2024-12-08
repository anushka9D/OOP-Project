package com.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/serviceUpdateServlet")
public class serviceUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		String participants = request.getParameter("participants");
		String events = request.getParameter("events");
		

		boolean isTrue;

		isTrue = services_db_util.update_service(id,name, description, participants, events);

		if (isTrue == true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Edit Service Success..!');");
			out.println("location='service_dashboard.jsp'");
			out.println("</script>");

		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Edit Service Unuccess..!');");
			out.println("location='service_dashboard.jsp'");
			out.println("</script>");

		}
	}

}
