<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageDrivers.aspx.cs" Inherits="final_year_project_9662.ManageDrivers" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Drivers | Adcarwaale</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    
    <style>
        body {
            background: linear-gradient(to right, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.7)), 
                        url('https://wallpapers.com/images/featured/rolls-royce-r5vl92b5wzzbzvjz.jpg') no-repeat center center fixed;
            background-size: cover;
            color: white;
            font-family: 'Poppins', sans-serif;
        }

        .container {
            background: rgba(255, 255, 255, 0.1);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 15px rgba(255, 255, 255, 0.2);
            margin-top: 50px;
        }

        h2 {
            text-transform: uppercase;
            font-weight: bold;
            letter-spacing: 1px;
            text-align: center;
        }

        .card {
            background: rgba(255, 255, 255, 0.15);
            border: none;
            border-radius: 10px;
            backdrop-filter: blur(10px);
            color: white;
        }

        label {
            font-weight: bold;
        }

        .btn-success {
            font-size: 18px;
            padding: 10px 25px;
            border-radius: 25px;
            transition: 0.3s;
        }

        .btn-success:hover {
            background-color: #28a745;
            transform: scale(1.05);
        }

        .table-container {
            margin-top: 20px;
        }

        .table {
            color: white;
            background: rgba(255, 255, 255, 0.1);
        }

        .table th {
            background: rgba(255, 255, 255, 0.3);
            color: white;
        }

        .styled-gridview a {
            color: white;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form runat="server">
        <div class="container mt-5">
            <h2>Manage Drivers</h2>

            <!-- Form for Adding New Drivers -->
            <div class="card p-4 mb-4">
                <h4 class="mb-3 text-center">Add New Driver</h4>
                <div class="row">
                    <div class="col-md-3">
                        <label for="txtDriverName">Driver Name:</label>
                        <asp:TextBox ID="txtDriverName" runat="server" CssClass="form-control" EnableViewState="true"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <label for="txtPhone">Phone:</label>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" EnableViewState="true"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <label for="txtLicenceNo">Licence No:</label>
                        <asp:TextBox ID="txtLicenceNo" runat="server" CssClass="form-control" EnableViewState="true"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <label for="ddlAvailability">Availability:</label>
                        <asp:DropDownList ID="ddlAvailability" runat="server" CssClass="form-control" EnableViewState="true">
                            <asp:ListItem Text="Available" Value="Available"></asp:ListItem>
                            <asp:ListItem Text="Not Available" Value="Not Available"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="mt-3 text-center">
                    <asp:Button ID="btnAddDriver" runat="server" Text="Add Driver" CssClass="btn btn-success" OnClick="BtnAddDriver1" />
                </div>
            </div>
           


            
            <div class="table-container">
                <h2 class="text-center mb-4">Driver List</h2>
                <div class="table-responsive">
                   <asp:GridView ID="gridDrivers" runat="server" AutoGenerateColumns="False" 
    CssClass="table table-bordered" OnRowCommand="gridDrivers_RowCommand">
    <Columns>
        
        <asp:BoundField DataField="drivername" HeaderText="Driver Name" />
        <asp:BoundField DataField="phone" HeaderText="Phone" />
        <asp:BoundField DataField="licenceno" HeaderText="License No" />
        <asp:BoundField DataField="availability" HeaderText="Availability" />
        <asp:TemplateField HeaderText="Actions">
            <ItemTemplate>
                <asp:Button ID="btnAssign" runat="server" CommandName="Assign" 
                    CommandArgument='<%# Eval("drivername") %>' Text="Assign" CssClass="btn btn-success"/>
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
