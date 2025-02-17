/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package cab;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
@WebServlet("/RegisterCustomer")
public class registerCustomer extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String nic = request.getParameter("nic");
        String phone = request.getParameter("phone");

               try {
            // Load MySQL Driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Establish Connection
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/MegaCityCab", "root", "");

            // Prepare SQL Query
            String sql = "INSERT INTO customers (name, address, nic, phone) VALUES (?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, address);
            stmt.setString(3, nic);
            stmt.setString(4, phone);

            // Execute Update
            int rowsInserted = stmt.executeUpdate();
            conn.close();

            if (rowsInserted > 0) {
                response.sendRedirect("customer_success.jsp");
            } else {
                response.getWriter().println("Registration failed. Please try again.");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}

