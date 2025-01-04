<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
include('includes/db_connect.php');

// Fetch data from the database
$sql = "SELECT title, video_paths, thumbnail_paths FROM shoot_videos";
$result = $conn->query($sql);

$albums = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        // Split video_paths and thumbnail_paths into arrays
        $videoPaths = explode(",", $row['video_paths']);
        $thumbnailPaths = explode(",", $row['thumbnail_paths']);

        // Prepare album data for each album (you can change how to handle multiple videos/thumbnails)
        $albums[] = [
            'title' => $row['title'],
            'video_paths' => $videoPaths,
            'thumbnail_paths' => $thumbnailPaths
        ];
    }
}

header('Content-Type: application/json');
echo json_encode($albums);

$conn->close();
?>
