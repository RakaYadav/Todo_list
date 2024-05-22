package com.jsp.todo_list.dao;

import com.jsp.todo_list.dto.User;

public class LoginDao {
	User user=new User();

	private static final String FIND_EMAIL_PQUERY = "select * from user where email=?";
	private static final String FIND_PASSWORD_QUERY = "select * from user where email=?";

	

}
