<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <style>
        body {
            background-color: #f0f8ff; /* Light blue background */
        }

        .container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            background: linear-gradient(135deg, #4caf50, #2196f3); /* Gradient from green to blue */
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            border: 2px solid #ff5722; /* Colorful border */
        }

        h2 {
            text-align: center;
            color: #fff; /* White text for better contrast on gradient */
            font-family: 'Georgia', serif;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #fff; /* White label text for better visibility */
            font-weight: bold;
        }

        .error {
            color: #ffeb3b; /* Yellow for error messages for better visibility */
            font-size: 0.9em;
        }

        .btn-submit {
            background-color: #ffeb3b; /* Yellow button */
            color: #333;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            transition: background-color 0.3s; /* Transition for hover effect */
        }

        .btn-submit:hover {
            background-color: #ffc107; /* Darker yellow on hover */
        }

        @media (max-width: 600px) {
            .container {
                width: 90%;
                margin: 20px auto;
            }
        }

        .footer {
            text-align: center;
            margin-top: 20px;
            color: #fff; /* White text for footer */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Registration Form</h2>
            <div class="form-group">
                <label for="txtName">Enter Your Name:</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" 
                    ErrorMessage="Name is required." CssClass="error" Display="Dynamic" />
            </div>
            <div class="form-group">
                <label for="txtPassword">Enter Your Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" 
                    ErrorMessage="Password is required." CssClass="error" Display="Dynamic" />
            </div>
            <div class="form-group">
                <label for="txtConfirmPassword">Confirm Password:</label>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" 
                    ErrorMessage="Confirm Password is required." CssClass="error" Display="Dynamic" />
                <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" 
                    ControlToValidate="txtConfirmPassword" ErrorMessage="Passwords do not match." CssClass="error" 
                    Display="Dynamic" />
            </div>
            <div class="form-group">
                <label for="txtAge">Enter Your Age:</label>
                <asp:TextBox ID="txtAge" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge" 
                    ErrorMessage="Age is required." CssClass="error" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="revAge" runat="server" ControlToValidate="txtAge" 
                    ErrorMessage="Please enter a valid age (0-120)." CssClass="error" 
                    ValidationExpression="^(1[01]?[0-9]|[1-9]?[0-9])$" Display="Dynamic" />
            </div>
            <div class="form-group">
                <label for="txtEmail">Enter Your Email ID:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" 
                    ErrorMessage="Email is required." CssClass="error" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" 
                    ErrorMessage="Invalid email format." CssClass="error" 
                    ValidationExpression="^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$" Display="Dynamic" />
            </div>
            <div class="form-group">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-warning btn-block" />
            </div>
            <div class="footer">
                <p>&copy; Utkarsh Singh</p>
            </div>
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>