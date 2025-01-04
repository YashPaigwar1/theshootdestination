<?php
// Include the database connection
include('Includes/db_connect.php');

// Get 'id' and 'title' from the URL parameters
$albumId = isset($_GET['id']) ? $_GET['id'] : null;
$albumTitle = isset($_GET['title']) ? $_GET['title'] : null;

if ($albumId && $albumTitle) {
    // Fetch album details based on id and title
    $sql = "SELECT * FROM indoor_albums WHERE id = ? AND title = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("is", $albumId, $albumTitle);  // Bind id as integer and title as string
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $album = $result->fetch_assoc();
        // Display the album details
        echo "<h1>{$album['title']}</h1>";
        echo "<p>Created on: {$album['created_at']}</p>";
        echo "<div><img src='Admin/uploads/indoor_albums/{$album['image_paths']}' alt='{$album['title']}' /></div>";
        // You can extend this to show more album details
    } else {
        echo "<p>Album not found.</p>";
    }
} else {
    echo "<p>Invalid album ID or title.</p>";
}

// Close the database connection
$conn->close();
?>
