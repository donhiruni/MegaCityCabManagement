<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Billing - Mega City Cab</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 30px;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0,0,0,0.1);
        }
        .invoice {
            display: none;
            padding: 20px;
            border: 2px solid #000;
            border-radius: 8px;
            background-color: #fff;
            margin-top: 20px;
        }
        .invoice-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .invoice h4 {
            margin-bottom: 10px;
        }
        @media print {
            body * {
                visibility: hidden;
            }
            .invoice, .invoice * {
                visibility: visible;
            }
            .invoice {
                position: absolute;
                left: 0;
                top: 0;
                width: 100%;
                box-shadow: none;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <h2 class="text-center text-success">Generate Bill</h2>
    
    <!-- Bill Generation Form -->
    <form action="" method="post">
        <div class="mb-3">
            <label class="form-label">Booking ID:</label>
            <input type="text" class="form-control" name="booking_id" required>
        </div>
        <button type="submit" class="btn btn-success">Generate Bill</button>
    </form>

    <%
        String bookingId = request.getParameter("booking_id");
        if (bookingId != null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/MegaCityCab", "root", "");
                PreparedStatement stmt = conn.prepareStatement
("SELECT b.booking_id, c.name, c.phone, b.pickup_location, b.destination, b.fare FROM bookings b INNER JOIN customers c ON b.customer_id = c.customer_id "
+ "WHERE b.booking_id = ?");
                stmt.setString(1, bookingId);
                ResultSet rs = stmt.executeQuery();

                if (rs.next()) {
    %>
                <!-- Invoice Section -->
                <div class="invoice" id="invoice">
                    <div class="invoice-header">
                        <h3>Mega City Cab</h3>
                        <p>123 Main Street, Colombo, Sri Lanka</p>
                        <p><strong>Phone:</strong> +94 77 123 4567</p>
                        <hr>
                    </div>
                    <h4>Invoice</h4>
                    <p><strong>Booking ID:</strong> <%= rs.getInt("booking_id") %></p>
                    <p><strong>Customer Name:</strong> <%= rs.getString("name") %></p>
                    <p><strong>Phone:</strong> <%= rs.getString("phone") %></p>
                    <p><strong>Pickup Location:</strong> <%= rs.getString("pickup_location") %></p>
                    <p><strong>Destination:</strong> <%= rs.getString("destination") %></p>
                    <p><strong>Total Fare:</strong> LRS: <%= rs.getDouble("fare") %></p>
                    <hr>
                    <p><em>Thank you for choosing Mega City Cab!</em></p>
                </div>

                <button class="btn btn-success mt-3" onclick="printInvoice()">Print Invoice</button>

                <script>
                    document.getElementById("invoice").style.display = "block";
                    function printInvoice() {
                        window.print();
                    }
                </script>

    <%
                } else {
                    out.println("<p class='text-danger mt-3'>Booking ID not found.</p>");
                }
                conn.close();
            } catch (Exception e) {
                out.println("<p class='text-danger mt-3'>Error: " + e.getMessage() + "</p>");
            }
        }
    %>
</div>

</body>
</html>

