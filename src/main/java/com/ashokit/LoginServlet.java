package com.ashokit;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con = DBUtility.connectDB();
       
    public LoginServlet() {
    	System.out.println("Inside login servlet");
    }

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html");
    	PrintWriter out =  resp.getWriter();
     	Customer customer = new Customer();
    	System.out.println("inside login servlet dopost");
    	String pass2 = null;
    	
    	HttpSession session = null;
    	Long mobile = Long.parseLong(req.getParameter("mobile"));
    	String pass = req.getParameter("password");
    	String query2 = "select password from register where mobile='"+mobile+"' and password='"+pass+"'";
    	try {
    		Statement stmt = con.createStatement();
        	ResultSet rs = stmt.executeQuery(query2);
        	while(rs.next()) {
        		pass2 = rs.getString("password");
        		System.out.println("Inside try block login servlet");
        	}
        	
        	if(pass2 != null) {
        		session = req.getSession(true);
        		session.setAttribute("mobile", mobile);
        		req.getRequestDispatcher("search.html").forward(req, resp);
        	}
        	else {
        		req.getRequestDispatcher("login.jsp").include(req, resp);
        		out.println("<script type=\"text/javascript\">");
        		out.println("alert('INVALID CREDENTIALS !!!');");
        		out.println("</script>");
        	}
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
	}
}
