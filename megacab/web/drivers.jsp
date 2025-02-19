<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Drivers - Mega City Cab</title>
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
    <h2 class="text-center text-success">Manage Drivers</h2>

    <!-- Add New Driver Form -->
    <div class="card p-4 mb-4">
        <h4>Add a New Driver</h4>
        <form action="ManageDrivers" method="post">
            <div class="mb-3">
                <label class="form-label">Name:</label>
                <input type="text" class="form-control" name="name" required>
            </div>
            <div class="mb-3">
                <label class="form-label">License Number:</label>
                <input type="text" class="form-control" name="license_number" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Phone:</label>
                <input type="text" class="form-control" name="phone" required>
            </div>
            <button type="submit" class="btn btn-success">Add Driver</button>
        </form>
    </div>

    <!-- Search Bar -->
    <input type="text" id="search" class="form-control search-bar" placeholder="Search drivers...">

    <!-- Drivers Table -->
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Driver ID</th>
                <th>Name</th>
                <th>License Number</th>
                <th>Phone</th>
            </tr>
        </thead>
        <tbody id="driversTable">
            <%
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/MegaCityCab", "root", "");
                    Statement stmt = conn.createStatement();
                    String query = "SELECT * FROM drivers";
                    ResultSet rs = stmt.executeQuery(query);

                    while (rs.next()) {
            %>
                        <tr>
                            <td><%= rs.getInt("driver_id") %></td>
                            <td><%= rs.getString("name") %></td>
                            <td><%= rs.getString("license_number") %></td>
                            <td><%= rs.getString("phone") %></td>
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
            $("#driversTable tr").filter(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
            });
        });
    });
</script>

</body>
</html>
