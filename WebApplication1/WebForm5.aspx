<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication1.WebForm5" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Registration Form</title>
    <style>
        html, body {
            height: 100%; /* Make sure both html and body take full height */
            margin: 0; /* Remove default margin */
            overflow: hidden; /* Prevent scrollbars */
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #121212; /* Default dark background */
            color: #ffffff; /* Default white text */
            display: flex; /* Use flexbox to center the container */
            justify-content: center; /* Center horizontally */
            align-items: center; /* Center vertically */
            transition: background-color 0.3s, color 0.3s; /* Smooth transition */
        }

        .container {
            background: linear-gradient(to bottom, #ff5722, #000000); /* Default orange to black gradient */
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            width: 90%; /* Adjusted width for better responsiveness */
            max-width: 600px; /* Maximum width for the container */
            padding: 5%; /* Padding inside container */
            box-sizing: border-box; /* Include padding in width and height calculations */
            display: flex; /* Use flexbox for layout */
            flex-direction: column; /* Stack items vertically */
            height: 90vh; /* Set a height that fits the viewport */
            overflow-y: auto; /* Allow vertical scrolling if content overflows */
            transition: background 0.3s; /* Smooth transition */
        }

        h2 {
            text-align: center;
            color: #ffffff; /* White heading */
            margin-bottom: 20px;
        }

        .form-group {
            display: flex; /* Use flexbox for each form group */
            align-items: center; /* Align items vertically */
            margin-bottom: 15px; /* Spacing between form groups */
            width: 100%;
        }

        label {
            font-weight: bold;
            flex: 0 0 30%; /* Allow label to take 30% of the width */
            margin-right: 10px; /* Space between label and input */
        }

        input[type="text"],
        input[type="password"],
        input[type="date"] {
            flex: 1; /* Allow input to take remaining space */
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #333; /* Dark background for inputs */
            color: #ffffff; /* White text for inputs */
            box-sizing: border-box; /* Include padding and border in element's total width and height */
            transition: background-color 0.3s, color 0.3s; /* Smooth transition */
        }

        .error {
            color: red;
            font-size: 12px;
            margin-top: 5px; /* Add some space above error messages */
        }

        input[type="radio"] {
            margin-right: 5px;
            accent-color: #ff5722; /* Orange color for radio buttons */
        }

        .submit-button {
            background-color: #ff5722; /* Orange color */
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            margin-top: 20px; /* Add margin for spacing */
        }

        .submit-button:hover {
            background-color: #e64a19; /* Darker shade of orange on hover */
        }

        .radio-group {
            display: flex; /* Use flexbox to align radio buttons in a row */
            justify-content: flex-start; /* Align items to the left */
            margin: 10px 0; /* Add margin for spacing */
        }

        .toggle-button {
            background-color: #ff5722; /* Orange color for toggle button */
            color: white;
            padding: 10px;
            border: none;
            border-radius: 50%; /* Circular button */
            cursor: pointer;
            position: absolute; /* Position it absolutely */
            top: 20px; /* Distance from the top */
            right: 20px; /* Distance from the right */
            width: 40px; /* Width of the button */
            height: 40px; /* Height of the button */
            transition: background-color 0.3s;
            display: flex; /* Center the icon inside */
            align-items: center; /* Center vertically */
            justify-content: center; /* Center horizontally */
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.5); /* Add shadow for depth */
        }

        .toggle-button:hover {
            background-color: #e64a19; /* Darker shade on hover */
        }

        /* Normal mode styles */
        .normal-mode {
            background-color: #ffffff; /* White background */
            color: #333333; /* Dark text */
        }

        .normal-mode .container {
            background: linear-gradient(to bottom, #f0f0f0, #d9d9d9); /* Light gradient for normal mode */
        }

        .normal-mode input[type="text"],
        .normal-mode input[type="password"],
        .normal-mode input[type="date"] {
            background-color: #ffffff; /* White background for inputs */
            color: #333333; /* Dark text for inputs */
            border: 1px solid #ccc; /* Border color */
        }

        .normal-mode .error {
            color: red;
        }

        @media (max-width: 768px) {
            .container {
                width: 100%; /* Full width on smaller screens */
                padding: 10%; /* Adjust padding */
            }

            label {
                flex: 0 0 35%; /* Adjust label width for smaller screens */
            }

            .form-group {
                flex-direction: column; /* Stack label and input on top of each other */
                align-items: flex-start; /* Align items to the start */
            }
        }
    </style>
</head>
<body id="body">
    <button class="toggle-button" onclick="toggleMode()">🌙</button>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Registration Form</h2>

            <div class="form-group">
                <label for="name">Name:</label>
                <asp:TextBox ID="name" runat="server" required="required"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="name" 
                    ErrorMessage="Name is required." CssClass="error" Display="Dynamic" />
            </div>

            <div class="form-group">
                <label for="username">Username:</label>
                <asp:TextBox ID="username" runat="server" required="required"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="username" 
                    ErrorMessage="Username is required." CssClass="error" Display="Dynamic" />
            </div>

            <div class="form-group">
                <label for="email">Email ID:</label>
                <asp:TextBox ID="email" runat="server" required="required"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="email" 
                    ErrorMessage="Email is required." CssClass="error" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="email" 
                    ErrorMessage="Invalid email format." CssClass="error" Display="Dynamic" 
                    ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" />
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
                <label for="website">Website:</label>
                <asp:TextBox ID="website" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revWebsite" runat="server" ControlToValidate="website" 
                    ErrorMessage="Invalid URL format." CssClass="error" Display="Dynamic" 
                    ValidationExpression="^(http|https)://.+$" />
            </div>

            <div class="form-group">
                <label for="age">Age:</label>
                <asp:TextBox ID="age" runat="server" required="required"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="age" 
                    ErrorMessage="Age is required." CssClass="error" Display="Dynamic" />
            </div>

            <div class="form-group">
                <label for="dob">Date of Birth:</label>
                <asp:TextBox ID="dob" runat="server" TextMode="Date" required="required"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ControlToValidate="dob" 
                    ErrorMessage="Date of Birth is required." CssClass="error" Display="Dynamic" />
            </div>

            <div class="form-group">
                <label for="mobileno">Mobile No:</label>
                <asp:TextBox ID="mobileno" runat="server" required="required"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMobileNo" runat="server" ControlToValidate="mobileno" 
                    ErrorMessage="Mobile number is required." CssClass="error" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="revMobileNo" runat="server" ControlToValidate="mobileno" 
                    ErrorMessage="Invalid mobile number format." CssClass="error" 
                    ValidationExpression="^\d{10}$" />
            </div>

            <div class="form-group">
                <label for="address">Address:</label>
                <asp:TextBox ID="address" runat="server" required="required"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="address" 
                    ErrorMessage="Address is required." CssClass="error" Display="Dynamic" />
            </div>

            <div class="form-group">
                <label for="zip">Zip Code:</label>
                <asp:TextBox ID="zip" runat="server" required="required"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvZip" runat="server" ControlToValidate="zip" 
                    ErrorMessage="Zip Code is required." CssClass="error" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="revZip" runat="server" ControlToValidate="zip" 
                    ErrorMessage="Invalid zip code format." CssClass="error" 
                    ValidationExpression="^\d{5}$" />
            </div>

            <div class="radio-group">
                <label>Hobbies:</label>
                <asp:RadioButton ID="cricket" runat="server" GroupName="hobbies" Text="Cricket" />
                <asp:RadioButton ID="foosball" runat="server" GroupName="hobbies" Text="Foosball" />
            </div>

            <div>
                <asp:Button ID="submitButton" runat="server" Text="Submit" CssClass="submit-button" />
            </div>
        </div>
    </form>

    <script>
        function toggleMode() {
            var body = document.getElementById('body');
            body.classList.toggle('normal-mode'); // Toggle the normal mode class
        }
    </script>
</body>
</html>