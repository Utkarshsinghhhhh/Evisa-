<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Evisaemployeelogin.aspx.cs" Inherits="WebApplication1.Evisaemployeelogin" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Employee Login</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <style>
        body {
            background-color: #121212; /* Dark background */
            color: #ffffff; /* Light text */
        }
        .container {
            margin-top: 100px;
            max-width: 400px;
        }
        h1 {
            color: #ffffff; /* White text for the heading */
            text-align: center;
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
            <h1 class="mb-4">Employee Login</h1>
            <div class="form-group">
                <label for="username">Username:</label>
                <asp:TextBox ID="username" runat="server" CssClass="form-control" placeholder="Enter your username" required></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <asp:TextBox ID="password" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter your password" required></asp:TextBox>
            </div>
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary btn-block" OnClick="btnLogin_Click" />
            <div class="text-center mt-3">
                <a href="Evisa.aspx" class="text-white">Back to Home</a>
            </div>
            <asp:Label ID="lblMessage" runat="server" CssClass="text-danger text-center mt-3"></asp:Label>
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
