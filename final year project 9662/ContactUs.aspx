<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="final_year_project_9662.ContactUs" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Contact Us - Adcarwaale</title>
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

        /* Contact Section */
        .contact-section {
            background: linear-gradient(to right, #ff6a00, #ff9900);
            padding: 50px 20px;
            color: white;
            text-align: center;
        }

        .contact-section h1 {
            font-size: 36px;
            margin-bottom: 20px;
        }

        .contact-section h2 {
            font-size: 28px;
            margin-top: 30px;
        }

        .contact-section p {
            font-size: 18px;
            line-height: 1.6;
            max-width: 800px;
            margin: 0 auto;
        }

        /* Form */
        .contact-form {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            max-width: 600px;
            margin: 30px auto;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }

        .contact-form input, .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .contact-form textarea {
            height: 150px;
            resize: vertical;
        }

        .contact-form button {
            background-color: #ff9900;
            color: white;
            border: none;
            padding: 15px 30px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .contact-form button:hover {
            background-color: #ff6a00;
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

            .contact-section h1 {
                font-size: 30px;
            }

            .contact-section h2 {
                font-size: 24px;
            }

            .contact-form button {
                width: 100%;
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
                <a href="Gallery.aspx">Gallery</a>
                <a href="ContactUs.aspx">Contact Us</a>
            </div>
            <div>
                <a href="login.aspx">Login</a> |
                <a href="Signup.aspx">Signup</a>
            </div>
        </div>

        <!-- Contact Section -->
        <section class="contact-section">
            <div class="container">
                <h1>Contact Us</h1>
                <p>If you have any problems or inquiries, feel free to reach out to us. We're here to help!</p>

                <!-- Contact Form -->
                <div class="contact-form">
                    <h2>Share Your Problem</h2>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Placeholder="Your Name" required="true"></asp:TextBox>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Placeholder="Your Email" required="true"></asp:TextBox>
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" Placeholder="Your Phone" required="true"></asp:TextBox>
                    <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" Placeholder="Subject" required="true"></asp:TextBox>
                    <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Placeholder="Describe your problem or inquiry" required="true"></asp:TextBox>
                    <asp:Button ID="btnSubmit" runat="server" CssClass="form-control" Text="Submit" OnClick="btnSubmit_Click" />
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
                            <li><a href="ContactUs.aspx" class="text-light">Contact Us</a></li>
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
