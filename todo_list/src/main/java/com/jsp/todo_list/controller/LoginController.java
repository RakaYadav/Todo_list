package com.jsp.todo_list.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.todo_list.dao.LoginDao;
import com.jsp.todo_list.dto.User;

public class LoginController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	LoginDao dao = new LoginDao();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		int user = dao.checkEmail(email);
		if (user==1) {
			int user1 = dao.checkPassword(password);
			if (user1==1) {
				HttpSession httpSession = req.getSession();
				req.setAttribute("message", "User login successful!");
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("todolist.jsp");
				requestDispatcher.forward(req, resp);

			} else {
				req.setAttribute("notification", "Invalid password");
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("login.jsp");
				requestDispatcher.include(req, resp);
			}

		} else {
			req.setAttribute("notification", "Invalid email");
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("login.jsp");
			requestDispatcher.include(req, resp);

		}

	}

}
