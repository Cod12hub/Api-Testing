package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.DBconnection;

@WebServlet("/DeleteUser")
public class DeleteUser extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	   String userId = request.getParameter("id");
           
           if (userId != null) {
               // Database connection parameters
               String url = "jdbc:mysql://localhost:3306/projdata";
               String username = "root";
               String password = "admin";
               
               try (
                   Connection conn = DriverManager.getConnection(url, username, password);
                   PreparedStatement pstmt = conn.prepareStatement("DELETE FROM users WHERE id = ?")
               ) {
                   pstmt.setString(1, userId);
                   
                   int rowsAffected = pstmt.executeUpdate();
                   
                   if (rowsAffected > 0) {
                       response.sendRedirect("UserList.jsp");
                   } else {
                       response.getWriter().println("No user found with ID: " + userId);
                   }
               } catch (SQLException e) {
                   response.getWriter().println("SQL Error occurred while deleting user with ID: " + userId);
                   e.printStackTrace();
               }
           } else {
               response.getWriter().println("No user ID provided for deletion");
           }
       }
   }