<?php


// Include the database connection
include('includes/db_connect.php'); // Adjust the path if needed

// Get the blog ID from the URL
$postId = isset($_GET['id']) ? (int)$_GET['id'] : 0;

// Fetch the detailed blog post from the database
$blogPost = [];
if ($postId > 0) {
    $sql = "SELECT * FROM blog_posts WHERE id = $postId";
    $result = $conn->query($sql);
    if ($result && $result->num_rows > 0) {
        $blogPost = $result->fetch_assoc();
        
        // Define base image path
        $baseImagePath = '/Admin/blog_images/';
        
        // Check if image path exists and is not empty
        if (isset($blogPost['image_path']) && !empty($blogPost['image_path'])) {
            // Properly decode the image path to handle encoded spaces and special characters
            $blogPost['image_path'] = $baseImagePath . urldecode(basename($blogPost['image_path']));
        } else {
            // Use a default image if no image is found
            $blogPost['image_path'] = '/images/default-image.jpg';
        }
    }
}

$conn->close();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Photography services website">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>The Shoot Destination | Blogs</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="css/core-style.css">
    <link rel="stylesheet" href="style.css">

    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">


  <style>
     body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            color: #333;
            line-height: 1.6;
        }

        .container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 40px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        }

        h1 {
            font-size: 2.5rem;
            color: #222;
            text-align: center;
            margin: 20px 0 30px;
        }

        .section-divider {
            width: 50px;
            height: 5px;
            margin: 20px auto;
            background-color: #007bff;
            border-radius: 5px;
        }

        .blog-image {
            display: block;
            margin: 0 auto;
            width: 100%;
            max-width: 800px;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        }

        .blog-info {
            font-size: 1rem;
            color: #666;
            text-align: center;
            margin-bottom: 20px;
        }

        .content-text {
            font-size: 1.1rem;
            line-height: 1.8;
            text-align: justify;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }

        .back-btn {
            display: block;
            padding: 12px 25px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            text-align: center;
            font-size: 1rem;
            border-radius: 6px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .back-btn:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }
     /* Hamburger Menu Animation */
.navbar-toggler {
    font-size: 1.2rem;
    padding: 0.5rem 1rem;
    color: white;
    border: none;
    background-color: transparent;
}

/* Navbar Brand */
.navbar-brand img {
    width: 100px;
    height: auto;
}
.section-divider {
    width: 50px;
    height: 5px;
    margin: 20px auto;
    background-color: #007bff;
    border-radius: 5px;
}

h1 {
    font-size: 2.5rem;
    color: #222;
    text-align: center;
    margin: 20px 0 30px;
}
/* Preloader styles */
#preloader {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: #000;
    z-index: 9999;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    color: white;
}

/* Hide Preloader after page load */
body.loaded #preloader {
    display: none;
}

/* Navbar Adjustment for small screen */
@media (max-width: 991px) {
    .navbar-brand {
        display: flex;
        align-items: center;
    }

    .navbar-toggler {
        margin-left: auto;
    }

    .text-white {
        font-size: 1rem;
    }

    .navbar-nav {
        text-align: center;
    }

    .navbar-nav .nav-item {
        margin: 10px 0;
    }
}

/* Navbar on large screen */
@media (min-width: 992px) {
    .navbar-brand {
        margin-right: auto;
    }

    .navbar-nav {
        margin-left: auto;
    }

    .navbar-toggler {
        display: none;
    }
}

/* Section styles */
.header-area h5 {
    margin-left: 12px;
    margin-top: 2px;
    font-size: 0.85rem;
    line-height: 1.4;
    font-weight: 500;
    color: #f8f9fa;
}

/* Section Divider */
.section-divider {
    width: 50px;
    height: 5px;
    margin: 20px auto;
    background-color: #007bff;
    border-radius: 5px;
}

h1 {
    font-size: 2.5rem;
    color: #222;
    text-align: center;
    margin: 20px 0 30px;
}


   
    </style>
</head>
<body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="showbox">
            <div class="loader">
                <svg class="circular" viewBox="25 25 50 50">
                    <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10"></circle>
                </svg>
            </div>
        </div>
    </div>

    <!-- Header -->
    <header class="header-area bg-img" style="background-image: url('img/bg-img/14.jpg');">
        <div class="container-fluid h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12 h-100">
                    <div class="main-menu h-100">
                        <nav class="navbar h-100 navbar-expand-lg">
                            <a class="navbar-brand d-flex align-items-center" href="index.html" style="color: aliceblue;">
                                <img src="img/img/logotsd1.png" width="100" height="15" alt="Logo">
                                <h5 class="text-white mb-0 ms-2">The Shoot Destination</h5>
                            </a>
                            <button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#studioMenu" aria-controls="studioMenu" aria-expanded="false" aria-label="Toggle navigation">
                                <i class="fa fa-bars"></i>
                            </button>
                            <div class="collapse navbar-collapse" id="studioMenu">
                                <ul class="navbar-nav ms-auto">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="index.html">Home</a>
                                    </li>
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

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>


    <!-- Header Area End -->

    <!-- Social Sidebar Area Start -->
    <div class="social-sidebar-area">
      <!-- Social Area -->
      <div class="social-info-area">
        <a
          href="#"
          data-toggle="tooltip"
          data-placement="right"
          title="Facebook"
          ><i class="fa fa-facebook" aria-hidden="true"></i>
          <span>Facebook</span></a
        >
        <a href="#" data-toggle="tooltip" data-placement="right" title="Twitter"
          ><i class="fa fa-twitter" aria-hidden="true"></i>
          <span>Twitter</span></a
        >
        <a
          href="#"
          data-toggle="tooltip"
          data-placement="right"
          title="Pinterest"
          ><i class="fa fa-pinterest" aria-hidden="true"></i>
          <span>Pinterest</span></a
        >
        <a href="#" data-toggle="tooltip" data-placement="right" title="Behance"
          ><i class="fa fa-behance" aria-hidden="true"></i>
          <span>Behance</span></a
        >
      </div>
    </div>
    <!-- Social Sidebar Area End -->

    <!-- About Me Area Start -->
   
    <!-- Follow Me Instagram Area End -->\
    <div class="container">
        <?php if (!empty($blogPost)): ?>
            <h1><?= !empty($blogPost['title']) ? htmlspecialchars($blogPost['title']) : "Blog Title Unavailable"; ?></h1>

            <hr class="section-divider">
            <img src="<?= htmlspecialchars($blogPost['image_path']) ?>" class="blog-image" alt="Blog Image">
            <div class="blog-info"><p><strong>Posted on:</strong> <?= htmlspecialchars($blogPost['date']) ?></p></div>
            <div class="content-text"><?= nl2br($blogPost['content']) ?></div>

            <a href="blog.html" class="back-btn">Back to Blog</a>
        <?php else: ?>
            <p>Blog post not found.</p>
        <?php endif; ?>
    </div>

    <!-- Footer -->
    <footer class="footer-area">
        <div class="container-fluid h-100">
            <div class="row h-100">
                <div class="col-12 h-100">
                    <div class="footer-content h-100 d-md-flex align-items-center justify-content-between">
                        <div class="single-footer-content">
                            <img src="img/core-img/map.png" alt="Map Icon">
                            <a href="#">Blvd Libertad, 34 m05200 Arévalo</a>
                        </div>
                        <div class="single-footer-content">
                            <img src="img/core-img/smartphone.png" alt="Phone Icon">
                            <a href="#">0034 37483 2445 322</a>
                        </div>
                        <div class="single-footer-content">
                            <img src="img/core-img/envelope-2.png" alt="Email Icon">
                            <a href="#">hello@company.com</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Area End -->

    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
    <p>
      Copyright &copy;
      <script>
        document.write(new Date().getFullYear());
      </script>
      All rights reserved | This template is made with
      <i class="fa fa-heart-o" aria-hidden="true"></i> by
      <a href="https://colorlib.com" target="_blank">Colorlib</a>
    </p>
    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

    <!-- jQuery (Necessary for All JavaScript Plugins) -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="js/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
  </body>
</html>
