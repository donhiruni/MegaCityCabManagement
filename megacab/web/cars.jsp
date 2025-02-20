<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Cars - Mega City Cab</title>
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
    <h2 class="text-center text-success">Manage Cars</h2>

    <!-- Add New Car Form -->
    <div class="card p-4 mb-4">
        <h4>Add a New Car</h4>
        <form action="ManageCars" method="post">
            <div class="mb-3">
                <label class="form-label">Car Model:</label>
                <input type="text" class="form-control" name="model" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Plate Number:</label>
                <input type="text" class="form-control" name="plate_number" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Driver ID:</label>
                <input type="text" class="form-control" name="driver_id" required>
            </div>
            <button type="submit" class="btn btn-success">Add Car</button>
        </form>
    </div>

    <!-- Search Bar -->
    <input type="text" id="search" class="form-control search-bar" placeholder="Search cars...">

    <!-- Cars Table -->
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Car ID</th>
                <th>Car Model</th>
                <th>Plate Number</th>
                <th>Driver Name</th>
            </tr>
        </thead>
        <tbody id="carsTable">
            <%
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/MegaCityCab", "root", "");
                    Statement stmt = conn.createStatement();
                    String query = "SELECT c.car_id, c.model, c.plate_number, d.name AS driver_name " +
                                   "FROM cars c INNER JOIN drivers d ON c.driver_id = d.driver_id";
                    ResultSet rs = stmt.executeQuery(query);

                    while (rs.next()) {
            %>
                        <tr>
                            <td><%= rs.getInt("car_id") %></td>
                            <td><%= rs.getString("model") %></td>
                            <td><%= rs.getString("plate_number") %></td>
                            <td><%= rs.getString("driver_name") %></td>
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
            $("#carsTable tr").filter(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
            });
        });
    });
</script>

</body>
</html>

