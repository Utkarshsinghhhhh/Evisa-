<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <style>
        body {
            background-color: #121212; /* Dark background */
            color: #ffffff; /* White text */
        }

        .container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            background-color: #1e1e1e; /* Dark grey background for form */
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }

        h2 {
            text-align: center;
            color: #ffffff; /* White text for header */
            font-family: 'Georgia', serif;
        }

        .error {
            color: #ff4081; /* Pink for error messages */
            font-size: 0.9em;
        }

        label {
            color: #ffffff; /* White labels for better visibility */
        }

        .footer {
            text-align: center;
            margin-top: 20px;
            color: #ffffff; /* White footer text */
        }

        .btn-primary {
            background-color: #6200ea; /* Custom purple button color */
            border-color: #6200ea;
        }

        .btn-primary:hover {
            background-color: #3700b3; /* Darker purple on hover */
            border-color: #3700b3;
        }

        /* Style for placeholder text */
        ::placeholder {
            color: yellow; /* Yellow placeholder color */
            opacity: 1; /* Make sure the placeholder is fully opaque */
        }

        /* For Webkit browsers (Chrome, Safari) */
        :-ms-input-placeholder { /* Internet Explorer 10-11 */
            color: yellow; /* Yellow placeholder color */
        }
        
        ::-ms-input-placeholder { /* Microsoft Edge */
            color: yellow; /* Yellow placeholder color */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Contact Us</h2>
            <div class="form-group">
                <label for="txtName">Enter Your Name:</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Utkarsh Singh"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" 
                    ErrorMessage="Name is required." CssClass="error" Display="Dynamic" />
            </div>
            <div class="form-group">
                <label for="txtEmail">Enter Your Email ID:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="example@example.com"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" 
                    ErrorMessage="Email is required." CssClass="error" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" 
                    ErrorMessage="Invalid email format." CssClass="error" 
                    ValidationExpression="^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$" Display="Dynamic" />
            </div>
            <div class="form-group">
                <label for="txtMessage">Your Message:</label>
                <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" placeholder="Type your message here..."></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnSend" runat="server" Text="Send Message" CssClass="btn btn-primary btn-block"  />
            </div>
            <div class="footer">
                <p>&copy; Utkarsh Singh</p>
            </div>
        </div>
    </form>
</body>
</html>