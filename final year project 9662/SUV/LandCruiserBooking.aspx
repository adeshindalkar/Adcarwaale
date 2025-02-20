﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LandCruiserBooking.aspx.cs" Inherits="final_year_project_9662.LandCruiserBooking" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Toyota Land Cruiser Booking - Adcarwaale</title>
    <style>
        body {
            font-family: 'Poppins', Arial, sans-serif;
            background: linear-gradient(to right, #28a745, #6dbf4e);
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            display: flex;
            max-width: 1000px;
            background: white;
            margin: 50px auto;
            padding: 30px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            border-radius: 15px;
            overflow: hidden;
            transition: transform 0.3s ease-in-out;
        }

        .container:hover {
            transform: scale(1.02);
        }

        .car-image {
            width: 50%;
            background: linear-gradient(to right, #1e7e34, #28a745);
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
            border-radius: 15px 0 0 15px;
        }

        .car-image img {
            width: 90%;
            max-height: 320px;
            object-fit: contain;
            border-radius: 10px;
        }

        .car-details {
            width: 50%;
            padding: 20px 30px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            text-align: left;
        }

        h2 {
            color: #333;
            font-size: 28px;
            margin-bottom: 10px;
        }

        p {
            font-size: 18px;
            color: #444;
            margin-bottom: 10px;
        }

        .price {
            font-size: 26px;
            color: #d9534f;
            font-weight: bold;
        }

        .book-btn {
            padding: 14px 25px;
            background-color: #218838;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 20px;
            margin-top: 20px;
            font-weight: bold;
            text-transform: uppercase;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            transition: 0.3s;
        }

        .book-btn:hover {
            background-color: #1c7430;
            transform: translateY(-3px);
        }

        /* Branding */
        .branding {
            text-align: center;
            margin-top: 20px;
            color: white;
            font-size: 22px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 2px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="car-image">
                <img src="https://assets.autobuzz.my/wp-content/uploads/2021/06/10091744/2021-Toyota-Land-Cruiser-LC300-1.jpg" alt="Toyota Land Cruiser" />
            </div>
            <div class="car-details">
                <h2>Toyota Land Cruiser</h2>
                <p><strong>Engine:</strong> 4.5L V8 Turbo Diesel</p>
                <p><strong>Power:</strong> 202 bhp</p>
                <p><strong>Mileage:</strong> 10 km/l</p>
                <p class="price">₹90000</p>
                <asp:Button ID="btnBookNow" runat="server" CssClass="book-btn" Text="Book Now" OnClick="BookNow_Click" />
            </div>
        </div>
        <div class="branding">Adcarwaale - Your Car Rental Partner</div>
    </form>
</body>
</html>
