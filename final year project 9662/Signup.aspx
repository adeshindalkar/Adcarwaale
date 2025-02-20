<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="final_year_project_9662.Signup" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <title>Sign Up - Adcarwaale</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: url('https://images.pexels.com/photos/17507690/pexels-photo-17507690.jpeg?cs=srgb&dl=pexels-introspectivedsgn-17507690.jpg&fm=jpg') no-repeat center center/cover; /* Replace with your background image path */
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .signup-container {
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
            width: 350px;
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        .input-box {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background: #ff6600;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn:hover {
            background: #cc5200;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="signup-container">
            <h2>Create Your Account</h2>
            <asp:TextBox ID="txtFirstName" CssClass="input-box" runat="server" placeholder="First Name" required></asp:TextBox>
            <asp:TextBox ID="txtLastName" CssClass="input-box" runat="server" placeholder="Last Name" required></asp:TextBox>
            <asp:TextBox ID="txtEmail" CssClass="input-box" runat="server" placeholder="Email" TextMode="Email" required></asp:TextBox>
            <asp:TextBox ID="txtPassword" CssClass="input-box" runat="server" placeholder="Password" TextMode="Password" required></asp:TextBox>
            <asp:Button ID="btnSignup" CssClass="btn" runat="server" Text="Sign Up" OnClick="btnSignup_Click" />
        </div>
    </form>
</body>
</html>
