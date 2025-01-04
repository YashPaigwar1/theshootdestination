<?php
// Include the database connection
include('Includes/db_connect.php');

// Fetch albums data
$sql = "SELECT id, title FROM indoor_albums";
$result = $conn->query($sql);

$albums = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        // Generate the URL using the id and title
        $albumUrl = "album_page.php?id=" . $row['id'] . "&title=" . urlencode($row['title']);

        // Store the album data with generated URL
        $albums[] = [
            'id' => $row['id'],
            'title' => $row['title'],
            'url' => $albumUrl // Include the generated URL
        ];
    }

    // Return the albums as JSON
    echo json_encode($albums);
} else {
    echo json_encode(["error" => "No albums found"]);
}

// Close the database connection
$conn->close();
?>
