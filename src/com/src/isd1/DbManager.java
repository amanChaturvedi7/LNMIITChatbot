package com.src.isd1;

import java.sql.Connection; 
import java.sql.DriverManager ;
import java.sql.SQLException;

public class DbManager {
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver") ;
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/isdProject", "root", "youngmoney$");
			return conn ;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null ;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null ;
		}
	}
}
