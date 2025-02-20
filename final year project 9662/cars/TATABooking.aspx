<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TATABooking.aspx.cs" Inherits="final_year_project_9662.TATABooking" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TATA Car Booking</title>
    <style type="text/css">
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
            color: #333;
        }

        h2 {
            text-align: center;
            font-size: 36px;
            color: #333;
            margin-top: 50px;
        }

        /* Car Grid Layout */
        .car-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            padding: 20px;
            max-width: 1200px;
            margin: 50px auto;
        }

        /* Card Styling */
        .car-card {
            position: relative;
            border: 2px solid #ddd;
            border-radius: 12px;
            overflow: hidden;
            background-color: #fff;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            text-align: center;
        }

        .car-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        .car-image {
            width: 100%;
            height: 200px;
            object-fit: contain;
        }

        .car-info {
            padding: 15px;
            background-color: #fff;
            font-size: 16px;
        }

        /* Button Styling */
        .select-btn {
            margin-top: 20px;
            padding: 12px 20px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }

        .select-btn:hover {
            background-color: #218838;
        }

        .btn-container {
            text-align: center;
            padding-bottom: 20px;
        }

        /* Responsive Adjustments */
        @media screen and (max-width: 768px) {
            .car-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media screen and (max-width: 480px) {
            .car-grid {
                grid-template-columns: 1fr;
            }

            h2 {
                font-size: 28px;
            }

            .select-btn {
                width: 100%;
                padding: 15px;
                font-size: 20px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Select Your TATA Car</h2>
        <div class="car-grid">
            <!-- Car 1 - TATA Nexon -->
            <div class="car-card">
                <img src="https://www.carz4sale.in/pictures/default/tata-nexon-xz-plus-l-diesel/tata-nexon-xz-plus-l-diesel-640.jpg" alt="TATA Nexon" class="car-image" />
                <div class="car-info">
                    <h3>TATA Nexon</h3>
                    <p>Engine: 1.2L | Power: 108 bhp | Mileage: 17 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar1" runat="server" CssClass="select-btn" Text="Book Now" OnClick="booknexon" />
                </div>
            </div>

            <!-- Car 2 - TATA Tigor -->
            <div class="car-card">
                <img src="https://static.toiimg.com/thumb/msid-117222226,width-1280,height-720,resizemode-4/117222226.jpg" alt="TATA Tigor" class="car-image" />
                <div class="car-info">
                    <h3>TATA Tigor</h3>
                    <p>Engine: 2.0L | Power: 170 bhp | Mileage: 15 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar2" runat="server" CssClass="select-btn" Text="Book Now" OnClick="booktigor" />
                </div>
            </div>

            <!-- Car 3 - TATA Tiago -->
            <div class="car-card">
                <img src="https://static.wixstatic.com/media/94a484_4b6d251255ad412e92b55338fc696d36~mv2.png/v1/fill/w_568,h_296,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/94a484_4b6d251255ad412e92b55338fc696d36~mv2.png" alt="TATA Tiago" class="car-image" />
                <div class="car-info">
                    <h3>TATA Tiago</h3>
                    <p>Engine: 1.2L | Power: 85 bhp | Mileage: 20 km/l</p>
                    <p>Rating: ⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar3" runat="server" CssClass="select-btn" Text="Book Now" OnClick="booktiago" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
