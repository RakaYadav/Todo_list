package com.jsp.todo_list.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.jsp.todo_list.connection.DBConnection;
import com.jsp.todo_list.dto.User;

public class UserDao {

	public int employeeRegister(User employee) {
		String INSERT_QUERY = "INSERT INTO user values(?,?,?,?)";

		int result =0;
		try (Connection connection = DBConnection.getConnection();
				// create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_QUERY);) {
			
			preparedStatement.setString(1, employee.getFirstname());
			preparedStatement.setString(2, employee.getLastName());
			preparedStatement.setString(3, employee.getEmail());
			preparedStatement.setString(4, employee.getPassword());
			
			result=preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;

	}

}
