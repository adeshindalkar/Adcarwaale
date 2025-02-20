<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HondaBooking.aspx.cs" Inherits="final_year_project_9662.HondaBooking" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Honda Car Booking</title>
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
        <h2>Select Your Honda Car</h2>
        <div class="car-grid">
            <!-- Car 1 - Honda City -->
            <div class="car-card">
                <img src="https://5.imimg.com/data5/HV/LC/MY-29201533/honda-city-car-500x500.png" alt="Honda City" class="car-image" />
                <div class="car-info">
                    <h3>Honda City</h3>
                    <p>Engine: 1.5L | Power: 119 bhp | Mileage: 17 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar1" runat="server" CssClass="select-btn" Text="Book Now" OnClick="bookcity" />
                </div>
            </div>

            <!-- Car 2 - Honda Amaze -->
            <div class="car-card">
                <img src="https://5.imimg.com/data5/QS/HP/GLADMIN-28060569/honda-amaze-car-500x500.png" alt="Honda Amaze" class="car-image" />
                <div class="car-info">
                    <h3>Honda Amaze</h3>
                    <p>Engine: 2.0L | Power: 154 bhp | Mileage: 14 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar2" runat="server" CssClass="select-btn" Text="Book Now" OnClick="bookamaze" />
                </div>
            </div>

            <!-- Car 3 - Honda Jazz -->
            <div class="car-card">
                <img src="https://www.kindpng.com/picc/m/190-1900548_honda-jazz-50-years-edition-hd-png-download.png" alt="Honda Jazz" class="car-image" />
                <div class="car-info">
                    <h3>Honda Jazz</h3>
                    <p>Engine: 1.2L | Power: 89 bhp | Mileage: 18 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar3" runat="server" CssClass="select-btn" Text="Book Now" OnClick="bookjazz" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
