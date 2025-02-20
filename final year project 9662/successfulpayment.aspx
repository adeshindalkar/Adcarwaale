<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="successfulpayment.aspx.cs" Inherits="final_year_project_9662.successfulpayment" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Successful</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom CSS -->
    <style>
        body {
            background: linear-gradient(to right, #28a745, #218838);
            background: url('https://wallpapers.com/images/hd/cool-ferrari-cars-4098zp15oxmo4vjt.jpg') no-repeat center center/cover;
            color: white;
            font-family: 'Poppins', sans-serif;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .thank-you-container {
            background: white;
            color: #333;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
            max-width: 600px;
            width: 90%;
            text-align: center;
        }

        h2 {
            color: #28a745;
            font-size: 28px;
            margin-bottom: 15px;
        }

        .payment-summary {
            margin: 20px 0;
            padding: 15px;
            background: #f8f9fa;
            border-radius: 10px;
            font-size: 16px;
        }

        .download-btn {
            background-color: #17a2b8;
            border: none;
            font-size: 18px;
            padding: 12px;
            margin-top: 10px;
            width: 100%;
            transition: 0.3s;
        }

        .download-btn:hover {
            background-color: #138496;
        }

        .btn-primary {
            width: 100%;
            padding: 12px;
            font-size: 18px;
            margin-top: 20px;
        }

        @media (max-width: 768px) {
            .thank-you-container {
                width: 95%;
                padding: 30px;
            }

            h2 {
                font-size: 24px;
            }

            .btn {
                font-size: 16px;
            }
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="container thank-you-container">
            <h2>Payment Successful! ✅</h2>
            <p>Your payment has been processed successfully. Thank you for choosing our driving school!</p>

            <!-- Display User Details -->
            <div class="payment-summary">
                <p><strong>Full Name:</strong> <asp:Label ID="lblFullName" runat="server" Text="John Doe"></asp:Label></p>
                <p><strong>Email:</strong> <asp:Label ID="lblEmail" runat="server" Text="johndoe@example.com"></asp:Label></p>
                <p><strong>Phone Number:</strong> <asp:Label ID="lblPhone" runat="server" Text="+91 9876543210"></asp:Label></p>
                <p><strong>Car Type:</strong> <asp:Label ID="lblCarType" runat="server" Text="John Doe"></asp:Label></p>
                <p><strong>Car Name:</strong> <asp:Label ID="lblCarName" runat="server" Text="John Doe"></asp:Label></p>
                <p><strong>Pickup Date:</strong> <asp:Label ID="lblPickupDate" runat="server" Text="John Doe"></asp:Label></p>
                <p><strong>Drop Date:</strong> <asp:Label ID="lblDropDate" runat="server" Text="John Doe"></asp:Label></p>
                <p><strong>Total Days:</strong> <asp:Label ID="lblTotalDays" runat="server" Text="John Doe"></asp:Label></p>
                <p><strong>Pickup Location:</strong> <asp:Label ID="lblPickupLocation" runat="server" Text="John Doe"></asp:Label></p>
                <p><strong>Amount:</strong> <asp:Label ID="lblAmount" runat="server" Text="John Doe"></asp:Label></p>
                <p><strong>Total Price:</strong> <asp:Label ID="lblTotalPrice" runat="server" Text="John Doe"></asp:Label></p>

                

            </div>

            <!-- Car Information -->
            <h4>📚 Car Information</h4>
            <p>Your <strong>Car </strong>has been Booked Successfully </p>
            <p>Your <strong>Car </strong> will reach at given location <strong>in given Date</strong>.</p>

            <!-- PDF Download Button -->
            <asp:Button ID="btnDownloadReceipt" runat="server" CssClass="btn btn-info download-btn" Text="Download Payment Receipt (PDF)" OnClick="btnDownloadReceipt_Click" />

            <!-- Confirmation Message -->
            <div id="thankYouEmailConfirmation" class="mt-3">
                <p><strong>A confirmation email has been sent to:</strong> <asp:Label ID="lblEmailConfirmation" runat="server" Text="johndoe@example.com"></asp:Label></p>
            </div>

            <!-- Back to Home Button -->
            <asp:Button ID="btnBackHome" runat="server" CssClass="btn btn-primary mt-3" Text="Back to Home" PostBackUrl="~/HomePage.aspx" />
        </div>
    </form>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
