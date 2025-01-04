<?php
include("includes/db_connect.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $subject = $_POST['subject'];
    $message = $_POST['message'];
    $mobile = $_POST['mobile'];
    $date = date("Y-m-d H:i:s"); // Get current date and time

    // Prepared statement to prevent SQL injection
    $stmt = $conn->prepare("INSERT INTO contact_form (name, email, subject, message, mobile, date) VALUES (?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssssss", $name, $email, $subject, $message, $mobile, $date);

    if ($stmt->execute()) {
        // Redirect to WhatsApp after successful submission
        header('Location: https://wa.me/917020010734?text=' . urlencode("Hello, I am interested in your services. My name is $name and my query is about: $subject."));
        exit();
    } else {
        echo "Error: " . $stmt->error;
    }

    // Close the prepared statement
    $stmt->close();
}

$conn->close();
?>
