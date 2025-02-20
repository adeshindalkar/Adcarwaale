<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="final_year_project_9662.HomePage" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Welcome to Adcarwaale</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    
    <link href="HomePage.css" rel="stylesheet" />
</head>
<body>
    <form runat="server">
        <!-- Navbar -->
        <div class="navbar">
            <div class="nav-left">
                <a href="HomePage.aspx">Home</a>
                <asp:HyperLink ID="lnkAboutUs" runat="server" NavigateUrl="AboutUs.aspx">About Us</asp:HyperLink>
                <asp:HyperLink ID="lnkHelp" runat="server" NavigateUrl="Help.aspx">Help</asp:HyperLink>
                <asp:HyperLink ID="lnkContactUs" runat="server" NavigateUrl="ContactUs.aspx">Contact Us</asp:HyperLink>
            </div>
            <div class="nav-right">
                <asp:Label ID="lblUserName" runat="server" CssClass="user-name"></asp:Label>
                <asp:HyperLink ID="lnkLogin" runat="server" NavigateUrl="login.aspx" Visible="false">Login</asp:HyperLink> |
                <asp:HyperLink ID="lnkSignup" runat="server" NavigateUrl="Signup.aspx" Visible="false">Signup</asp:HyperLink>
                <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" Visible="false" CssClass="logout-btn" />
            </div>
        </div>

        <!-- Hero Section -->
        <div class="hero">
            <h1>Welcome to Adcarwaale</h1>
            <p>Choose the best ride for your journey.</p>

            <!-- SUV and Sedan clickable images -->
            <div class="car-options">
                <div class="car-option suv" onclick="window.location.href='SUVBooking.aspx'">
                    <img src="https://img.freepik.com/premium-vector/green-suv-car-with-flat-tire-stranded-green-background-suv-car-customizable-flat-illustration_538213-59775.jpg" alt="SUV" />
                    <p>SUV</p>
                </div>
                <div class="car-option sedan" onclick="window.location.href='SedanBooking.aspx'">
                    <img src="https://img.freepik.com/premium-vector/cartoon-illustration-customizable-sedan-car-blue-orange-colors-set-against-vibrant-green-background-sedan-car-customizable-cartoon-illustration_538213-59767.jpg" alt="Sedan" />
                    <p>Sedan</p>
                </div>
            </div>
        </div>

        <!-- Footer Section -->
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <!-- About Us Section -->
                    <div class="col-md-3">
                        <h5>About Adcarwaale</h5>
                        <p>Adcarwaale is your trusted platform for renting cars of various models and types.</p>
                    </div>
                    
                    <!-- Quick Links Section -->
                    <div class="col-md-3">
                        <h5>Quick Links</h5>
                        <ul class="list-unstyled">
                            <li><a href="HomePage.aspx">Home</a></li>
                            <li><a href="AboutUs.aspx">About Us</a></li>
                            <li><a href="Help.aspx">Help</a></li>
                            <li><a href="ContactUs.aspx">Contact Us</a></li>
                        </ul>
                    </div>
                    
                    <!-- Social Media Links Section -->
                    <div class="col-md-3">
                        <h5>Follow Us</h5>
                        <a href="https://www.facebook.com" target="_blank"><i class="fab fa-facebook"></i></a>
                        <a href="https://www.instagram.com" target="_blank"><i class="fab fa-instagram"></i></a>
                        <a href="https://www.twitter.com" target="_blank"><i class="fab fa-twitter"></i></a>
                    </div>
                    
                    <!-- Contact Info Section -->
                    <div class="col-md-3">
                        <h5>Contact Us</h5>
                        <p>Email: support@adcarwaale.com</p>
                        <p>Phone: +1 234 567 890</p>
                        <p>Address: Bharatmata Chowk,Plotno:11,Shopno:7,
                        OppNerulBusstop,Nerul(E),NaviMumbai
                        400706, Maharashtra</p>
                    </div>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>
