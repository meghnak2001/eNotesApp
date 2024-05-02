package com.Servlet;

import com.DAO.UserDAO;
import com.Db.DBConnection;
import com.User.UserDatails;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("fname");
		String email = request.getParameter("uemail");
		String password = request.getParameter("upassword");

		UserDatails us = new UserDatails();
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);

		UserDAO dao = new UserDAO(DBConnection.getConn());
		boolean f = dao.addUser(us);
		

		if (f) {
			HttpSession session=request.getSession();
			session.setAttribute("reg-success", "Registration successfull..");
			response.sendRedirect("register.jsp");
		} else {
			
			HttpSession session=request.getSession();
			session.setAttribute("failed-msg", "Something went Wrong..");
			response.sendRedirect("register.jsp");
		}

	}

}
