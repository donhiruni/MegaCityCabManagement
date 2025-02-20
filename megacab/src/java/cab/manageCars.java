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
@WebServlet("/ManageCars")
public class manageCars extends HttpServlet {

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
        String model = request.getParameter("model");
        String plateNumber = request.getParameter("plate_number");
        int driverId = Integer.parseInt(request.getParameter("driver_id"));

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/MegaCityCab", "root", "");
            PreparedStatement stmt = conn.prepareStatement("INSERT INTO cars (model, plate_number, driver_id) VALUES (?,?,?)");
            stmt.setString(1, model);
            stmt.setString(2, plateNumber);
            stmt.setInt(3, driverId);
            stmt.executeUpdate();
            conn.close();
            response.sendRedirect("cars.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
