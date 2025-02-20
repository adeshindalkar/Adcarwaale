<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MahindraSuvBooking.aspx.cs" Inherits="final_year_project_9662.MahindraSuvBooking" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mahindra SUV Booking</title>
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
        <h2>Select Your Mahindra SUV</h2>
        <div class="car-grid">
            <!-- Car 1 - Mahindra XUV700 -->
            <div class="car-card">
                <img src="https://i0.wp.com/www.smartprix.com/bytes/wp-content/uploads/2024/05/image-106.png?ssl=1" alt="Mahindra XUV700" class="car-image" />
                <div class="car-info">
                    <h3>Mahindra XUV700</h3>
                    <p>Engine: 2.0L | Power: 200 bhp | Mileage: 12 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar1" runat="server" CssClass="select-btn" Text="Book Now" OnClick="bookxuv700" />
                </div>
            </div>

            <!-- Car 2 - Mahindra Scorpio N -->
            <div class="car-card">
                <img src="https://cdn.3dmodels.org/wp-content/uploads/Mahindra/035_Mahindra_Scorpio-N_2022/Mahindra_Scorpio-N_2022_1000_0001.jpg" alt="Mahindra Scorpio N" class="car-image" />
                <div class="car-info">
                    <h3>Mahindra Scorpio N</h3>
                    <p>Engine: 2.2L | Power: 172 bhp | Mileage: 14 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar2" runat="server" CssClass="select-btn" Text="Book Now" OnClick="bookscorpion" />
                </div>
            </div>

            <!-- Car 3 - Mahindra Thar -->
            <div class="car-card">
                <img src="https://imgd-ct.aeplcdn.com/1056x660/n/cw/ec/124839/thar-roxx-exterior-left-front-three-quarter-3.jpeg?isig=0&q=80" alt="Mahindra Thar" class="car-image" />
                <div class="car-info">
                    <h3>Mahindra Thar</h3>
                    <p>Engine: 2.0L | Power: 150 bhp | Mileage: 15 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar3" runat="server" CssClass="select-btn" Text="Book Now" OnClick="bookthar" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
