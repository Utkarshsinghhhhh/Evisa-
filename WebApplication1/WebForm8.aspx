﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="WebApplication1.WebForm8" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Creation Form</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f5f5f5;
        }
        form {
            background: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .error {
            color: red;
        }
        div {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Create User Form</h2>
            <div>
                <label for="txtName">Name:</label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" 
                    ErrorMessage="Name is required." CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div>
                <label for="txtAge">Age:</label>
                <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge" 
                    ErrorMessage="Age is required." CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="txtAge" 
                    ErrorMessage="Age must be between 1 and 120." CssClass="error" Display="Dynamic" 
                    MinimumValue="1" MaximumValue="120" Type="Integer"></asp:RangeValidator>
            </div>
            <div>
                <label for="txtEmail">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" 
                    ErrorMessage="Email is required." CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" 
                    ErrorMessage="Enter a valid email address." CssClass="error" Display="Dynamic" 
                    ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"></asp:RegularExpressionValidator>
            </div>
            <div>
                <label for="ddlGroup">Group:</label>
                <asp:DropDownList ID="ddlGroup" runat="server">
                    <asp:ListItem Text="Select a group" Value="" />
                    <asp:ListItem Text="Group A" Value="A" />
                    <asp:ListItem Text="Group B" Value="B" />
                    <asp:ListItem Text="Group C" Value="C" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvGroup" runat="server" ControlToValidate="ddlGroup" 
                    InitialValue="" ErrorMessage="Please select a group." CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Button ID="btnCreate" runat="server" Text="Create" OnClick="btnCreate_Click"  />
            </div>
            <div>
                <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
                   <p> &copy; Utkarsh Singh</p>
            </div>
        </div>
    </form>
</body>
</html>