package oes.db;

import java.sql.*;

public class Provider {
	private static String driver = "com.mysql.jdbc.Driver";
	private static String url = "jdbc:mysql://localhost:3306/examdb";
	private static String user = "root";
	private static String password = "";

	public static Connection getOracleConnection() {
		Connection con = null;
		try {
			Class.forName(driver);

			con = DriverManager.getConnection(url, user, password);
			System.out.println("Connection successful!");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
}
