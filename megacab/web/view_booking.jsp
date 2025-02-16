<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Bookings</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
        .table th {
            background-color: #4CAF50;
            color: white;
        }
        .search-bar {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2 class="text-center text-success">Booking List</h2>

    <!-- Search Bar -->
    <input type="text" id="search" class="form-control search-bar" placeholder="Search bookings...">

    <table class="table table-hover">
        <thead>
            <tr>
                <th>Booking ID</th>
                <th>Customer Name</th>
                <th>Pickup Location</th>
                <th>Destination</th>
                <th>Fare(LKR)</th>
                <th>Date</th>
            </tr>
        </thead>
        <tbody id="bookingTable">
            <%
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/MegaCityCab", "root", "");
                    Statement stmt = conn.createStatement();
                    String query = "SELECT b.booking_id, c.name, b.pickup_location, b.destination, b.fare, b.booking_date " +
                                   "FROM bookings b INNER JOIN customers c ON b.customer_id = c.customer_id";
                    ResultSet rs = stmt.executeQuery(query);

                    while (rs.next()) {
            %>
                        <tr>
                            <td><%= rs.getInt("booking_id") %></td>
                            <td><%= rs.getString("name") %></td>
                            <td><%= rs.getString("pickup_location") %></td>
                            <td><%= rs.getString("destination") %></td>
                            <td>LKR <%= rs.getDouble("fare") %></td>
                            <td><%= rs.getTimestamp("booking_date") %></td>
                        </tr>
            <%
                    }
                    conn.close();
                } catch (Exception e) {
                    out.println("Database error: " + e.getMessage());
                }
            %>
        </tbody>
    </table>
</div>

<script>
    $(document).ready(function () {
        $("#search").on("keyup", function () {
            var value = $(this).val().toLowerCase();
            $("#bookingTable tr").filter(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
            });
        });
    });
</script>

</body>
</html>

