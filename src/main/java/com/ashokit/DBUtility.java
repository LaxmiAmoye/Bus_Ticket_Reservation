package com.ashokit;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.cj.jdbc.Driver;

public class DBUtility {
	private static final String URL = "jdbc:mysql://localhost:3306/bus";
	private static final String PASSWORD = "Done$456a";
	private static final String USERNAME = "root";
	static Connection con = null;
	public static Connection connectDB() {
		
		try {
			Driver driver = new com.mysql.cj.jdbc.Driver();
			DriverManager.registerDriver(driver);
		//	Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = URL;
			String username = USERNAME;
			String password = PASSWORD;
			con = DriverManager.getConnection(url, username, password);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
}
