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

@WebServlet("/UpdateClient")
public class UpdateClient extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String clientId = request.getParameter("clientId");
        String name = request.getParameter("name");
        String userId = request.getParameter("userId");
        String companyId = request.getParameter("companyId");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");

        Connection connection = null;
        PreparedStatement statement = null;

        try {
            connection = DBconnection.getConnection();
            String sql = "UPDATE clients SET name = ?, user_id = ?, company_id = ?, email = ?, phone = ? WHERE id = ?";
            statement = connection.prepareStatement(sql);
            
            statement.setString(1, name);
            statement.setString(2, userId);
            statement.setString(3, companyId);
            statement.setString(4, email);
            statement.setString(5, phone);
            statement.setString(6, clientId);

            statement.executeUpdate();

            response.sendRedirect("UpdateClient.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle database error
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
    }
}
