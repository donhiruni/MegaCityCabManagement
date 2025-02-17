<!DOCTYPE html>
<html>
<head>
    <title>Register - Mega City Cab</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <h2>Customer Registration</h2>
        <form action="RegisterCustomer" method="post">
            <label>Name:</label>
            <input type="text" name="name" required>
            <label>Address:</label>
            <input type="text" name="address" required>
            <label>NIC:</label>
            <input type="text" name="nic" required>
            <label>Phone:</label>
            <input type="text" name="phone" required>
            <button type="submit">Register</button>
        </form>
    </div>
</body>
</html>
