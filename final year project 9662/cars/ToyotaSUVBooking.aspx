<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ToyotaSUVBooking.aspx.cs" Inherits="final_year_project_9662.ToyotaSUVBooking" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Toyota SUV Booking</title>
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
        <h2>Select Your Toyota SUV</h2>
        <div class="car-grid">
            <!-- Car 1 - Toyota Fortuner -->
            <div class="car-card">
                <img src="https://i.pinimg.com/736x/d6/c5/51/d6c551628fdcdf15378ca8c6d92a32ea.jpg" alt="Toyota Fortuner" class="car-image" />
                <div class="car-info">
                    <h3>Toyota Fortuner</h3>
                    <p>Engine: 2.8L Diesel | Power: 204 bhp | Mileage: 14 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar1" runat="server" CssClass="select-btn" Text="Book Now" OnClick="bookfortuner" />
                </div>
            </div>

            <!-- Car 2 - Toyota Urban Cruiser Hyryder -->
            <div class="car-card">
                <img src="https://mda.spinny.com/sp-file-system/public/2024-12-28/0c1de111f78f4d29b700a4a0722470e4/file.JPG" alt="Toyota Hyryder" class="car-image" />
                <div class="car-info">
                    <h3>Toyota Hyryder</h3>
                    <p>Engine: 1.5L Hybrid | Power: 116 bhp | Mileage: 27 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar2" runat="server" CssClass="select-btn" Text="Book Now" OnClick="bookhyryder" />
                </div>
            </div>

            <!-- Car 3 - Toyota Land Cruiser -->
            <div class="car-card">
                <img src="https://assets.autobuzz.my/wp-content/uploads/2021/06/10091744/2021-Toyota-Land-Cruiser-LC300-1.jpg" alt="Toyota Land Cruiser" class="car-image" />
                <div class="car-info">
                    <h3>Toyota Land Cruiser</h3>
                    <p>Engine: 3.3L Diesel | Power: 305 bhp | Mileage: 11 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar3" runat="server" CssClass="select-btn" Text="Book Now" OnClick="bookcruiser" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>

