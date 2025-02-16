<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Mega City Cab</title>
    <link rel="stylesheet" href="styles.css">
    <style>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f9;
    margin: 0;
    padding: 0;
    color: #333;
}

h1, h2, h3 {
    color: #333;
}

a {
    text-decoration: none;
    color: #fff;
}

/* Header & Navbar Styles */
header {
    background-color: #333;
    color: white;
    padding: 20px 0;
    position: fixed;
    top: 0;
    width: 100%;
    z-index: 10;
}

.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 90%;
    margin: 0 auto;
}

.logo h1 {
    font-size: 28px;
    font-weight: bold;
    margin-left: 20px;
}

.nav-links a {
    margin-right: 20px;
    font-size: 18px;
    padding: 10px;
    border-radius: 5px;
    background-color: #4CAF50;
    transition: background-color 0.3s;
}

.nav-links a:hover {
    background-color: #45a049;
}

/* Welcome Section Styles */
.welcome-section {
    display: flex;
    justify-content: space-between;
    padding: 100px 20px 20px;
    background-color: #fff;
    margin-top: 70px;
}

.intro-text {
    max-width: 50%;
}

.intro-text h2 {
    font-size: 40px;
    font-weight: bold;
}

.intro-text p {
    font-size: 18px;
    margin-top: 10px;
}

.cta-button {
    display: inline-block;
    margin-top: 20px;
    background-color: #4CAF50;
    padding: 12px 30px;
    color: white;
    font-size: 18px;
    border-radius: 5px;
    transition: background-color 0.3s;
}

.cta-button:hover {
    background-color: #45a049;
}

.image-section {
    max-width: 45%;
}

.cab-image {
    width: 100%;
    border-radius: 10px;
}

/* Features Section Styles */
.features {
    text-align: center;
    padding: 40px 20px;
    background-color: #f4f4f9;
}

.features h2 {
    font-size: 32px;
    margin-bottom: 30px;
}

.feature-cards {
    display: flex;
    justify-content: center;
    gap: 20px;
}

.feature-card {
    background-color: #fff;
    padding: 20px;
    width: 250px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s, box-shadow 0.3s;
}

.feature-card:hover {
    transform: translateY(-10px);
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

.feature-card h3 {
    font-size: 22px;
    margin-bottom: 10px;
}

.feature-card p {
    font-size: 16px;
    color: #666;
}

/* Footer Styles */
footer {
    text-align: center;
    background-color: #333;
    color: white;
    padding: 15px 0;
    position: fixed;
    bottom: 0;
    width: 100%;
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
                <a href="login.jsp">Login</a>
                <a href="register.jsp">Register</a>
            </div>
        </div>
    </header>

    <section class="welcome-section">
        <div class="intro-text">
            <h2>Welcome to Mega City Cab</h2>
            <p>Your reliable partner for fast, comfortable, and safe rides in Colombo City.</p>
            <a href="login.jsp" class="cta-button">Get Started</a>
        </div>
        <div class="image-section">
            <img src="images/cab.jpg" alt="Cab Image" class="cab-image">
        </div>
    </section>

    <section class="features">
        <h2>Why Choose Mega City Cab?</h2>
        <div class="feature-cards">
            <div class="feature-card">
                <h3>Fast Service</h3>
                <p>Get a ride quickly with our fast booking system and reliable drivers.</p>
            </div>
            <div class="feature-card">
                <h3>Safe & Secure</h3>
                <p>Your safety is our top priority. Our drivers are highly trained and professional.</p>
            </div>
            <div class="feature-card">
                <h3>Affordable Rates</h3>
                <p>We offer competitive pricing with no hidden fees. Get value for your money.</p>
            </div>
        </div>
    </section>

    <footer>
        <p>&copy; 2025 Mega City Cab | All rights reserved</p>
    </footer>
</body>
</html>

