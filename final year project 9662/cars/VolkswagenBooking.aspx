<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VolkswagenBooking.aspx.cs" Inherits="final_year_project_9662.VolkswagenBooking" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Volkswagen Car Booking</title>
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
        <h2>Select Your Volkswagen Car</h2>
        <div class="car-grid">
            <!-- Car 1 - Volkswagen Polo -->
            <div class="car-card">
                <img src="https://images.wapcar.my/file1/bbce19d706094daead524c1f30c8510a_606x402.jpg" alt="Volkswagen Polo" class="car-image" />
                <div class="car-info">
                    <h3>Volkswagen Polo</h3>
                    <p>Engine: 1.0L | Power: 108 bhp | Mileage: 18 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar1" runat="server" CssClass="select-btn" Text="Book Now" OnClick="bookpolo" />
                </div>
            </div>

            <!-- Car 2 - Volkswagen Virtus -->
            <div class="car-card">
                <img src="https://static.toiimg.com/thumb/resizemode-4,width-1280,height-720,msid-89722931/89722931.jpg" alt="Volkswagen Virtus" class="car-image" />
                <div class="car-info">
                    <h3>Volkswagen Virtus</h3>
                    <p>Engine: 1.5L | Power: 150 bhp | Mileage: 20 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar2" runat="server" CssClass="select-btn" Text="Book Now" OnClick="bookvirtus" />
                </div>
            </div>

            <!-- Car 3 - Volkswagen Vento -->
            <div class="car-card">
                <img src="https://5.imimg.com/data5/GK/BH/GLADMIN-61801946/volkswagen-vento-car.png" alt="Volkswagen Vento" class="car-image" />
                <div class="car-info">
                    <h3>Volkswagen Vento</h3>
                    <p>Engine: 2.0L | Power: 190 bhp | Mileage: 16 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar3" runat="server" CssClass="select-btn" Text="Book Now" OnClick="bookvento" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
