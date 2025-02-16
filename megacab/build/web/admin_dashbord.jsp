<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Mega City Cab</title>
    <link rel="stylesheet" href="styles.css">
    <style>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f9;
    margin: 0;
    padding: 0;
}

/* Sidebar Styles */
.sidebar {
    height: 100vh;
    width: 250px;
    background-color: #333;
    position: fixed;
    left: 0;
    top: 0;
    padding: 20px;
    color: white;
}

.sidebar-header h2 {
    text-align: center;
    font-size: 24px;
    color: #fff;
    margin-bottom: 20px;
}

.sidebar-menu {
    list-style: none;
    padding: 0;
    margin: 0;
}

.sidebar-menu li {
    margin: 15px 0;
}

.sidebar-menu li a {
    text-decoration: none;
    color: #fff;
    font-size: 18px;
    display: block;
    padding: 10px;
    border-radius: 5px;
    transition: background-color 0.3s;
}

.sidebar-menu li a:hover {
    background-color: #4CAF50;
}

/* Main Content Styles */
.main-content {
    margin-left: 260px;
    padding: 20px;
    background-color: #fff;
}

header {
    background-color: #4CAF50;
    color: white;
    padding: 20px;
    margin-bottom: 20px;
    text-align: center;
}

.dashboard-stats {
    display: flex;
    justify-content: space-between;
    margin-bottom: 30px;
}

.card {
    background-color: #fff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    padding: 20px;
    width: 22%;
    text-align: center;
    border-radius: 10px;
    background-color: #fff;
    transition: transform 0.3s;
}

.card:hover {
    transform: translateY(-10px);
}

.card h3 {
    color: #333;
    font-size: 20px;
}

.card p {
    font-size: 24px;
    color: #4CAF50;
}

/* Recent Activity Styles */
.recent-activity {
    background-color: #fff;
    padding: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
}

.recent-activity h2 {
    font-size: 24px;
    color: #333;
    margin-bottom: 20px;
}

.recent-activity ul {
    list-style: none;
    padding: 0;
}

.recent-activity li {
    margin: 10px 0;
    font-size: 16px;
    color: #666;
}

/* Mobile Responsive */
@media screen and (max-width: 768px) {
    .sidebar {
        width: 100%;
        height: auto;
        position: relative;
    }
    .main-content {
        margin-left: 0;
    }
    .dashboard-stats {
        flex-direction: column;
    }
    .card {
        width: 100%;
        margin-bottom: 20px;
    }
}

    </style>
</head>
<body>
    <div class="sidebar">
        <div class="sidebar-header">
            <h2>Admin Dashboard</h2>
        </div>
        <ul class="sidebar-menu">
            <li><a href="booking.jsp">Manage Bookings</a></li>
            <li><a href="view_booking.jsp">View Bookings</a></li>
            <li><a href="register.jsp">Manage Customers</a></li>
            <li><a href="view_customer.jsp">View Customers</a></li>
            <li><a href="drivers.jsp">Manage Drivers</a></li>
            <li><a href="cars.jsp">Manage Cars</a></li>
            <li><a href="billing.jsp">Generate Bill</a></li>
            <li><a href="welcome.jsp">Logout</a></li>
        </ul>
    </div>

    <div class="main-content">
        <header>
            <h1>Welcome, Admin!</h1>
        </header>
        
        <section class="dashboard-stats">
            <div class="card">
                <h3>Total Bookings</h3>
                <p>500</p>
            </div>
            <div class="card">
                <h3>Total Customers</h3>
                <p>1200</p>
            </div>
            <div class="card">
                <h3>Total Drivers</h3>
                <p>200</p>
            </div>
            <div class="card">
                <h3>Total Cars</h3>
                <p>150</p>
            </div>
        </section>

        <section class="recent-activity">
            <h2>Recent Activity</h2>
            <ul>
                <li>Booking #12345 made by Customer #987</li>
                <li>Driver John assigned to Car ABC123</li>
                <li>New Customer Jane added to the system</li>
            </ul>
        </section>
    </div>
</body>
</html>


