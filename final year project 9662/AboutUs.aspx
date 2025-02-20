<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="final_year_project_9662.AboutUs" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>About Us - Adcarwaale</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    
    <style>
        /* General Styles */
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: #f4f4f4;
        }

        /* Navbar */
        .navbar {
            background-color: #333;
            color: white;
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar .nav-left a {
            color: white;
            margin-right: 20px;
            text-decoration: none;
        }

        .navbar .nav-left a:hover {
            color: #ff9900;
        }

        .navbar a {
            color: white;
            text-decoration: none;
        }

        .navbar a:hover {
            color: #ff9900;
        }

        /* About Section */
        .about-section {
            background: linear-gradient(to right, #ff6a00, #ff9900);
            padding: 50px 20px;
            color: white;
            text-align: center;
        }

        .about-section h1 {
            font-size: 36px;
            margin-bottom: 20px;
        }

        .about-section h2 {
            font-size: 28px;
            margin-top: 30px;
        }

        .about-section p {
            font-size: 18px;
            line-height: 1.6;
            max-width: 800px;
            margin: 0 auto;
        }

        /* Footer */
        footer {
            background-color: #333;
            color: white;
            padding: 20px;
        }

        footer h5 {
            font-size: 20px;
            margin-bottom: 10px;
        }

        footer p {
            font-size: 16px;
        }

        footer .social-icons a {
            color: white;
            margin: 0 10px;
            font-size: 20px;
            text-decoration: none;
        }

        footer .social-icons a:hover {
            color: #ff9900;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
                align-items: flex-start;
            }

            .about-section h1 {
                font-size: 30px;
            }

            .about-section h2 {
                font-size: 24px;
            }

            .about-section p {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>
    <form runat="server">
        <!-- Navbar -->
        <div class="navbar">
            <div class="nav-left">
                <a href="HomePage.aspx">Home</a>
                <a href="AboutUs.aspx">About Us</a>
                <a href="Help.aspx">Help</a>
               
                <a href="ContactUs.aspx">ContactUs</a>
            </div>
            <div>
                <a href="login.aspx">Login</a> |
                <a href="Signup.aspx">Signup</a>
            </div>
        </div>

        <!-- About Section -->
        <section class="about-section">
            <div class="container">
                <h1>Our Story</h1>
                <p>Welcome to Adcarwaale, your trusted online platform for car rentals. We provide a wide range of vehicles to suit all kinds of travelers and journeys. Here's a brief history of our journey.</p>

                <div class="history">
                    <h2>History of Adcarwaale</h2>
                    <p>Adcarwaale was founded in 2015 with a mission to make car rental services more accessible, affordable, and convenient for people around the world. Our founder, [Founder Name], started the company with the vision of simplifying the process of renting a car and making it as easy as possible for customers to find the perfect vehicle for their needs.</p>

                    <p>Starting from a small fleet of cars, Adcarwaale has now grown into a major player in the car rental industry, serving customers in multiple cities and offering a wide range of cars, including SUVs, sedans, and luxury vehicles. We have continuously focused on customer satisfaction, offering 24/7 support and ensuring our fleet is well-maintained and up to date with the latest models.</p>

                    <p>Today, Adcarwaale is recognized as one of the leading platforms for online car rentals, and our commitment to quality and service remains stronger than ever.</p>
                </div>

                <div class="mission">
                    <h2>Our Mission</h2>
                    <p>Our mission is simple: to provide our customers with a hassle-free, reliable, and affordable car rental experience. Whether you're traveling for business, leisure, or any other purpose, we are here to ensure you have a comfortable and smooth journey.</p>
                </div>

                <div class="vision">
                    <h2>Our Vision</h2>
                    <p>At Adcarwaale, our vision is to become the go-to platform for car rentals worldwide, offering an extensive selection of vehicles, unparalleled customer service, and a user-friendly online booking experience. We aim to continue innovating and improving the car rental industry to meet the evolving needs of our customers.</p>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer class="bg-dark text-light py-4 mt-5">
            <div class="container">
                <div class="row">
                    <!-- About Us Section -->
                    <div class="col-md-3">
                        <h5>About Adcarwaale</h5>
                        <p>Adcarwaale is your trusted platform for renting cars with ease. Choose from a variety of vehicles for your perfect journey.</p>
                    </div>

                    <!-- Quick Links -->
                    <div class="col-md-3">
                        <h5>Quick Links</h5>
                        <ul class="list-unstyled">
                            <li><a href="HomePage.aspx" class="text-light">Home</a></li>
                            <li><a href="AboutUs.aspx" class="text-light">About Us</a></li>
                            
                            <li><a href="Contact.aspx" class="text-light">Contact Us</a></li>
                        </ul>
                    </div>

                    <!-- Social Media Links -->
                    <div class="col-md-3">
                        <h5>Follow Us</h5>
                        <div class="social-icons">
                            <a href="https://www.facebook.com/" target="_blank"><i class="fab fa-facebook"></i></a>
                            <a href="https://www.instagram.com" target="_blank"><i class="fab fa-instagram"></i></a>
                            <a href="https://www.twitter.com" target="_blank"><i class="fab fa-twitter"></i></a>
                            <a href="https://wa.me/yourwhatsappnumber" target="_blank"><i class="fab fa-whatsapp"></i></a>
                        </div>
                    </div>

                    <!-- Contact Info -->
                    <div class="col-md-3">
                        <h5>Contact Us</h5>
                        <p>Email: support@adcarwaale.com</p>
                        <p>Phone: +1 (234) 567-890</p>
                        <p>Location: 123 CarLane, YourCity, Country</p>
                    </div>
                </div>
                <hr class="bg-light">
                <div class="text-center">
                    <p class="mb-0">&copy; 2024 Adcarwaale. All rights reserved.</p>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>
