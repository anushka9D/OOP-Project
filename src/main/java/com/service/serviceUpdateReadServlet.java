package com.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/serviceUpdateReadServlet")
public class serviceUpdateReadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String sId = request.getParameter("id");

		try {

			List<services> serviceRead = services_db_util.serviceUpdateRead(sId);
			request.setAttribute("serviceRead", serviceRead);

		} catch (Exception e) {
			e.printStackTrace();
		}

		RequestDispatcher dis = request.getRequestDispatcher("service_update.jsp");
		dis.forward(request, response);
	}

}
