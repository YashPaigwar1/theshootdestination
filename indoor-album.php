<?php
include('includes/db_connect.php'); // Correct the file path as per your structure

// Assuming $result is already populated with album data from the database
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>The Shoot Destination</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

  <!-- Navigation Bar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">The Shoot Destination</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item"><a class="nav-link" href="#">Home (current)</a></li>
          <li class="nav-item"><a class="nav-link" href="#">About</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Packages</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Our Sets</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Blog</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Contact Us</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Main Content -->
  <div class="container my-5">
    <h2 class="text-center mb-4">Indoor Shoot Album</h2>
    <div class="row">
      <?php
      // Assuming $result contains the album data from the database
      if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
          $imagePaths = explode(",", $row['image_paths']); // Convert comma-separated image paths into an array
          echo '<div class="col-md-4 mb-4">';
          echo '<div class="card shadow">';
          echo '<div class="card-body">';
          echo '<h5 class="card-title text-center">' . htmlspecialchars($row['title']) . '</h5>';
          echo '<div class="album-images mb-3 d-flex justify-content-center flex-wrap">';
          foreach ($imagePaths as $imagePath) {
            echo '<img src="' . $imagePath . '" class="img-thumbnail m-1" width="100" height="100">';
          }
          echo '</div>';
          // Trigger to open the modal
          echo '<button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#albumModal-' . $row['id'] . '">View Album</button>';
          echo '</div>';
          echo '</div>';
          echo '</div>';

          // Modal for the album
          echo '<div class="modal fade" id="albumModal-' . $row['id'] . '" tabindex="-1" aria-labelledby="albumModalLabel-' . $row['id'] . '" aria-hidden="true">';
          echo '<div class="modal-dialog modal-lg">';
          echo '<div class="modal-content">';
          echo '<div class="modal-header">';
          echo '<h5 class="modal-title" id="albumModalLabel-' . $row['id'] . '">' . htmlspecialchars($row['title']) . '</h5>';
          echo '<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>';
          echo '</div>';
          echo '<div class="modal-body">';
          echo '<div id="carousel-' . $row['id'] . '" class="carousel slide" data-bs-ride="carousel">';
          echo '<div class="carousel-inner">';
          $isFirst = true;
          foreach ($imagePaths as $imagePath) {
            echo '<div class="carousel-item ' . ($isFirst ? 'active' : '') . '">';
            echo '<img src="' . $imagePath . '" class="d-block w-100" alt="...">';
            echo '</div>';
            $isFirst = false;
          }
          echo '</div>';
          echo '<button class="carousel-control-prev" type="button" data-bs-target="#carousel-' . $row['id'] . '" data-bs-slide="prev">';
          echo '<span class="carousel-control-prev-icon" aria-hidden="true"></span>';
          echo '<span class="visually-hidden">Previous</span>';
          echo '</button>';
          echo '<button class="carousel-control-next" type="button" data-bs-target="#carousel-' . $row['id'] . '" data-bs-slide="next">';
          echo '<span class="carousel-control-next-icon" aria-hidden="true"></span>';
          echo '<span class="visually-hidden">Next</span>';
          echo '</button>';
          echo '</div>';
          echo '</div>';
          echo '</div>';
          echo '</div>';
        }
      } else {
        echo "<p>No albums found.</p>";
      }
      ?>
    </div>
  </div>

  <!-- Footer -->
  <footer class="bg-light text-center py-4">
    <p>Blvd Libertad, 34 m05200 Arévalo</p>
    <p>0034 37483 2445 322</p>
    <p>hello@company.com</p>
    <div>
      <a href="#" class="btn btn-primary btn-sm mx-2">Facebook</a>
      <a href="#" class="btn btn-primary btn-sm mx-2">Twitter</a>
      <a href="#" class="btn btn-primary btn-sm mx-2">Pinterest</a>
      <a href="#" class="btn btn-primary btn-sm mx-2">Behance</a>
    </div>
    <p class="mt-3">Copyright ©2024 All rights reserved | This template is made with ❤️ by Colorlib</p>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
