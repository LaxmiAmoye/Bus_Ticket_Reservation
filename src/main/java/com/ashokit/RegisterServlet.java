package com.ashokit;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    Connection con = DBUtility.connectDB();
    
    public RegisterServlet() {
        System.out.println("Inside the Register Servlet");
    }

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html");
    	PrintWriter out = resp.getWriter();
    	
    	String fullname = req.getParameter("fullname");
    	String email = req.getParameter("email");
    	long mobile = Long.parseLong(req.getParameter("mobile"));    	
    	String password = req.getParameter("password");
    	
    	String query = "insert into register values(?,?,?,?)";
    	
    	try {
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, fullname);
			pstmt.setString(2, email);
			pstmt.setLong(3, mobile);
			pstmt.setString(4, password);
			
			int no = pstmt.executeUpdate();
			if(no >= 1) {
				req.getRequestDispatcher("login.jsp").forward(req, resp);
			}
			else {
				out.println("<h2>YOU HAVE ENTERED THE INVALID DETAILS...!!!</h2>");
				req.getRequestDispatcher("register.jsp").include(req, resp);
			}
						
		} catch (SQLException e) {
			e.printStackTrace();
		} 
	}

}
