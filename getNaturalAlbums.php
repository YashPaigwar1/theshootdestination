<?php
// db_connect.php should be included here
include('includes/db_connect.php');

// Fetch albums data
$sql = "SELECT id, title, image_paths FROM natural_albums";
$result = $conn->query($sql);

$albums = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $albumUrl = "album_page.php?id=" . $row['id'] . "&title=" . urlencode($row['title']);
        
        // Define the base path for images
        $basePath = 'Admin/uploads/natural_albums/';

        // Explode the image paths from the database (assuming the paths are stored in a comma-separated format)
        $imagePaths = explode(',', $row['image_paths']);
        $fullImagePaths = [];

        // Loop through each image path and ensure base path is only added once
        foreach ($imagePaths as $path) {
            $path = trim($path);  // Clean up any extra spaces
            
            // If the image path doesn't already have the base path, prepend it
            if (strpos($path, $basePath) === false) {
                $fullImagePaths[] = $basePath . $path;  // Add base path only once
            } else {
                $fullImagePaths[] = $path;  // If the base path is already present, use the path as it is
            }
        }

        // Add the album data with the full image paths
        $albums[] = [
            'id' => $row['id'],
            'title' => $row['title'],
            'image_paths' => $fullImagePaths, 
            'url' => urlencode($albumUrl)
        ];
    }

    // Output the album data in JSON format
    echo json_encode($albums);
} else {
    echo json_encode(["error" => "No albums found"]);
}

// Close the database connection
$conn->close();
?>
