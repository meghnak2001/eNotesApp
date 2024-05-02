package com.Servlet;
import com.DAO.UserDAO;
import com.Db.DBConnection;
import com.User.UserDatails;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uemail=request.getParameter("uemail");
		String upassword=request.getParameter("upassword");
		
		UserDatails us=new UserDatails();
		us.setEmail(uemail);
		us.setPassword(upassword);
		
		UserDAO dao= new UserDAO(DBConnection.getConn());
		UserDatails user=dao.loginUser(us);
		if(user!=null) {
			HttpSession session=request.getSession();
			System.out.println(user);
			session.setAttribute("userD", user);
			response.sendRedirect("home.jsp");
		}
		else {
			HttpSession session=request.getSession();
			session.setAttribute("login-failed", "Invalid Username and Password");
			response.sendRedirect("Login.jsp");
		}
	}

}
