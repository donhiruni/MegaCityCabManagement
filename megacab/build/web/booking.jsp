<!DOCTYPE html>
<html>
<head>
    <title>Book a Cab - Mega City Cab</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <h2>Book a Cab</h2>
        <form action="AddBooking" method="post">
            <label>Customer ID:</label>
            <input type="text" name="customer_id" required>
            <label>Pickup Location:</label>
            <input type="text" name="pickup_location" required>
            <label>Destination:</label>
            <input type="text" name="destination" required>
            <label>Fare:</label>
            <input type="text" name="fare" required>
            <button type="submit">Book Now</button>
        </form>
    </div>
</body>
</html>
