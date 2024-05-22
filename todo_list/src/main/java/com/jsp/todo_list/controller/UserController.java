package com.jsp.todo_list.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.todo_list.dao.UserDao;
import com.jsp.todo_list.dto.User;

public class UserController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	UserDao userDao = new UserDao();

	public void init() {
		@SuppressWarnings("unused")
		UserDao dao = new UserDao();
		

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		register(req, resp);
	}
	public void register(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		System.out.println("this is my code");
		String firstName = req.getParameter("firstName");
		String lastName = req.getParameter("lastName");
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		User emp = new User();

		emp.setFirstname(firstName);
		emp.setLastName(lastName);
		emp.setEmail(email);
		emp.setPassword(password);
		try {
			int result = userDao.employeeRegister(emp);
			if (result == 1) {
				req.setAttribute("NOTIFICATION", "User register successfully");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		RequestDispatcher requestDispatcher = req.getRequestDispatcher("register.jsp");
		requestDispatcher.include(req, resp);
	}

}
