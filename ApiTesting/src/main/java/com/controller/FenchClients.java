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

import com.entitys.Client; // Import the Client entity class
import connection.DBconnection;

@WebServlet("/FenchClients")
public class FenchClients extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Client> clients = new ArrayList<>();

        try (Connection connection = DBconnection.getConnection();
             PreparedStatement statement = connection.prepareStatement("SELECT * FROM clients");
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                Long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                Long userId = resultSet.getLong("user_id");
                int companyId = resultSet.getInt("company_id");
                String email = resultSet.getString("email");
                String phone = resultSet.getString("phone");

                Client client = new Client(id, name, userId, companyId, email, phone);
                clients.add(client);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("clients", clients);
        request.getRequestDispatcher("/FenctchClient.jsp").forward(request, response);
    }
}
