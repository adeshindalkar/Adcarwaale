<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="final_year_project_9662.Help" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Help - Adcarwaale</title>
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

        /* Help Section */
        .help-section {
            background: linear-gradient(to right, #ff6a00, #ff9900);
            padding: 50px 20px;
            color: white;
            text-align: center;
        }

        .help-section h1 {
            font-size: 36px;
            margin-bottom: 20px;
        }

        .help-section h2 {
            font-size: 28px;
            margin-top: 30px;
        }

        .help-section p {
            font-size: 18px;
            line-height: 1.6;
            max-width: 800px;
            margin: 0 auto;
        }

        .help-section ul {
            text-align: left;
            max-width: 800px;
            margin: 20px auto;
            font-size: 16px;
        }

        .help-section ul li {
            margin-bottom: 10px;
        }

        .help-section ul li:before {
            content: "•";
            color: #ff9900;
            margin-right: 10px;
        }

        .contact-section {
            background-color: #333;
            padding: 30px;
            color: white;
        }

        .contact-section h2 {
            font-size: 28px;
            margin-bottom: 20px;
        }

        .contact-section p {
            font-size: 18px;
        }

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

            .help-section h1 {
                font-size: 30px;
            }

            .help-section h2 {
                font-size: 24px;
            }

            .help-section p {
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

        <!-- Help Section -->
        <section class="help-section">
            <div class="container">
                <h1>How Can We Help You?</h1>
                <p>Welcome to the Help section. Here you will find the most commonly asked questions and solutions related to our services. If you can't find the answer you're looking for, don't hesitate to contact us directly.</p>

                <h2>Frequently Asked Questions (FAQ)</h2>
                <ul>
                    <li><strong>How do I rent a car?</strong> - Simply visit the car booking page, choose your preferred vehicle, select the rental dates, and proceed with payment.</li>
                    <li><strong>What payment methods do you accept?</strong> - We accept credit/debit cards, PayPal, and online bank transfers.</li>
                    <li><strong>Can I cancel my reservation?</strong> - Yes, you can cancel or modify your reservation within 24 hours of booking for a full refund.</li>
                    <li><strong>Do I need a driver's license?</strong> - Yes, a valid driver's license is required to rent any vehicle from Adcarwaale.</li>
                    <li><strong>How can I contact customer support?</strong> - You can contact us through the contact form below or reach out to our customer support via email or phone.</li>
                </ul>
            </div>
        </section>

        <!-- Contact Section -->
        <section class="contact-section">
            <div class="container">
                <h2>Still Need Help? Contact Us</h2>
                <p>If you have further questions or need personalized assistance, please feel free to contact our customer support team:</p>
                <p>Email: support@adcarwaale.com</p>
                <p>Phone: +1 (234) 567-890</p>
                <p>Location: 123 CarLane, YourCity, Country</p>
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

