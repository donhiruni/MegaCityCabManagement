<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer User Profile - Mega City Cab</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* General styling for the entire page */
body {
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
    color: #333;
}

/* Navbar Styling */
header {
    background-color: #333;
    padding: 15px 0;
    color: white;
}

.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0 20px;
}

.navbar .logo h1 {
    margin: 0;
    font-size: 24px;
}

.nav-links a {
    color: white;
    text-decoration: none;
    padding: 10px 20px;
    margin-left: 10px;
    background-color: #555;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.nav-links a:hover {
    background-color: #444;
}

/* Profile Section */
.profile-section {
    max-width: 800px;
    margin: 30px auto;
    background-color: white;
    padding: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    background-color: #fff;
}

.profile-card {
    text-align: center;
}

.profile-card h2 {
    font-size: 28px;
    color: #333;
    margin-bottom: 20px;
}

.customer-details p {
    font-size: 18px;
    color: #555;
    margin-bottom: 15px;
    text-align: left;
    padding-left: 20px;
}

.customer-details p strong {
    color: #333;
}

/* Footer Styling */
footer {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 10px 0;
    position: fixed;
    width: 100%;
    bottom: 0;
}

/* Mobile Responsiveness */
@media (max-width: 768px) {
    .profile-section {
        padding: 15px;
        margin: 10px;
    }

    .navbar .logo h1 {
        font-size: 20px;
    }

    .customer-details p {
        font-size: 16px;
        padding-left: 10px;
    }
}

        </style>
</head>
<body>
    <header>
        <div class="navbar">
            <div class="logo">
                <h1>Mega City Cab</h1>
            </div>
            <div class="nav-links">
                <a href="welcome.jsp">Logout</a>
            </div>
        </div>
    </header>

    <section class="profile-section">
        <div class="profile-card">
            <h2>Welcome, <%= session.getAttribute("username") %>!</h2>

            <!-- Display customer details -->
            <div class="customer-details">
                <p><strong>User ID:</strong> <%= session.getAttribute("user_id")%></p>
                <p><strong>User Name:</strong> <%= session.getAttribute("username")%></p>
                <p><strong>Password:</strong> <%= session.getAttribute("password")%></p>
            </div>
        </div>
    </section>

    <footer>
        <p>&copy; 2025 Mega City Cab | All rights reserved</p>
    </footer>
</body>
</html>
