<?php
include('Includes/db_connect.php');

// Fetch 'About Us' data
$sql = "SELECT about_text, image_path FROM about_section WHERE id = 1 LIMIT 1";
$result = $conn->query($sql);

// Check if the query was successful
if ($result === false) {
    // Print error message if the query fails
    echo json_encode(["error" => "Query failed: " . $conn->error]);
    exit();
}

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();

    // Base path for images (Ensure no duplication)
    $basePath = 'http://localhost/new studio zip master/studio-master/studio-master/uploads/about/';  // Full URL path

    // Get the correct image path (ensure only the file name is appended)
    $imagePath = $basePath . basename($row['image_path']);  // Ensure only the file name is appended

    // Prepare the data to be returned as JSON
    $data = [
        'text' => $row['about_text'],  // Directly return raw text
        'image' => $imagePath  // Correct image path for front-end
    ];

    echo json_encode($data);  // Return JSON encoded response
} else {
    // In case of no data, send an error message
    echo json_encode(["error" => "No data found"]);
}

$conn->close();
?>
