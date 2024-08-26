<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Validation Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            background: white;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }
        input[type="text"], input[type="number"], input[type="date"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .error {
            color: red;
            font-size: 0.9em;
            margin-top: -10px;
            margin-bottom: 10px;
        }
        .button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1em;
        }
        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="container">
        <h1>Validation Form</h1>
        
        <label for="TextBoxWebsite">Website URL:</label>
        <asp:TextBox ID="TextBoxWebsite" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorWebsite" 
            ControlToValidate="TextBoxWebsite" 
            ValidationExpression="^(http|https):\/\/[^\s/$.?#].[^\s]*$" 
            runat="server" 
            ErrorMessage="Invalid URL format" 
            CssClass="error"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorWebsite" 
            ControlToValidate="TextBoxWebsite" 
            runat="server" 
            ErrorMessage="Website URL is required" 
            CssClass="error"></asp:RequiredFieldValidator>

        <label for="TextBoxPincode">Pincode:</label>
        <asp:TextBox ID="TextBoxPincode" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorPincode" 
            ControlToValidate="TextBoxPincode" 
            ValidationExpression="^\d{6}$" 
            runat="server" 
            ErrorMessage="Pincode must be 6 digits" 
            CssClass="error"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPincode" 
            ControlToValidate="TextBoxPincode" 
            runat="server" 
            ErrorMessage="Pincode is required" 
            CssClass="error"></asp:RequiredFieldValidator>

        <label for="TextBoxPrice">Price:</label>
        <asp:TextBox ID="TextBoxPrice" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorPrice" 
            ControlToValidate="TextBoxPrice" 
            ValidationExpression="^\d+(\.\d{1,2})?$" 
            runat="server" 
            ErrorMessage="Invalid price format" 
            CssClass="error"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPrice" 
            ControlToValidate="TextBoxPrice" 
            runat="server" 
            ErrorMessage="Price is required" 
            CssClass="error"></asp:RequiredFieldValidator>

        <label for="TextBoxDate">Date:</label>
        <asp:TextBox ID="TextBoxDate" runat="server" TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorDate" 
            ControlToValidate="TextBoxDate" 
            runat="server" 
            ErrorMessage="Date is required" 
            CssClass="error"></asp:RequiredFieldValidator>

        <asp:Button ID="ButtonSubmit" runat="server" OnClick="ButtonSubmit_Click" Text="Submit" CssClass="button" />
         <p> &copy; Utkarsh Singh</p>
    </form>
</body>
</html>