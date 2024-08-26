﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EvisaHRdashboard.aspx.cs" Inherits="WebApplication1.EvisaHRdashboard" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>HR Dashboard</title>
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
            margin-bottom: 40px;
        }
        .tile {
            height: 100px;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 10px;
            color: white;
            text-decoration: none;
            font-size: 24px;
            transition: transform 0.2s;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
            margin: 10px; /* Space between tiles */
        }
        .tile:hover {
            transform: scale(1.05);
        }
        /* Color classes for each tile */
        .view-employees { background-color: #2980b9; } /* Blue */
        .new-visa { background-color: #f39c12; } /* Orange */
        .update-visa { background-color: #27ae60; } /* Green */
        .change-password { background-color: #8e44ad; } /* Purple */
        .feedback { background-color: #f1c40f; } /* Yellow */

        /* Adjustments for the footer */
        footer {
            position: fixed;
            bottom: 20px;
            left: 0;
            right: 0;
            text-align: center;
            color: #aaa;
        }
        /* Responsive design for tiles */
        @media (min-width: 768px) {
            .tile {
                flex: 1 1 calc(33.333% - 20px); /* Three tiles per row with margin */
            }
        }
        @media (max-width: 767px) {
            .tile {
                flex: 1 1 calc(100% - 20px); /* Full width on smaller screens */
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container text-center">
            <h1 class="mb-4">HR Dashboard</h1>
            <h2 class="mb-4">Welcome to Abode</h2>
            <div class="row justify-content-center">
                <div class="col-md-4">
                    <div class="tile view-employees" onclick="window.location='ViewEmployees.aspx';">
                        View Employees
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="tile new-visa" onclick="window.location='NewVisaRequest.aspx';">
                        New Visa Request
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="tile update-visa" onclick="window.location='UpdateVisaRequest.aspx';">
                        Update Visa Request
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="tile change-password" onclick="window.location='ChangePassword.aspx';">
                        Change Password
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="tile feedback" onclick="window.location='Feedback.aspx';">
                        Feedback
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
