<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Record Added Successful</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* General styles for the entire page */
body {
    font-family: 'Arial', sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Success message container */
.success-message {
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    text-align: center;
    padding: 40px;
    max-width: 600px;
    width: 100%;
    margin: 20px;
}

.success-message h1 {
    font-size: 36px;
    color: #4CAF50;
    margin-bottom: 20px;
}

.success-message p {
    font-size: 18px;
    color: #555;
    margin-bottom: 30px;
}

.success-message a {
    display: inline-block;
    text-decoration: none;
    background-color: #4CAF50;
    color: white;
    padding: 12px 25px;
    font-size: 18px;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.success-message a:hover {
    background-color: #45a049;
}

/* Mobile responsiveness */
@media (max-width: 768px) {
    .success-message {
        padding: 20px;
    }

    .success-message h1 {
        font-size: 28px;
    }

    .success-message p {
        font-size: 16px;
    }

    .success-message a {
        padding: 10px 20px;
        font-size: 16px;
    }
}
        </style>
</head>
<body>
    <div class="success-message">
        <h1>Data Added Successful!</h1>
        <p>Thank you for using with Mega City Cab Application. The information has been saved successfully.</p>
        <a href="welcome.jsp"> Go To Home Page </a>
    </div>
</body>
</html>

