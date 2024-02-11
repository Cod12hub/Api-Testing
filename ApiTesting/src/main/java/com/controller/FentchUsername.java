package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entitys.User;

import connection.DBconnection;

/**
 * Servlet implementation class FentchUsername
 */
@WebServlet("/FentchUsername")
public class FentchUsername extends HttpServlet {
	private static final long serialVersionUID = 1L;
 

	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        String usernameFilter = request.getParameter("username");
	        List<User> filteredUsers = new ArrayList<>();

	        try (Connection connection = DBconnection.getConnection();
	             PreparedStatement statement = connection.prepareStatement("SELECT * FROM users WHERE username LIKE ?")) {
	            statement.setString(1, "%" + usernameFilter + "%");

	            try (ResultSet resultSet = statement.executeQuery()) {
	                while (resultSet.next()) {
	                    Long id = resultSet.getLong("id");
	                    String username = resultSet.getString("username");
	                    String email = resultSet.getString("email");
	                    String phone = resultSet.getString("phone");

	                    User user = new User(id, username, email, phone);
	                    filteredUsers.add(user);
	                }
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        request.setAttribute("users", filteredUsers); 
	        request.getRequestDispatcher("/Filter.jsp").forward(request, response);
	    }
	}
