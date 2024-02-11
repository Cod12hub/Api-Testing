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

import com.entitys.Client;

import connection.DBconnection;

/**
 * Servlet implementation class SerachClientUser
 */
@WebServlet("/SerachClientUser")
public class SerachClientUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        
        if ("searchByUser".equals(action)) {
            long userId = Long.parseLong(request.getParameter("userId"));
            List<Client> clients =SerachClientUser(userId);
            request.setAttribute("clients", clients);
        } else if ("searchByName".equals(action)) {
            String companyName = request.getParameter("companyName");
            List<Client> clients = SerachClientUser(companyName);
            request.setAttribute("clients", clients);
        }
        
        request.getRequestDispatcher("/displayclientuser.jsp").forward(request, response);
    }


	private List<Client> SerachClientUser(String companyName) {
		// TODO Auto-generated method stub
		return null;
	}


	private List<Client> SerachClientUser(long userId) {
		// TODO Auto-generated method stub
		return null;
	}
}