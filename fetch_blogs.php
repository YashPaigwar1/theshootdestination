<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include('includes/db_connect.php');

// Base path for images (Ensure the correct directory is being used)
$basePath = 'Admin/blog_images/';
$fallbackImage = '/img/default-image-path.png';  // Set a fallback image URL

// Query to fetch blog posts
$sql = "SELECT id, image_path, content, date, created_at, title FROM blog_posts ORDER BY date DESC";
$result = $conn->query($sql);

// Check if the query was successful
if ($result === false) {
    echo json_encode(["error" => "Query failed: " . $conn->error]);
    exit();
}

// Prepare the blogs array
$blogs = [];

// Check if there are any rows
if ($result->num_rows > 0) {
    // Loop through the results to fetch all blog posts
    while ($row = $result->fetch_assoc()) {
        // Handle image path (use the fallback image if the image path is empty)
        $imagePath = !empty($row['image_path']) ? $basePath . basename($row['image_path']) : $fallbackImage;

        // Prepare the blog details
        $blogs[] = [
            'id' => $row['id'],
            'title' => htmlspecialchars($row['title']),  // Prevent XSS by escaping HTML
            'image' => $imagePath, // Image URL (fallback if needed)
            'content' => htmlspecialchars_decode($row['content'], ENT_QUOTES),
            'date' => $row['date'],
            'created_at' => $row['created_at']
        ];
    }
} else {
    // No blogs found
    echo json_encode(["error" => "No blogs found"]);
    exit();
}

// Return the blogs data as JSON
header('Content-Type: application/json');
echo json_encode($blogs);

// Close the connection
$conn->close();
?>
