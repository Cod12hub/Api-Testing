package com.controller;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.DBconnection;


@WebServlet("/AddClient")
public class AddClient extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public AddClient() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String name = request.getParameter("name");
	    String userId = request.getParameter("userId"); 
	    String companyId = request.getParameter("companyId");
	    String email = request.getParameter("email");
	    String phone = request.getParameter("phone");
	  
        Connection connection = null;
        PreparedStatement statement = null;

        try {
            connection = DBconnection.getConnection();
            String sql = "INSERT INTO clients (name, user_Id, company_Id,email,phone) VALUES (?, ?, ?, ?, ?)";
            statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, userId);
            statement.setString(3, companyId);
            statement.setString(4, email);
            statement.setString(5, phone);


            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (statement != null)
                    statement.close();
                if (connection != null)
                    connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        response.sendRedirect("Addclient.jsp");
    }
}