<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Evisa.aspx.cs" Inherits="WebApplication1.Evisa" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login Page</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <style>
        body {
            background-color: #121212; /* Dark background */
            color: #ffffff; /* Light text */
        }
        .container {
            margin-top: 100px;
        }
        h1, h2 {
            color: #ffffff; /* White text for the heading */
        }
        .tile {
            height: 150px;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 10px;
            color: white;
            text-decoration: none;
            font-size: 24px;
            transition: transform 0.2s;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
        }
        .tile:hover {
            transform: scale(1.05);
        }
        .admin {
            background-color: #e63946; /* Red */
        }
        .hr {
            background-color: #f1faee; /* Light green */
            color: #000; /* Dark text for contrast */
        }
        .employee {
            background-color: #a8dadc; /* Light blue */
            color: #000; /* Dark text for contrast */
        }
        /* Adjustments for the footer or additional text */
        footer {
            position: fixed;
            bottom: 20px;
            left: 0;
            right: 0;
            text-align: center;
            color: #aaa;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container text-center">
            <h1 class="mb-4">Welcome to Abode</h1> <!-- New heading -->
            <h2 class="mb-4">Login</h2> <!-- Existing login heading -->
            <div class="row">
                <div class="col-md-4">
                    <div class="tile admin" onclick="window.location='Evisaadminlogin1.aspx';">
                        Admin
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="tile hr" onclick="window.location='EvisaHRlogin1.aspx';">
                        HR
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="tile employee" onclick="window.location='Evisaemployeelogin.aspx';">
                        Employee
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <footer>
        <p>&copy; 2024 Gujjar Visa Service. All rights reserved.</p>
    </footer>
</body>
</html>
