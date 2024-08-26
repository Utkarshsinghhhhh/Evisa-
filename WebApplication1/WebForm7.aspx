<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="WebApplication1.WebForm7" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Validation Page</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
            margin: 0; /* Remove default margin */
            background-color: #f5f5f5; /* Optional background color */
        }
        form {
            background: white; /* White background for form */
            padding: 20px;
            border-radius: 5px; /* Rounded corners */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Shadow effect */
        }
        .error {
            color: red;
        }
        div {
            margin-bottom: 15px; /* Space between form elements */
        }
        label {
            display: block; /* Make label block-level for better alignment */
            margin-bottom: 5px; /* Space between label and input */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>User Validation Form</h2>
            <div>
                <label for="txtUsername">Username:</label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required." CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div>
                <label for="txtNewPassword">New Password:</label>
                <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNewPassword" runat="server" ControlToValidate="txtNewPassword" ErrorMessage="New Password is required." CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revNewPassword" runat="server" ControlToValidate="txtNewPassword" ErrorMessage="Password must be at least 8 characters long and contain at least one number and one uppercase letter." CssClass="error" Display="Dynamic" ValidationExpression="^(?=.*[0-9])(?=.*[A-Z]).{8,}$"></asp:RegularExpressionValidator>
            </div>
            <div>
                <label for="txtRetypePassword">Retype Password:</label>
                <asp:TextBox ID="txtRetypePassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvRetypePassword" runat="server" ControlToValidate="txtRetypePassword" ErrorMessage="Retype Password is required." CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvRetypePassword" runat="server" ControlToCompare="txtNewPassword" ControlToValidate="txtRetypePassword" ErrorMessage="Passwords do not match." CssClass="error" Display="Dynamic"></asp:CompareValidator>
            </div>
            <div>
                <label for="txtMobileNumber">Mobile Number:</label>
                <asp:TextBox ID="txtMobileNumber" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMobileNumber" runat="server" ControlToValidate="txtMobileNumber" ErrorMessage="Mobile Number is required." CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revMobileNumber" runat="server" ControlToValidate="txtMobileNumber" ErrorMessage="Enter a valid mobile number (10 digits)." CssClass="error" Display="Dynamic" ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
            </div>
            <div>
                <label for="txtEmail">Email ID:</label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email ID is required." CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter a valid email address." CssClass="error" Display="Dynamic" ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"></asp:RegularExpressionValidator>
            </div>
            <div>
                <label for="txtWebsite">Website:</label>
                <asp:TextBox ID="txtWebsite" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvWebsite" runat="server" ControlToValidate="txtWebsite" ErrorMessage="Website is required." CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revWebsite" runat="server" ControlToValidate="txtWebsite" ErrorMessage="Enter a valid website URL." CssClass="error" Display="Dynamic" ValidationExpression="^(http|https)://.+"></asp:RegularExpressionValidator>
            </div>
            <div>
                <label for="txtAge">Age:</label>
                <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Age is required." CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Age must be between 0 and 120." CssClass="error" Display="Dynamic" MinimumValue="0" MaximumValue="120" Type="Integer"></asp:RangeValidator>
            </div>
            <div>
                <asp:Button ID="btnValidate" runat="server" Text="Validate" />
            </div>
            <div>
                <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
                 <p> &copy; Utkarsh Singh</p>
            </div>
        </div>
    </form>
</body>
</html>
