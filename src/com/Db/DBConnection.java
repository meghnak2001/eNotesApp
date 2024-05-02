package com.Db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private static Connection conn;
	public static Connection getConn() {
		try {
			if(conn==null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection("jdbc:mysql://viaduct.proxy.rlwy.net:14480/railway","root","JhRpxqxyeyyvmcNQQNVdOYqvsaHmVxkp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}


}
