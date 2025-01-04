-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2024 at 08:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tsd`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_section`
--

CREATE TABLE `about_section` (
  `id` int(11) NOT NULL,
  `about_text` text NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_section`
--

INSERT INTO `about_section` (`id`, `about_text`, `image_path`) VALUES
(1, '<p>At <strong>The Shoot Destination</strong>, we believe that every moment has a story to tell, and our goal is to capture those stories through the lens of our cameras. We are a team of passionate photographers with a shared love for creating timeless, artistic images that speak volumes. Whether it’s a wedding, a family portrait, or a creative editorial shoot, our commitment is to deliver high-quality, beautiful imagery that reflects the essence of our clients’ personalities and the unique moments they wish to cherish forever.</p><h4>Our Journey</h4><p>Founded by a group of seasoned photographers, <strong>The Shoot Destination</strong> was born out of a desire to make photography accessible to everyone, while maintaining the highest level of artistry and professionalism. With years of experience behind the camera, we’ve had the privilege of working with countless clients, capturing milestones, celebrations, and personal stories across diverse settings and styles. From intimate events to grand occasions, we pride ourselves on our ability to adapt to every unique situation and bring out the best in every moment.</p><h4>Our Philosophy</h4><p>We approach every shoot with a fresh perspective, ensuring that each photograph tells a distinct story. We don’t just take pictures; we craft memories. Our philosophy revolves around understanding the essence of our clients and translating that into stunning visuals. We take the time to listen to your ideas, understand your vision, and work with you to create a shoot that feels personal and authentic.</p><p>Our work is rooted in capturing natural moments while adding a touch of creative flair. We embrace candid shots that reflect the real emotions of the day and combine them with carefully curated portraits that highlight beauty, elegance, and creativity.</p><h4>What Sets Us Apart</h4><ul><li><strong>Expertise</strong>: With years of professional experience, our photographers are equipped with the technical know-how and artistic vision to capture the best possible shot.</li><li><strong>Customized Experience</strong>: We understand that every client is unique, and we offer tailored packages that cater to different needs, preferences, and budgets. Whether you need a photoshoot for a special occasion, a corporate event, or a lifestyle shoot, we’ve got you covered.</li><li><strong>State-of-the-Art Equipment</strong>: We use only the latest, high-end cameras, lenses, and lighting equipment to ensure that every shot is of the highest quality. Our equipment allows us to create breathtaking images in any environment, from natural outdoor shoots to indoor studio sessions.</li><li><strong>Attention to Detail</strong>: From the composition to the lighting, every aspect of our work is meticulously planned and executed. We aim to create photographs that are not only technically perfect but also visually compelling and emotionally resonant.</li><li><strong>Customer-Centric Approach</strong>: Our clients’ satisfaction is our priority. We’re dedicated to providing an enjoyable, stress-free experience from the moment you book a session to the delivery of your photos. We offer post-production services, ensuring that every image is polished and ready to be cherished.</li></ul><h4>Our Services</h4><p>We offer a wide range of photography services to suit various needs, including:</p><ul><li><strong>Weddings</strong>: Capturing the most important day of your life with love, care, and precision.</li><li><strong>Portrait Photography</strong>: From professional headshots to family portraits, we help you look your best.</li><li><strong>Events &amp; Corporate</strong>: We document your special events, conferences, and corporate gatherings.</li><li><strong>Lifestyle and Fashion</strong>: Creative shoots that reflect your personal or brand identity.</li><li><strong>Product Photography</strong>: High-quality images that showcase your products in the best light for e-commerce, marketing, and advertising.</li></ul><h4>Our Vision</h4><p>As we continue to grow, we aim to not only be a photography service but a source of inspiration for those seeking to preserve life’s most precious moments. Our vision is to build a brand that represents creativity, professionalism, and a deep understanding of the human connection. We are committed to evolving with new trends, techniques, and technologies to ensure that we remain at the forefront of the photography industry.</p><p>Thank you for choosing <strong>The Shoot Destination</strong>. Let’s create memories together that will last a lifetime.</p>', '/uploads/about/6761ca7ae6ad6_45c07da8a700555ae856023ff5ef32ce.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `image_path`, `content`, `date`, `created_at`, `title`) VALUES
(3, 'blog_images/67641352eb99c_WhatsApp Image 2024-12-19 at 2.39.53 PM.jpeg', '<h1>OSSUM</h1>', '2024-12-20', '2024-12-19 12:36:35', 'New'),
(4, 'blog_images/67641980b350c_WhatsApp Image 2024-12-19 at 4.39.43 PM.jpeg', '<p>Hi there </p>', '2024-12-20', '2024-12-19 13:02:56', 'Test'),
(5, 'blog_images/676419efbf74e_WhatsApp Image 2024-12-19 at 2.21.00 PM.jpeg', '<p>Summary of Costs</p><p>Static Website Development:&nbsp;₹8,000</p><p>Dynamic Website Development: ₹14,000</p><p>Logo Design (normal): ₹100</p><p>Logo Design Registration: ₹1,500</p><p>SEO Services (1 Month): ₹10,000&nbsp;</p><p>Social Media Setup &amp; Management (1 Month): ₹8,000</p><p>Total Cost (Static Website + SEO + Social Media): ₹24,000&nbsp;&nbsp;</p><p>Total Cost (Dynamic Website + SEO + Social Media):₹32,000&nbsp;&nbsp;</p>', '2024-12-19', '2024-12-19 13:04:47', 'Create'),
(6, 'blog_images/67641a217db20_WhatsApp Image 2024-12-19 at 2.21.00 PM.jpeg', '<h1>Summary of Costs</h1><h2>Static Website Development:&nbsp;₹8,000</h2><h2>Dynamic Website Development: ₹14,000</h2><h2>Logo Design (normal): ₹100</h2><h2>Logo Design Registration: ₹1,500</h2><h2>SEO Services (1 Month): ₹10,000&nbsp;</h2><h2>Social Media Setup &amp; Management (1 Month): ₹8,000</h2><h2>Total Cost (Static Website + SEO + Social Media): ₹24,000&nbsp;&nbsp;</h2><h2>Total Cost (Dynamic Website + SEO + Social Media):₹32,000&nbsp;&nbsp;</h2>', '2024-12-19', '2024-12-19 13:05:37', 'Summary'),
(7, 'blog_images/6765b1d7913df_Yellow Minimalist Business Mood Boards Photo Collage Instagram Post (2).png', '<p>Jay co</p>', '2024-12-20', '2024-12-20 18:05:11', 'New blog'),
(8, 'blog_images/6765b3a731411_DALL·E 2024-12-17 15.15.15 - A professional and visually engaging digital poster for Low Voltage Directive (LVD) testing and certification services provided by Vertex Certificatio.webp', '<p>Artificial Intelligence (AI) has rapidly evolved from a futuristic concept to an integral part of our daily lives. From virtual assistants like Siri and Alexa to advanced machine learning algorithms that drive autonomous vehicles, AI is revolutionizing the way we live, work, and interact with technology.</p><h4>What is AI?</h4><p>At its core, AI is the simulation of human intelligence processes by machines, especially computer systems. These processes include learning (the acquisition of information and rules for using it), reasoning (using rules to reach approximate or definite conclusions), and self-correction. AI can be categorized into two types: narrow AI, which is designed to perform a narrow task (e.g., facial recognition or internet searches), and general AI, which has the ability to perform any intellectual task that a human can do.</p><h4>Applications of AI</h4><p>AI\'s applications are vast and varied, impacting numerous industries:</p><ol><li><strong>Healthcare</strong>: AI is transforming healthcare by enabling early diagnosis through predictive analytics, personalizing treatment plans, and automating administrative tasks.</li><li><strong>Finance</strong>: In the financial sector, AI is used for fraud detection, algorithmic trading, and personalized banking services.</li><li><strong>Transportation</strong>: Autonomous vehicles, powered by AI, promise to reduce accidents and improve traffic management.</li><li><strong>Retail</strong>: AI enhances customer experiences through personalized recommendations, chatbots, and inventory management.</li><li><strong>Entertainment</strong>: AI algorithms curate content on streaming platforms, create music, and even generate realistic visual effects in movies.</li></ol><h4>The Future of AI</h4><p>The future of AI holds immense potential. As AI continues to advance, we can expect more sophisticated and human-like interactions with machines. AI will likely play a crucial role in addressing global challenges such as climate change, healthcare accessibility, and education.</p><p>However, with great power comes great responsibility. Ethical considerations, such as data privacy, bias in AI algorithms, and the impact on employment, must be addressed to ensure that AI benefits all of humanity.</p><h4>Conclusion</h4><p>AI is not just a technological advancement; it is a paradigm shift that is reshaping our world. As we continue to explore the possibilities of AI, it is essential to foster a collaborative approach that balances innovation with ethical considerations. The journey of AI has just begun, and its potential to transform our lives is boundless.</p>', '2024-12-20', '2024-12-20 18:12:55', 'The Rise of Artificial Intelligence: Transforming Our World'),
(9, 'blog_images/6765bb5504c16_WhatsApp Image 2024-12-18 at 5.21.39 PM (1).jpeg', '<p>write a blog on data sceince</p><p>Absolutely! Here\'s a blog post on data science:</p><h3>Unlocking the Power of Data: The World of Data Science</h3><p>In today\'s digital age, data is often referred to as the new oil. It fuels innovation, drives decision-making, and shapes the future of industries. At the heart of this data revolution lies the field of data science, a multidisciplinary domain that combines statistics, computer science, and domain expertise to extract meaningful insights from vast amounts of data.</p><h4>What is Data Science?</h4><p>Data science is the practice of using scientific methods, processes, algorithms, and systems to analyze and interpret complex data sets. It involves a blend of various tools, techniques, and principles to uncover patterns, derive insights, and make data-driven decisions. Data scientists use a combination of programming, statistical analysis, and machine learning to transform raw data into actionable knowledge.</p><h4>Key Components of Data Science</h4><ol><li><strong>Data Collection</strong>: Gathering data from various sources, including databases, APIs, web scraping, and sensors.</li><li><strong>Data Cleaning</strong>: Preprocessing data to handle missing values, outliers, and inconsistencies, ensuring data quality.</li><li><strong>Exploratory Data Analysis (EDA)</strong>: Using statistical techniques and visualization tools to explore and understand data distributions, relationships, and trends.</li><li><strong>Modeling</strong>: Building predictive models using machine learning algorithms to identify patterns and make predictions.</li><li><strong>Evaluation</strong>: Assessing the performance of models using metrics such as accuracy, precision, recall, and F1 score.</li><li><strong>Deployment</strong>: Implementing models into production environments to provide real-time insights and predictions.</li><li><strong>Communication</strong>: Presenting findings and insights through data visualization and storytelling to stakeholders.</li></ol><h4>Applications of Data Science</h4><p>Data science has a wide range of applications across various industries:</p><ol><li><strong>Healthcare</strong>: Predicting disease outbreaks, personalizing treatment plans, and optimizing hospital operations.</li><li><strong>Finance</strong>: Detecting fraudulent transactions, managing risk, and optimizing investment strategies.</li><li><strong>Retail</strong>: Enhancing customer experiences through personalized recommendations, inventory management, and demand forecasting.</li><li><strong>Marketing</strong>: Analyzing customer behavior, segmenting audiences, and optimizing marketing campaigns.</li><li><strong>Transportation</strong>: Improving route planning, predicting maintenance needs, and optimizing logistics.</li></ol><h4>The Future of Data Science</h4><p>The future of data science is incredibly promising. As data continues to grow exponentially, the demand for skilled data scientists will only increase. Emerging technologies such as artificial intelligence, the Internet of Things (IoT), and blockchain will further expand the scope and impact of data science. Additionally, ethical considerations, such as data privacy and bias in algorithms, will play a crucial role in shaping the future of the field.</p><h4>Conclusion</h4><p>Data science is not just a buzzword; it is a transformative force that is reshaping industries and driving innovation. By harnessing the power of data, organizations can make informed decisions, optimize processes, and create value. As we continue to navigate the data-driven world, the role of data science will become increasingly vital in unlocking the potential of data and shaping a better future.</p>', '2024-12-21', '2024-12-20 18:45:41', 'Unlocking the Power of Data: The World of Data Science'),
(10, 'blog_images/6765be9dc5546_WhatsApp Image 2024-12-18 at 5.21.39 PM (1).jpeg', '<p>write a blog on data sceince</p><p>Absolutely! Here\'s a blog post on data science:</p><h3>Unlocking the Power of Data: The World of Data Science</h3><p>In today\'s digital age, data is often referred to as the new oil. It fuels innovation, drives decision-making, and shapes the future of industries. At the heart of this data revolution lies the field of data science, a multidisciplinary domain that combines statistics, computer science, and domain expertise to extract meaningful insights from vast amounts of data.</p><h4>What is Data Science?</h4><p>Data science is the practice of using scientific methods, processes, algorithms, and systems to analyze and interpret complex data sets. It involves a blend of various tools, techniques, and principles to uncover patterns, derive insights, and make data-driven decisions. Data scientists use a combination of programming, statistical analysis, and machine learning to transform raw data into actionable knowledge.</p><h4>Key Components of Data Science</h4><ol><li><strong>Data Collection</strong>: Gathering data from various sources, including databases, APIs, web scraping, and sensors.</li><li><strong>Data Cleaning</strong>: Preprocessing data to handle missing values, outliers, and inconsistencies, ensuring data quality.</li><li><strong>Exploratory Data Analysis (EDA)</strong>: Using statistical techniques and visualization tools to explore and understand data distributions, relationships, and trends.</li><li><strong>Modeling</strong>: Building predictive models using machine learning algorithms to identify patterns and make predictions.</li><li><strong>Evaluation</strong>: Assessing the performance of models using metrics such as accuracy, precision, recall, and F1 score.</li><li><strong>Deployment</strong>: Implementing models into production environments to provide real-time insights and predictions.</li><li><strong>Communication</strong>: Presenting findings and insights through data visualization and storytelling to stakeholders.</li></ol><h4>Applications of Data Science</h4><p>Data science has a wide range of applications across various industries:</p><ol><li><strong>Healthcare</strong>: Predicting disease outbreaks, personalizing treatment plans, and optimizing hospital operations.</li><li><strong>Finance</strong>: Detecting fraudulent transactions, managing risk, and optimizing investment strategies.</li><li><strong>Retail</strong>: Enhancing customer experiences through personalized recommendations, inventory management, and demand forecasting.</li><li><strong>Marketing</strong>: Analyzing customer behavior, segmenting audiences, and optimizing marketing campaigns.</li><li><strong>Transportation</strong>: Improving route planning, predicting maintenance needs, and optimizing logistics.</li></ol><h4>The Future of Data Science</h4><p>The future of data science is incredibly promising. As data continues to grow exponentially, the demand for skilled data scientists will only increase. Emerging technologies such as artificial intelligence, the Internet of Things (IoT), and blockchain will further expand the scope and impact of data science. Additionally, ethical considerations, such as data privacy and bias in algorithms, will play a crucial role in shaping the future of the field.</p><h4>Conclusion</h4><p>Data science is not just a buzzword; it is a transformative force that is reshaping industries and driving innovation. By harnessing the power of data, organizations can make informed decisions, optimize processes, and create value. As we continue to navigate the data-driven world, the role of data science will become increasingly vital in unlocking the potential of data and shaping a better future.</p>', '2024-12-21', '2024-12-20 18:59:41', 'Unlocking the Power of Data: The World of Data Science'),
(11, 'blog_images/6765beb95c58a_WhatsApp Image 2024-12-18 at 5.21.39 PM (1).jpeg', '<p>write a blog on data sceince</p><p>Absolutely! Here\'s a blog post on data science:</p><h3>Unlocking the Power of Data: The World of Data Science</h3><p>In today\'s digital age, data is often referred to as the new oil. It fuels innovation, drives decision-making, and shapes the future of industries. At the heart of this data revolution lies the field of data science, a multidisciplinary domain that combines statistics, computer science, and domain expertise to extract meaningful insights from vast amounts of data.</p><h4>What is Data Science?</h4><p>Data science is the practice of using scientific methods, processes, algorithms, and systems to analyze and interpret complex data sets. It involves a blend of various tools, techniques, and principles to uncover patterns, derive insights, and make data-driven decisions. Data scientists use a combination of programming, statistical analysis, and machine learning to transform raw data into actionable knowledge.</p><h4>Key Components of Data Science</h4><ol><li><strong>Data Collection</strong>: Gathering data from various sources, including databases, APIs, web scraping, and sensors.</li><li><strong>Data Cleaning</strong>: Preprocessing data to handle missing values, outliers, and inconsistencies, ensuring data quality.</li><li><strong>Exploratory Data Analysis (EDA)</strong>: Using statistical techniques and visualization tools to explore and understand data distributions, relationships, and trends.</li><li><strong>Modeling</strong>: Building predictive models using machine learning algorithms to identify patterns and make predictions.</li><li><strong>Evaluation</strong>: Assessing the performance of models using metrics such as accuracy, precision, recall, and F1 score.</li><li><strong>Deployment</strong>: Implementing models into production environments to provide real-time insights and predictions.</li><li><strong>Communication</strong>: Presenting findings and insights through data visualization and storytelling to stakeholders.</li></ol><h4>Applications of Data Science</h4><p>Data science has a wide range of applications across various industries:</p><ol><li><strong>Healthcare</strong>: Predicting disease outbreaks, personalizing treatment plans, and optimizing hospital operations.</li><li><strong>Finance</strong>: Detecting fraudulent transactions, managing risk, and optimizing investment strategies.</li><li><strong>Retail</strong>: Enhancing customer experiences through personalized recommendations, inventory management, and demand forecasting.</li><li><strong>Marketing</strong>: Analyzing customer behavior, segmenting audiences, and optimizing marketing campaigns.</li><li><strong>Transportation</strong>: Improving route planning, predicting maintenance needs, and optimizing logistics.</li></ol><h4>The Future of Data Science</h4><p>The future of data science is incredibly promising. As data continues to grow exponentially, the demand for skilled data scientists will only increase. Emerging technologies such as artificial intelligence, the Internet of Things (IoT), and blockchain will further expand the scope and impact of data science. Additionally, ethical considerations, such as data privacy and bias in algorithms, will play a crucial role in shaping the future of the field.</p><h4>Conclusion</h4><p>Data science is not just a buzzword; it is a transformative force that is reshaping industries and driving innovation. By harnessing the power of data, organizations can make informed decisions, optimize processes, and create value. As we continue to navigate the data-driven world, the role of data science will become increasingly vital in unlocking the potential of data and shaping a better future.</p>', '2024-12-21', '2024-12-20 19:00:09', 'Unlocking the Power of Data: The World of Data Science'),
(12, 'blog_images/6765bed09426c_WhatsApp Image 2024-12-18 at 5.21.39 PM (1).jpeg', '<p>write a blog on data sceince</p><p>Absolutely! Here\'s a blog post on data science:</p><h3>Unlocking the Power of Data: The World of Data Science</h3><p>In today\'s digital age, data is often referred to as the new oil. It fuels innovation, drives decision-making, and shapes the future of industries. At the heart of this data revolution lies the field of data science, a multidisciplinary domain that combines statistics, computer science, and domain expertise to extract meaningful insights from vast amounts of data.</p><h4>What is Data Science?</h4><p>Data science is the practice of using scientific methods, processes, algorithms, and systems to analyze and interpret complex data sets. It involves a blend of various tools, techniques, and principles to uncover patterns, derive insights, and make data-driven decisions. Data scientists use a combination of programming, statistical analysis, and machine learning to transform raw data into actionable knowledge.</p><h4>Key Components of Data Science</h4><ol><li><strong>Data Collection</strong>: Gathering data from various sources, including databases, APIs, web scraping, and sensors.</li><li><strong>Data Cleaning</strong>: Preprocessing data to handle missing values, outliers, and inconsistencies, ensuring data quality.</li><li><strong>Exploratory Data Analysis (EDA)</strong>: Using statistical techniques and visualization tools to explore and understand data distributions, relationships, and trends.</li><li><strong>Modeling</strong>: Building predictive models using machine learning algorithms to identify patterns and make predictions.</li><li><strong>Evaluation</strong>: Assessing the performance of models using metrics such as accuracy, precision, recall, and F1 score.</li><li><strong>Deployment</strong>: Implementing models into production environments to provide real-time insights and predictions.</li><li><strong>Communication</strong>: Presenting findings and insights through data visualization and storytelling to stakeholders.</li></ol><h4>Applications of Data Science</h4><p>Data science has a wide range of applications across various industries:</p><ol><li><strong>Healthcare</strong>: Predicting disease outbreaks, personalizing treatment plans, and optimizing hospital operations.</li><li><strong>Finance</strong>: Detecting fraudulent transactions, managing risk, and optimizing investment strategies.</li><li><strong>Retail</strong>: Enhancing customer experiences through personalized recommendations, inventory management, and demand forecasting.</li><li><strong>Marketing</strong>: Analyzing customer behavior, segmenting audiences, and optimizing marketing campaigns.</li><li><strong>Transportation</strong>: Improving route planning, predicting maintenance needs, and optimizing logistics.</li></ol><h4>The Future of Data Science</h4><p>The future of data science is incredibly promising. As data continues to grow exponentially, the demand for skilled data scientists will only increase. Emerging technologies such as artificial intelligence, the Internet of Things (IoT), and blockchain will further expand the scope and impact of data science. Additionally, ethical considerations, such as data privacy and bias in algorithms, will play a crucial role in shaping the future of the field.</p><h4>Conclusion</h4><p>Data science is not just a buzzword; it is a transformative force that is reshaping industries and driving innovation. By harnessing the power of data, organizations can make informed decisions, optimize processes, and create value. As we continue to navigate the data-driven world, the role of data science will become increasingly vital in unlocking the potential of data and shaping a better future.</p>', '2024-12-21', '2024-12-20 19:00:32', 'Unlocking the Power of Data: The World of Data Science');

-- --------------------------------------------------------

--
-- Table structure for table `indoor_albums`
--

CREATE TABLE `indoor_albums` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image_paths` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `indoor_albums`
--

INSERT INTO `indoor_albums` (`id`, `title`, `image_paths`, `created_at`, `description`) VALUES
(9, 'today', 'Admin/uploads/indoor_albums/CEUKCA Mark (8).png', '2024-12-17 08:19:14', NULL),
(10, 'today', 'Admin/uploads/indoor_albums/CEUKCA Mark (8).png', '2024-12-17 08:19:54', NULL),
(11, 'Multi', 'Admin/uploads/indoor_albums/pixelcut-export (4)-Photoroom.png,Admin/uploads/indoor_albums/vertex-certification-services-zikarpur-zirakpur-iso-quality-training-centres-8j0uak8ptx.webp,Admin/uploads/indoor_albums/OSSUMEXPO.png,Admin/uploads/indoor_albums/logo-removebg-preview.png,Admin/uploads/indoor_albums/1 header image.jpg', '2024-12-17 08:20:12', NULL),
(12, 'tEST', 'Admin/uploads/indoor_albums/WhatsApp Image 2024-12-19 at 2.39.53 PM.jpeg', '2024-12-20 10:59:42', NULL),
(13, 'yash', 'Admin/uploads/indoor_albums/WhatsApp Image 2024-12-19 at 2.21.00 PM.jpeg,Admin/uploads/indoor_albums/WhatsApp Image 2024-12-19 at 2.39.53 PM.jpeg,Admin/uploads/indoor_albums/WhatsApp Image 2024-12-19 at 4.39.43 PM.jpeg', '2024-12-20 13:06:49', NULL),
(14, 'tute', 'Admin/uploads/indoor_albums/WhatsApp Image 2024-12-18 at 5.21.40 PM.jpeg,Admin/uploads/indoor_albums/WhatsApp Image 2024-12-18 at 5.21.39 PM (2).jpeg', '2024-12-20 17:47:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `natural_albums`
--

CREATE TABLE `natural_albums` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image_paths` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `natural_albums`
--

INSERT INTO `natural_albums` (`id`, `title`, `image_paths`) VALUES
(14, 'b', 'Admin/uploads/natural_albums/DALL·E 2024-12-17 15.15.15 - A professional and visually engaging digital poster for Low Voltage Directive (LVD) testing and certification services provided by Vertex Certificatio.webp'),
(15, 'b', 'Admin/uploads/natural_albums/DALL·E 2024-12-17 15.15.15 - A professional and visually engaging digital poster for Low Voltage Directive (LVD) testing and certification services provided by Vertex Certificatio.webp'),
(16, 'new22', 'Admin/uploads/natural_albums/🔌 Ensure Electrical Safety with ! 🔍.png'),
(17, 'yash', 'Admin/uploads/natural_albums/WhatsApp Image 2024-12-18 at 5.21.40 PM (1).jpeg,Admin/uploads/natural_albums/WhatsApp Image 2024-12-18 at 5.21.40 PM.jpeg,Admin/uploads/natural_albums/WhatsApp Image 2024-12-18 at 5.21.39 PM (2).jpeg,Admin/uploads/natural_albums/WhatsApp Image 2024-12-18 at 5.21.39 PM (1).jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `outdoor_albums`
--

CREATE TABLE `outdoor_albums` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image_paths` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `outdoor_albums`
--

INSERT INTO `outdoor_albums` (`id`, `title`, `image_paths`, `created_at`) VALUES
(1, 'up', 'Admin/uploads/outdoor_albums/digital-marketing-agency-popular-services (1).png', '2024-12-17 07:00:40'),
(2, 'up', 'Admin/uploads/outdoor_albums/digital-marketing-agency-popular-services (1).png', '2024-12-17 07:53:54'),
(3, 'New1', 'Admin/uploads/outdoor_albums/logo.jpeg,Admin/uploads/outdoor_albums/nmc_logo-removebg-preview.png,Admin/uploads/outdoor_albums/nmc_logo.jpg,Admin/uploads/outdoor_albums/Digital-Marketing-Services-SEO-SMO.png,Admin/uploads/outdoor_albums/digital-marketing-agency-popular-services (1).png', '2024-12-17 07:54:09'),
(4, 'tt', 'Admin/uploads/outdoor_albums/Yellow Minimalist Business Mood Boards Photo Collage Instagram Post (2).png', '2024-12-20 17:24:21'),
(5, 'tt', 'Admin/uploads/outdoor_albums/Yellow Minimalist Business Mood Boards Photo Collage Instagram Post (2).png', '2024-12-20 17:27:52'),
(6, 'tite', 'Admin/uploads/outdoor_albums/Screenshot 2024-12-20 151654.png', '2024-12-20 17:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `shootdates`
--

CREATE TABLE `shootdates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `shoot_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shootdates`
--

INSERT INTO `shootdates` (`id`, `name`, `shoot_date`) VALUES
(1, 'New', '2024-12-19'),
(3, 'Yash', '2024-12-27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_section`
--
ALTER TABLE `about_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indoor_albums`
--
ALTER TABLE `indoor_albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `natural_albums`
--
ALTER TABLE `natural_albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outdoor_albums`
--
ALTER TABLE `outdoor_albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shootdates`
--
ALTER TABLE `shootdates`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_section`
--
ALTER TABLE `about_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `indoor_albums`
--
ALTER TABLE `indoor_albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `natural_albums`
--
ALTER TABLE `natural_albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `outdoor_albums`
--
ALTER TABLE `outdoor_albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shootdates`
--
ALTER TABLE `shootdates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
