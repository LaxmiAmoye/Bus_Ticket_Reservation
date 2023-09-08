package com.ashokit;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/payment")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con = DBUtility.connectDB();
	
//    Customer customer = new Customer();
	
    public PaymentServlet() {
    	System.out.println("inside payment servlet");
    }

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		ArrayList<Customer> list = new ArrayList<Customer>();
		Customer customer = new Customer();
		System.out.println("inside payment servlet dopost");
    	
    	HttpSession session = null;
    	
    	int bus_id = Integer.parseInt(req.getParameter("bus_id"));
    	String bus_name = req.getParameter("bus_name");
    	String bus_type = req.getParameter("bus_type");
    	String source = req.getParameter("source");
    	String destination = req.getParameter("destination");
    	double price = Double.parseDouble(req.getParameter("price"));
    	
    	long mob = 0;
    	session = req.getSession(false);
    	if(session != null) {
    		mob = (Long)session.getAttribute("mobile");
    		System.out.println("Inside dopost payment servlet");
    		
    	String query2 = "select * from register where mobile = '"+mob+"'";
    	try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query2);
			while(rs.next()) {
				customer.setFullname(rs.getString("fullname"));
				customer.setMobile(rs.getLong("mobile"));
				customer.setEmail(rs.getString("email"));
				list.add(customer);
			}
			customer.setBus_id(bus_id);
	    	customer.setBus_name(bus_name);
	    	customer.setBus_type(bus_type);
	    	customer.setSource(source);
	    	customer.setDestination(destination);
	    	customer.setPrice(price);
	    	
	    	System.out.println(customer.toString());
			
			session.setAttribute("list", list);
			req.getRequestDispatcher("payment.jsp").forward(req, resp);
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	}
	}

}
