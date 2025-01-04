<?php
// Enable error reporting for debugging
ini_set('display_errors', 1);
error_reporting(E_ALL);

// Include database connection
include('Includes/db_connect.php');

// Fetch about section data
$query = "SELECT about_text, image_path FROM about_section WHERE id = 1 LIMIT 1";
$result = $conn->query($query);

// Check for query errors
if (!$result) {
    die("Query failed: " . $conn->error);
}

// Check if data is found
if ($result->num_rows > 0) {
    // Fetch the row
    $row = $result->fetch_assoc();

    // Define the base path for images
    $basePath = 'Admin/uploads/about/';

    // Ensure the image path includes the base path if it's not already present
    $imagePath = $row['image_path'];
    if (strpos($imagePath, $basePath) === false) {
        $imagePath = $basePath . $imagePath;  // Add base path if it's missing
    }

    // Prepare the response data
    $data = [
        'image' => $imagePath,
        'text' => $row['about_text']
    ];
} else {
    $data = ["error" => "No data found"];
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">
    <!-- Core Style CSS -->
    <link rel="stylesheet" href="css/core-style.css">
    <link rel="stylesheet" href="style.css">
    <!-- Responsive CSS -->
    <link href="css/responsive.css" rel="stylesheet">
</head>

<body>

    <!-- Preloader -->
    <div id="preloader">
        <div class="showbox">
            <div class="loader">
                <svg class="circular" viewBox="25 25 50 50">
                    <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10"/>
                </svg>
            </div>
        </div>
        <div class="questions-area text-center">
            <p>Did you know?</p>
            <ul>
                <li>The largest photography competition is 353,768 entries.</li>
                <li>Photography is the toughest profession in the world.</li>
                <li>The world’s largest photo album by dimensions was 13 ft 11.5 in x 17 ft.</li>
                <li>The world’s largest photo mosaic featured 176,175 pictures.</li>
                <li>The world’s largest camera lens was a 5200mm lens attached to a canon.</li>
            </ul>
        </div>
    </div>

    <div class="gradient-background-overlay"></div>

    <!-- Header -->
    <header class="header-area bg-img" style="background-image: url(img/bg-img/14.jpg);">
        <div class="container-fluid h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12 h-100">
                    <div class="main-menu h-100">
                        <nav class="navbar h-100 navbar-expand-lg">
                            <a class="navbar-brand" href="index.html" style="color: aliceblue;">
                                <img src="img/img/logotsd1.png" width="100px" height="15px" alt="Logo"> The Shoot Destination
                            </a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#studioMenu" aria-controls="studioMenu" aria-expanded="false" aria-label="Toggle navigation">
                                <i class="fa fa-bars"></i> Menu
                            </button>
                            <div class="collapse navbar-collapse" id="studioMenu">
                                <ul class="navbar-nav ml-auto">
                                    <li class="nav-item active"><a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a></li>
                                    <li class="nav-item"><a class="nav-link" href="about-me.html">About</a></li>
                                    <li class="nav-item"><a class="nav-link" href="packages.html">Packages</a></li>
                                    <li class="nav-item"><a class="nav-link" href="oursets.html">Our Sets</a></li>
                                    <li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
                                    <li class="nav-item"><a class="nav-link" href="contact.html">Contact Us</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <div class="container-fluid p-0">
        <?php if (isset($data['image']) && !empty($data['image'])): ?>
            <!-- Display the image -->
            <div class="image-container">
                <img src="<?= $data['image']; ?>" alt="About Us Image" class="w-100">
            </div>
        <?php else: ?>
            <p>No image available</p>
        <?php endif; ?>

        <?php if (isset($data['text']) && !empty($data['text'])): ?>
            <!-- Display the about text -->
            <div class="container mt-4">
                <p><?= nl2br(htmlspecialchars($data['text'])) ?></p>
            </div>
        <?php else: ?>
            <p>No text available</p>
        <?php endif; ?>
    </div>

    <!-- Footer -->
    <footer class="footer-area">
        <div class="container-fluid h-100">
            <div class="row h-100">
                <div class="col-12 h-100">
                    <div class="footer-content h-100 d-md-flex align-items-center justify-content-between">
                        <div class="single-footer-content">
                            <img src="img/core-img/map.png" alt="">
                            <a href="#">Blvd Libertad, 34 m05200 Arévalo</a>
                        </div>
                        <div class="single-footer-content">
                            <img src="img/core-img/smartphone.png" alt="">
                            <a href="#">0034 37483 2445 322</a>
                        </div>
                        <div class="single-footer-content">
                            <img src="img/core-img/envelope-2.png" alt="">
                            <a href="#">hello@company.com</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>

    <!-- JavaScript & jQuery -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/active.js"></script>

</body>
</html>
