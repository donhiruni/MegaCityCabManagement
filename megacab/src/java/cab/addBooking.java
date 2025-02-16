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
@WebServlet("/AddBooking")
public class addBooking extends HttpServlet {

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
        int customerId = Integer.parseInt(request.getParameter("customer_id"));
        String pickupLocation = request.getParameter("pickup_location");
        String destination = request.getParameter("destination");
        double fare = Double.parseDouble(request.getParameter("fare"));

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/MegaCityCab", "root", "");
            PreparedStatement stmt = conn.prepareStatement
        ("INSERT INTO bookings (customer_id, pickup_location, destination, fare) VALUES (?,?,?,?)");
            stmt.setInt(1, customerId);
            stmt.setString(2, pickupLocation);
            stmt.setString(3, destination);
            stmt.setDouble(4, fare);
            stmt.executeUpdate();
            conn.close();
            response.sendRedirect("customer_success.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
