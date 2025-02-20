<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="final_year_project_9662.login" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <title>Login - Adcarwaale</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: url('https://w0.peakpx.com/wallpaper/171/757/HD-wallpaper-lambo-line-auto-car-color-lamborghini.jpg') no-repeat center center/cover;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
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
            background: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn:hover {
            background: #0056b3;
        }

        .signup-link {
            margin-top: 15px;
            font-size: 14px;
        }

        .signup-link a {
            color: #007bff;
            text-decoration: none;
        }

        .signup-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Welcome Back!</h2>
            <asp:TextBox ID="txtFirstName" CssClass="input-box" runat="server" placeholder="First Name" required></asp:TextBox>
            <asp:TextBox ID="txtLastName" CssClass="input-box" runat="server" placeholder="Last Name" required></asp:TextBox>
            <asp:TextBox ID="txtPassword" CssClass="input-box" runat="server" placeholder="Password" TextMode="Password" required></asp:TextBox>
            <asp:Button ID="btnLogin" CssClass="btn" runat="server" Text="Login" OnClick="btnLogin_Click" />
            <p class="signup-link">Don't have an account? <a href="Signup.aspx">Sign Up</a></p>
        </div>
    </form>
</body>
</html>
