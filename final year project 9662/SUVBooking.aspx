<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SUVBooking.aspx.cs" Inherits="final_year_project_9662.SUVBooking" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SUV Booking</title>
    <style type="text/css">
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #ffeb3b;
            margin: 0;
            padding: 0;
            color: #333;
        }

        h2 {
            text-align: center;
            font-size: 36px;
            color: #333;
            margin-top: 50px;
            text-transform: uppercase;
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
            border-radius: 15px;
            overflow: hidden;
            background: linear-gradient(to bottom right, #ffffff, #ffe082);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.25);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            text-align: center;
            padding-bottom: 20px;
        }

        .car-card:hover {
            transform: scale(1.05);
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.3);
        }

        .car-image {
            width: 100%;
            height: 200px;
            object-fit: contain;
            background: white;
            padding: 10px;
        }

        .car-info {
            padding: 15px;
            font-size: 18px;
            font-weight: bold;
        }

        .select-btn {
            padding: 12px 20px;
            background-color: #ff9800;
            color: white;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-size: 18px;
            font-weight: bold;
            transition: background-color 0.3s ease, transform 0.2s;
        }

        .select-btn:hover {
            background-color: #e65100;
            transform: scale(1.1);
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
        <h2>Select Your SUV Car Company</h2>
        <div class="car-grid">
            <div class="car-card">
                <img src="https://www.carlogos.org/car-logos/ford-logo.png" alt="Ford" class="car-image" />
                <div class="car-info">Ford</div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectFord" runat="server" CssClass="select-btn" Text="Select Ford" OnClick="btnSelectFord_Click" />
                </div>
            </div>
            <div class="car-card">
                <img src="https://www.carlogos.org/car-logos/suzuki-logo.png" alt="Suzuki" class="car-image" />
                <div class="car-info">Suzuki</div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectSuzuki" runat="server" CssClass="select-btn" Text="Select Suzuki" OnClick="btnSelectSuzuki_Click" />
                </div>
            </div>
            <div class="car-card">
                <img src="https://www.carlogos.org/car-logos/mahindra-logo.png" alt="Mahindra" class="car-image" />
                <div class="car-info">Mahindra</div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectMahindra" runat="server" CssClass="select-btn" Text="Select Mahindra" OnClick="btnSelectMahindra_Click" />
                </div>
            </div>
            <div class="car-card">
                <img src="https://www.carlogos.org/car-logos/hyundai-logo.png" alt="Hyundai" class="car-image" />
                <div class="car-info">Hyundai</div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectHyundai" runat="server" CssClass="select-btn" Text="Select Hyundai" OnClick="btnSelectHyundai_Click" />
                </div>
            </div>
            <div class="car-card">
                <img src="https://www.carlogos.org/car-logos/tata-logo.png" alt="Tata" class="car-image" />
                <div class="car-info">Tata</div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectTata" runat="server" CssClass="select-btn" Text="Select Tata" OnClick="btnSelectTata_Click" />
                </div>
            </div>
            <div class="car-card">
                <img src="https://www.carlogos.org/car-logos/toyota-logo.png" alt="Toyota" class="car-image" />
                <div class="car-info">Toyota</div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectToyota" runat="server" CssClass="select-btn" Text="Select Toyota" OnClick="btnSelectToyota_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
