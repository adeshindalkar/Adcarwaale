<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SuzukiSUVBooking.aspx.cs" Inherits="final_year_project_9662.SuzukiSUVBooking"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Suzuki SUV Booking</title>
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

        .car-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            padding: 20px;
            max-width: 1200px;
            margin: 50px auto;
        }

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

        .select-btn {
            margin-top: 20px;
            padding: 12px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }

        .select-btn:hover {
            background-color: #0056b3;
        }

        .btn-container {
            text-align: center;
            padding-bottom: 20px;
        }

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
        <h2>Select Your Suzuki SUV</h2>
        <div class="car-grid">
            <!-- Car 1 - Suzuki Grand Vitara -->
            <div class="car-card">
                <img src="https://cdn.wheel-size.com/thumbs/3d/e5/3de547b19893fc9f24d63b64a5c8fb02.jpg" alt="Suzuki Grand Vitara" class="car-image" />
                <div class="car-info">
                    <h3>Suzuki Grand Vitara</h3>
                    <p>Engine: 1.5L | Power: 103 bhp | Mileage: 21 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar1" runat="server" CssClass="select-btn" Text="Book Now" OnClick="bookvitara" />
                </div>
            </div>

            <!-- Car 2 - Suzuki Brezza -->
            <div class="car-card">
                <img src="https://www.pngkey.com/png/detail/252-2526326_maruti-suzuki-vitara-brezza-02-vitara-brezza-black.png" alt="Suzuki Brezza" class="car-image" />
                <div class="car-info">
                    <h3>Suzuki Brezza</h3>
                    <p>Engine: 1.5L | Power: 103 bhp | Mileage: 19 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar2" runat="server" CssClass="select-btn" Text="Book Now" OnClick="bookbrezza" />
                </div>
            </div>

            <!-- Car 3 - Suzuki Jimny -->
            <div class="car-card">
                <img src="https://ymimg1.b8cdn.com/resized/car_model/8278/pictures/9005156/mobile_listing_main_Suzuki_Jimny_2019__1_.jpg" alt="Suzuki Jimny" class="car-image" />
                <div class="car-info">
                    <h3>Suzuki Jimny</h3>
                    <p>Engine: 1.5L | Power: 103 bhp | Mileage: 17 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar3" runat="server" CssClass="select-btn" Text="Book Now" OnClick="bookjimmy" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
