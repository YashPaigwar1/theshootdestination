<?php
// Database credentials
$host = 'localhost';
$dbname = 'contact_form';
$username = 'root';
$password = '';

// Establish connection
$conn = new mysqli($host, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Handle form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $conn->real_escape_string($_POST['name']);
    $email = $conn->real_escape_string($_POST['email']);
    $mobile = $conn->real_escape_string($_POST['mobile']);
    $subject = $conn->real_escape_string($_POST['subject']);
    $message = $conn->real_escape_string($_POST['message']);
    
    // Insert data into database
    $sql = "INSERT INTO submissions (name, email, mobile, subject, message) 
            VALUES ('$name', '$email', '$mobile', '$subject', '$message')";
    
    if ($conn->query($sql) === TRUE) {
        header("Location: admin_panel.php"); // Redirect to admin panel
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Close connection
$conn->close();
?>
