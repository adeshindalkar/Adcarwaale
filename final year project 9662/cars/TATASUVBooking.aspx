<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TATASUVBooking.aspx.cs" Inherits="final_year_project_9662.TATASUVBooking" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TATA SUV Booking</title>
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
        <h2>Select Your TATA SUV</h2>
        <div class="car-grid">
            <!-- Car 1 - Tata Harrier -->
            <div class="car-card">
                <img src="https://wd-image.webdunia.com/image-conversion/process-aws.php?url=https://nonprod-media.webdunia.com/public_html/_media/hi/img/article/2020-01/08/full/1578468670-3037.jpg&w=&h=&outtype=webp" alt="Tata Harrier" class="car-image" />
                <div class="car-info">
                    <h3>Tata Harrier</h3>
                    <p>Engine: 2.0L Diesel | Power: 170 bhp | Mileage: 16 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar1" runat="server" CssClass="select-btn" Text="Book Now" OnClick="bookharrier" />
                </div>
            </div>

            <!-- Car 2 - Tata Safari -->
            <div class="car-card">
                <img src="https://imgd-ct.aeplcdn.com/664x415/n/s1at9va_1599151.jpg?q=80" alt="Tata Safari" class="car-image" />
                <div class="car-info">
                    <h3>Tata Safari</h3>
                    <p>Engine: 2.0L Diesel | Power: 170 bhp | Mileage: 14 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar2" runat="server" CssClass="select-btn" Text="Book Now" OnClick="booksafari" />
                </div>
            </div>

            <!-- Car 3 - Tata Nexon -->
            <div class="car-card">
                <img src="https://stat.overdrive.in/wp-content/uploads/2024/01/Untitled-design-2024-01-31T184604.142.png" alt="Tata Nexon" class="car-image" />
                <div class="car-info">
                    <h3>Tata Nexon</h3>
                    <p>Engine: 1.5L Diesel | Power: 120 bhp | Mileage: 18 km/l</p>
                    <p>Rating: ⭐⭐⭐⭐</p>
                </div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectCar3" runat="server" CssClass="select-btn" Text="Book Now" OnClick="booknexon" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
