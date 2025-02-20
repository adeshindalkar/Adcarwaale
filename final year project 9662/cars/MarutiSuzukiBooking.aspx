<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MarutiSuzukiBooking.aspx.cs" Inherits="final_year_project_9662.MarutiSuzukiBooking" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Maruti Suzuki Car Booking</title>
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
        <h2>Select Your Maruti Suzuki Car</h2>
        <div class="car-grid">
            <!-- Car 1 - Maruti Suzuki Swift -->
            <div class="car-card">
                <img src="https://w7.pngwing.com/pngs/149/139/png-transparent-maruti-suzuki-dzire-suzuki-swift-car-suzuki-compact-car-car-motorcycle-thumbnail.png" alt="Maruti Suzuki Swift" class="car-image" />
                <div class="car-info">
                    <h3>Maruti Suzuki Swift</h3>
                    <p>Engine: 1.2L | Power: 83 bhp | Mileage: 23 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar1" runat="server" CssClass="select-btn" Text="Book Now swift" OnClick="bookswift" />
                </div>
            </div>

            <!-- Car 2 - Maruti Suzuki Dzire -->
            <div class="car-card">
                <img src="https://w7.pngwing.com/pngs/621/957/png-transparent-maruti-suzuki-dzire-car-suzuki-swift-car-compact-car-sedan-car-thumbnail.png" alt="Maruti Suzuki Dzire" class="car-image" />
                <div class="car-info">
                    <h3>Maruti Suzuki Dzire</h3>
                    <p>Engine: 1.2L | Power: 88 bhp | Mileage: 24 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar2" runat="server" CssClass="select-btn" Text="Book Now Dzire" OnClick="bookdzire" />
                </div>
            </div>

            <!-- Car 3 - Maruti Suzuki Baleno -->
            <div class="car-card">
                <img src="https://ymimg1.b8cdn.com/resized/car_model/10913/logo/listing_main_2022_Suzuki_Baleno_Exterior_01.jpg" alt="Maruti Suzuki Baleno" class="car-image" />
                <div class="car-info">
                    <h3>Maruti Suzuki Baleno</h3>
                    <p>Engine: 1.2L | Power: 120 bhp | Mileage: 26 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar3" runat="server" CssClass="select-btn" Text="Book Now Baleno" OnClick="bookbaleno" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
