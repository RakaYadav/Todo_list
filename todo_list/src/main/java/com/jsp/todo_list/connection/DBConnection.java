package com.jsp.todo_list.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	private static String url = "jdbc:mysql://localhost:3306/todo_list";
	private static String username = "root";
	private static String password = "Raka@2001";

	public static Connection getConnection() {

		Connection connection = null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			connection = DriverManager.getConnection(url, username, password);

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return connection;

	}

}
