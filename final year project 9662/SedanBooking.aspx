<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SedanBooking.aspx.cs" Inherits="final_year_project_9662.SedanBooking" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sedan Car Booking</title>
    <style type="text/css">
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #ffeb3b; /* Yellow background */
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
        <h2>Select Your Sedan Car Brand</h2>
        <div class="car-grid">
            <div class="car-card">
                <img src="https://www.carlogos.org/car-logos/suzuki-logo.png" alt="Maruti Suzuki" class="car-image" />
                <div class="car-info">Maruti Suzuki</div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectMaruti" runat="server" CssClass="select-btn" Text="Book Maruti Sedan" OnClick="btnSelectMaruti_Click" />
                </div>
            </div>
            <div class="car-card">
                <img src="https://www.carlogos.org/car-logos/tata-logo.png" alt="TATA" class="car-image" />
                <div class="car-info">TATA</div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectTATA" runat="server" CssClass="select-btn" Text="Book TATA Sedan" OnClick="btnSelectTATA_Click" />
                </div>
            </div>
            <div class="car-card">
                <img src="https://www.carlogos.org/car-logos/volkswagen-logo.png" alt="Volkswagen" class="car-image" />
                <div class="car-info">Volkswagen</div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectVolkswagen" runat="server" CssClass="select-btn" Text="Book Volkswagen Sedan" OnClick="btnSelectVolkswagen_Click" />
                </div>
            </div>
            <div class="car-card">
                <img src="https://www.carlogos.org/car-logos/toyota-logo.png" alt="Toyota" class="car-image" />
                <div class="car-info">Toyota</div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectToyota" runat="server" CssClass="select-btn" Text="Book Toyota Sedan" OnClick="btnSelectToyota_Click" />
                </div>
            </div>
            <div class="car-card">
                <img src="https://www.carlogos.org/car-logos/hyundai-logo.png" alt="Hyundai" class="car-image" />
                <div class="car-info">Hyundai</div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectHyundai" runat="server" CssClass="select-btn" Text="Book Hyundai Sedan" OnClick="btnSelectHyundai_Click" />
                </div>
            </div>
            <div class="car-card">
                <img src="https://www.carlogos.org/car-logos/honda-logo.png" alt="Honda" class="car-image" />
                <div class="car-info">Honda</div>
                <div class="btn-container">
                    <asp:Button ID="btnSelectHonda" runat="server" CssClass="select-btn" Text="Book Honda Sedan" OnClick="btnSelectHonda_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>