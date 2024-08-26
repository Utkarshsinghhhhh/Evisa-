<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Email and Website Validation</title>
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
        input[type="text"] {
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
        <h1>Email and Website Validator</h1>
        
        <label for="TextBox1">Email ID:</label>
        <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
            ControlToValidate="TextBox1" 
            ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" 
            runat="server" 
            ErrorMessage="Invalid Email" 
            CssClass="error"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            ControlToValidate="TextBox1" 
            runat="server" 
            ErrorMessage="Email is required" 
            CssClass="error"></asp:RequiredFieldValidator>

        <label for="TextBox2">Website URL:</label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
            ControlToValidate="TextBox2" 
            ValidationExpression="^(http|https):\/\/[^\s/$.?#].[^\s]*$" 
            runat="server" 
            ErrorMessage="Invalid URL" 
            CssClass="error"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            ControlToValidate="TextBox2" 
            runat="server" 
            ErrorMessage="Please enter the URL" 
            CssClass="error"></asp:RequiredFieldValidator>

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="button" />
        <p> &copy; Utkarsh Singh</p>
    </form>
</body>
</html>
