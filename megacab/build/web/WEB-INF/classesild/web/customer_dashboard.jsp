<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Dashboard - Mega City Cab</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* General Styles */
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
    background-color: #4CAF50;
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
    background-color: #333;
}

/* Main Content Styles */
.main-content {
    margin-left: 260px;
    padding: 20px;
    background-color: #fff;
}

header {
    background-color: #333;
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

/* Button Styles */
button {
    padding: 10px 20px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    transition: background-color 0.3s;
}

button:hover {
    background-color: #45a049;
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
            <h2>Customer Dashboard</h2>
        </div>
        <ul class="sidebar-menu">
            <li><a href="customer_profile.jsp"> My Profile </a></li>
            <li><a href="booking.jsp"> Make a New Booking </a></li>
            <li><a href="welcome.jsp">Logout</a></li>
        </ul>
    </div>

    <div class="main-content">
        <header>
            <h1>Welcome, ${sessionScope.username}!</h1>
        </header>

        <section class="dashboard-stats">
            <div class="card">
                <h3>Your Total Bookings</h3>
                <p>10</p>
            </div>
            <div class="card">
                <h3>Your Profile Status</h3>
                <p>Active</p>
            </div>
        </section>

        <section class="recent-activity">
            <h2>Recent Bookings</h2>
            <ul>
                <li>Booking #12345: Colombo to Kandy - $30</li>
                <li>Booking #12344: Colombo to Galle - $40</li>
                <li>Booking #12343: Colombo to Negombo - $25</li>
            </ul>
        </section>
    </div>
</body>
</html>


