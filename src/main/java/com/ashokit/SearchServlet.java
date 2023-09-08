package com.ashokit;

import java.io.IOException;
import java.io.PrintWriter;
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

@WebServlet("/search")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con = DBUtility.connectDB();	
    
    public SearchServlet() {
    	System.out.println("Inside search servlet");
    }

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		ArrayList<Customer> list = new ArrayList<Customer>();
		resp.setContentType("text/html");
    	PrintWriter out =  resp.getWriter();
    	System.out.println("inside search servlet dopost");
    	
    	HttpSession session = null;
		String source = req.getParameter("source");
		String destination = req.getParameter("destination");
		String day = req.getParameter("day");
		
		if(source != destination) {
    		session = req.getSession(false);
    		String query3 = "select * from bus_details where source='"+source+"' and destination='"+destination+"' and day='"+day+"'";
    		try {
    			Statement stmt = con.createStatement();
    			ResultSet rs = stmt.executeQuery(query3);
    			
    			while(rs.next()) {
    				Customer customer = new Customer();				
    				customer.setSource(rs.getString("source"));
    				customer.setDestination(rs.getString("destination"));
    				customer.setDay(rs.getString("day"));
    				customer.setBus_id(rs.getInt("bus_id"));
    				customer.setBus_name(rs.getString("bus_name"));
    				customer.setBus_type(rs.getString("bus_type"));
    				customer.setArrival_time(rs.getDouble("arrival_time"));
    				customer.setDuration(rs.getString("duration"));
    				customer.setDeparture_time(rs.getDouble("departure_time"));
    				customer.setPrice(rs.getDouble("price"));
				
    				System.out.println("Inside try block search servlet");
    				System.out.println(customer.toString());
    				list.add(customer);
    			}
    			session.setAttribute("list", list);
    			req.getRequestDispatcher("buses.jsp").forward(req, resp);
    		} catch (SQLException e) {
    			System.out.println(e.getMessage()+"<---");
    			e.printStackTrace();
    		}
		}
		else {
    		req.getRequestDispatcher("search.html").include(req, resp);
    		out.println("<script type=\"text/javascript\">");
    		out.println("alert('PLEASE PROVIDE VALID DETAILS !!!');");
    		out.println("</script>");
    	}
	}

}
