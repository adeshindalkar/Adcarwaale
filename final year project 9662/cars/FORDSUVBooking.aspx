<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FORDSUVBooking.aspx.cs" Inherits="final_year_project_9662.FORDSUVBooking" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ford SUV Booking</title>
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
        <h2>Select Your Ford SUV</h2>
        <div class="car-grid">
            <!-- Car 1 - Ford Endeavour -->
            <div class="car-card">
                <img src="https://images.carandbike.com/car-images/colors/ford/endeavour/ford-endeavour-diamond-white-sport.png?v=1614233105" alt="Ford Endeavour" class="car-image" />
                <div class="car-info">
                    <h3>Ford Endeavour</h3>
                    <p>Engine: 2.0L | Power: 170 bhp | Mileage: 12 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar1" runat="server" CssClass="select-btn" Text="Book Now" OnClick="booknow1" />
                </div>
            </div>

            <!-- Car 2 - Ford EcoSport -->
            <div class="car-card">
                <img src="https://www.carandbike.com/_next/image?url=https%3A%2F%2Fimages.carandbike.com%2Fcar-images%2Fcolors%2Fford%2Fecosport%2Fford-ecosport-lightning-blue.png%3Fv%3D1614183183&w=640&q=75" alt="Ford EcoSport" class="car-image" />
                <div class="car-info">
                    <h3>Ford EcoSport</h3>
                    <p>Engine: 1.5L | Power: 122 bhp | Mileage: 14 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar2" runat="server" CssClass="select-btn" Text="Book Now" OnClick="booknow2" />
                </div>
            </div>

            <!-- Car 3 - Ford Bronco -->
            <div class="car-card">
                <img src="https://cars.usnews.com/static/images/Auto/izmo/i159615619/2023_ford_bronco_2_door_angularfront.jpg" alt="Ford Bronco" class="car-image" />
                <div class="car-info">
                    <h3>Ford Bronco</h3>
                    <p>Engine: 2.7L | Power: 310 bhp | Mileage: 10 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar3" runat="server" CssClass="select-btn" Text="Book Now" OnClick="booknow3" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
