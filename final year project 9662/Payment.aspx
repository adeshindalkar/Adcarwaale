<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="final_year_project_9662.Payment" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Complete Your Payment</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: url('https://png.pngtree.com/background/20230517/original/pngtree-classic-green-ford-mustang-is-parked-in-front-of-two-cars-picture-image_2639429.jpg') no-repeat center center/cover;
            background-color: #f4f4f4;
        }
        .payment-container {
            max-width: 450px;
            margin: 50px auto;
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }
        .qr-box {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        .qr-box img {
            border: 2px solid #ddd;
            padding: 10px;
            background: #fff;
            border-radius: 10px;
        }
    </style>
</head>
<body>

  <form id="form1" runat="server">
        <div class="container">
            <div class="payment-container">
                <h3 class="text-center">Complete Your Payment</h3>
                <p class="text-center text-muted">Fill in your details and proceed with payment.</p>

                <!-- Full Name -->
                <div class="mb-3">
                    <asp:Label ID="lblFullName" runat="server" Text="Full Name" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" placeholder="Enter your name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName"
                        ErrorMessage="Full Name is required!" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>

                <!-- Email -->
                <div class="mb-3">
                    <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter your email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                        ErrorMessage="Email is required!" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                        ErrorMessage="Invalid email format!" ValidationExpression="^[\w\.-]+@[\w\.-]+\.\w{2,4}$"
                        CssClass="text-danger" Display="Dynamic"></asp:RegularExpressionValidator>
                </div>

                <!-- Phone Number -->
                <div class="mb-3">
                    <asp:Label ID="lblPhone" runat="server" Text="Phone Number" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Enter your phone number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone"
                        ErrorMessage="Phone Number is required!" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone"
                        ErrorMessage="Invalid phone number!" ValidationExpression="^\d{10}$"
                        CssClass="text-danger" Display="Dynamic"></asp:RegularExpressionValidator>
                </div>

                
                <!-- Car Type -->
            <div class="form-group">
                <label ID="lblCarType">Car Type:</label>
                <asp:DropDownList ID="ddlCarType" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlCarType1">
                    <asp:ListItem Text="Select Car Type" Value="" />
                    <asp:ListItem Text="Sedan" Value="Sedan" />
                    <asp:ListItem Text="SUV" Value="SUV" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvCarType" runat="server" ControlToValidate="ddlCarType"
                    ErrorMessage="Car Type is required!" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>

            <!-- Car Name (Dynamic) -->
            <div class="form-group">
                <label ID="lblCarName">Car Name:</label>
                <asp:DropDownList ID="ddlCarName" runat="server" CssClass="form-control">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlCarName"
                    ErrorMessage="Car Name is required!" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>

            <!-- Pickup Date -->
            <div class="form-group">
                <label ID="lblPickupDate">Pickup Date:</label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Date" AutoPostBack="true" OnTextChanged="txtPickupDate_TextChanged"></asp:TextBox>

<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
    ControlToValidate="TextBox1"
    ErrorMessage="Pickup Date is required!" 
    CssClass="text-danger" Display="Dynamic">
</asp:RequiredFieldValidator>
            </div>

            <!-- Drop Date -->
            <div class="form-group">
                <label ID="lblDropDate">Drop Date:</label>
                <asp:TextBox ID="txtDropDate" runat="server" CssClass="form-control" TextMode="Date" AutoPostBack="true" OnTextChanged="txtDropDate_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDropDate" runat="server" ControlToValidate="txtDropDate"
                    ErrorMessage="Drop Date is required!" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>

            <!-- Total Days (Auto Calculated) -->
            <div class="form-group">
                <label ID="lblTotalDays">Total Days:</label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
            </div>

                <!-- Pickup Location -->
<div class="mb-3">
    <asp:Label ID="lblPickupLocation" runat="server" Text="Pickup Location" CssClass="form-label"></asp:Label>
    <asp:TextBox ID="txtPickupLocation" runat="server" CssClass="form-control" placeholder="Enter your pickup location"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvPickupLocation" runat="server" ControlToValidate="txtPickupLocation"
        ErrorMessage="Pickup Location is required!" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
</div>

            <!-- Amount (Per Day Cost) -->
            <div class="form-group">
                <label ID="lblAmount">Amount (Per Day):</label>
                <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control" TextMode="Number" AutoPostBack="true" OnTextChanged="txtAmount_TextChanged"></asp:TextBox>
            </div>

            <!-- Total Price (Auto Calculated) -->
            <div class="form-group">
                <label ID="lblTotalPrice">Total Price:</label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
            </div>

                <!-- Card Details Section -->
                <div class="card-details-box">
                    <h5 class="text-center">Enter Your Card Details</h5>
                    
                    <!-- Cardholder Name -->
                    <div class="mb-3">
                        <asp:Label ID="lblCardHolderName" runat="server" Text="Cardholder Name" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtCardHolderName" runat="server" CssClass="form-control" placeholder="Enter cardholder name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCardHolderName" runat="server" ControlToValidate="txtCardHolderName"
                            ErrorMessage="Cardholder name is required!" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <!-- Card Number -->
                    <div class="mb-3">
                        <asp:Label ID="lblCardNumber" runat="server" Text="Card Number" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtCardNumber" runat="server" CssClass="form-control" placeholder="Enter your card number" MaxLength="16"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCardNumber" runat="server" ControlToValidate="txtCardNumber"
                            ErrorMessage="Card number is required!" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revCardNumber" runat="server" ControlToValidate="txtCardNumber"
                            ErrorMessage="Invalid card number!" ValidationExpression="^\d{16}$"
                            CssClass="text-danger" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                    

                    <!-- Expiry Date -->
                    <div class="mb-3">
                        <asp:Label ID="lblExpiryDate" runat="server" Text="Expiry Date (MM/YY)" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtExpiryDate" runat="server" CssClass="form-control" placeholder="MM/YY"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvExpiryDate" runat="server" ControlToValidate="txtExpiryDate"
                            ErrorMessage="Expiry date is required!" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <!-- CVV -->
                    <div class="mb-3">
                        <asp:Label ID="lblCVV" runat="server" Text="CVV" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtCVV" runat="server" CssClass="form-control" placeholder="Enter your CVV" MaxLength="3" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCVV" runat="server" ControlToValidate="txtCVV"
                            ErrorMessage="CVV is required!" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revCVV" runat="server" ControlToValidate="txtCVV"
                            ErrorMessage="Invalid CVV!" ValidationExpression="^\d{3}$"
                            CssClass="text-danger" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                </div>

                <!-- Submit Button -->
                <div class="d-grid mt-3">
                    <asp:Button ID="btnSubmitPayment" runat="server" Text="Submit Payment" CssClass="btn btn-success" onClick="btnSubmitPayment_Click" />
                </div>
            </div>
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>