<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="final_year_project_9662.AdminDashboard" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background: linear-gradient(135deg, #007bff, #6610f2);
            color: white;
        }
        .sidebar {
            background: #2c3e50;
            padding: 20px;
            height: 100vh;
            position: fixed;
            width: 250px;
            left: 0;
            top: 0;
        }
        .sidebar h3 {
            text-align: center;
            margin-bottom: 20px;
        }
        .sidebar a {
            display: block;
            color: white;
            text-decoration: none;
            padding: 10px;
            margin: 5px 0;
            border-radius: 5px;
            transition: 0.3s;
        }
        .sidebar a:hover {
            background: #3498db;
        }
        .main-content {
            margin-left: 270px;
            padding: 20px;
        }
        .table-container {
            background: white;
            color: black;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .assign-driver {
            color: #007bff;
            cursor: pointer;
            font-size: 20px;
            text-decoration: none;
        }
        .assign-driver:hover {
            color: #0056b3;
        }
        .styled-gridview {
            width: 100%;
            border-collapse: collapse;
        }
        .styled-gridview th {
            background-color: #007bff;
            color: white;
            padding: 10px;
            text-align: center;
        }
        .styled-gridview td {
            padding: 10px;
            text-align: center;
            background-color: #f8f9fa;
        }
        .styled-gridview tr:nth-child(even) td {
            background-color: #e9ecef;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="sidebar">
            <div class="text-center">
                <img src="https://cdn-icons-png.flaticon.com/512/149/149071.png" width="80" class="rounded-circle mb-2" />
                <h3>Admin</h3>
            </div>
            <a href="AdminDashboard.aspx">Dashboard</a>
            <a href="ManageDrivers.aspx">Manage Drivers</a>
            <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn btn-danger w-100 mt-3" OnClick="btnLogout1" />
        </div>

        <div class="main-content">
            <h2 class="text-center mb-4">Customer Bookings</h2>
            <div class="table-container">
                <div class="table-responsive">
                    <asp:GridView ID="griduser" runat="server" CssClass="table table-bordered styled-gridview" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="cname" HeaderText="Customer Name" />
        <asp:BoundField DataField="cemail" HeaderText="Customer Email" />
        <asp:BoundField DataField="cphone" HeaderText="Phone" />
        <asp:BoundField DataField="ccarname" HeaderText="Car Name" />
        <asp:BoundField DataField="cpickupdate" HeaderText="Pickup Date" />
        <asp:BoundField DataField="cpickuplocation" HeaderText="Pickup Location" />
       

         
        
        <asp:TemplateField HeaderText="Select Driver">
            <ItemTemplate>
                <asp:HyperLink 
                    ID="lnkSelectDriver" 
                    runat="server" 
                    NavigateUrl='<%# "ManageDrivers.aspx?customer=" + Eval("cname") %>' 
                    CssClass="assign-driver">
                    Select
                </asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
