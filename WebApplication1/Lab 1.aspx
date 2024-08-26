<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lab 1.aspx.cs" Inherits="WebApplication1.Lab_1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Courseware Feedback Form</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        #form1 {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 500px;
            margin: auto;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        label {
            font-weight: bold;
            margin-top: 10px;
            display: block; /* Ensures labels stack properly */
        }
        .radio-group {
            margin: 10px 0;
        }
        textarea {
            width: calc(100% - 20px); /* Adjust width for padding */
            border: 1px solid #ccc;
            border-radius: 4px;
            padding: 10px;
            resize: none;
            margin-bottom: 20px; /* Add spacing below the textarea */
        }
        .button-container {
            text-align: center;
            margin-top: 20px;
        }
        .submit-button {
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .submit-button:hover {
            background-color: #218838;
        }
        .feedback-message {
            color: #28a745;
            font-weight: bold;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Courseware Feedback Form</h1>

        <asp:Label ID="Label1" runat="server" Text="Student Name: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="100%"></asp:TextBox>
        
        <asp:Label ID="Label2" runat="server" Text="Sex: "></asp:Label>
        <div class="radio-group">
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="Sex" />
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="Sex" />
        </div>

        <asp:Label ID="Label3" runat="server" Text="Select Course: "></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Width="100%">
            <asp:ListItem>DotNet</asp:ListItem>
            <asp:ListItem>C#</asp:ListItem>
            <asp:ListItem>Javascript</asp:ListItem>
            <asp:ListItem>Azure</asp:ListItem>
        </asp:DropDownList>

        <label>Technical Coverage:</label>
        <div class="radio-group">
            <asp:RadioButton ID="RadioButton3" runat="server" OnCheckedChanged="RadioButton3_CheckedChanged" Text="Excellent" GroupName="TechnicalCoverage" />
            <asp:RadioButton ID="RadioButton4" runat="server" Text="Good" GroupName="TechnicalCoverage" />
            <asp:RadioButton ID="RadioButton5" runat="server" OnCheckedChanged="RadioButton5_CheckedChanged" Text="Average" GroupName="TechnicalCoverage" />
            <asp:RadioButton ID="RadioButton6" runat="server" Text="Poor" GroupName="TechnicalCoverage" />
        </div>

        <asp:Label ID="Label5" runat="server" Text="Suggestions: "></asp:Label>
        <textarea id="TextArea1" name="S1" rows="4" placeholder="Your suggestions here..."></textarea>

        <div class="button-container">
            <asp:Button ID="Button2" runat="server" Text="Submit Form" CssClass="submit-button" OnClick="Button2_Click" />
        </div>

        <asp:Label ID="Label4" runat="server" CssClass="feedback-message"></asp:Label>
    </form>
</body>
</html>