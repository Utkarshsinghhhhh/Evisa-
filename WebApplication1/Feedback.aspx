<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="WebApplication1.Feedback" %>


<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Feedback</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <style>
        body {
            background-color: #121212; /* Dark background */
            color: #ffffff; /* Light text */
        }
        .container {
            margin-top: 100px;
            max-width: 600px;
        }
        h1 {
            color: #ffffff; /* White text for the heading */
            text-align: center;
            margin-bottom: 30px;
        }
        .form-control {
            background-color: #2a2a2a; /* Dark input background */
            color: #ffffff; /* Light text */
            border: 1px solid #444; /* Dark border */
        }
        .form-control:focus {
            background-color: #2a2a2a; /* Dark input background on focus */
            color: #ffffff; /* Light text */
            border-color: #007bff; /* Blue border on focus */
        }
        .btn-primary {
            background-color: #007bff; /* Bootstrap primary color */
            border-color: #007bff; /* Bootstrap primary color */
        }
        .btn-primary:hover {
            background-color: #0056b3; /* Darker blue on hover */
            border-color: #0056b3; /* Darker blue border on hover */
        }
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
        <div class="container">
            <h1 class="mb-4">Feedback Form</h1>
            <div class="form-group">
                <label for="name">Name:</label>
                <asp:TextBox ID="name" runat="server" CssClass="form-control" placeholder="Enter your name" required></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="Enter your email" required></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="feedback">Feedback:</label>
                <asp:TextBox ID="feedback" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" placeholder="Enter your feedback" required></asp:TextBox>
            </div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary btn-block" />
            <div class="text-center mt-3">
                <a href="Evisa.aspx" class="text-white">Back to Home</a>
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