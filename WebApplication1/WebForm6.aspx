<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="WebApplication1.WebForm6" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fill the Form Out</title>
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
            <h2>Fill the Form Out</h2>
            <div>
                <label for="txtName">First Name:</label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" 
                    ErrorMessage="First Name is required." CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div>
                <label for="txtLastName">Last Name:</label>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" 
                    ErrorMessage="Last Name is required." CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
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
                <label for="txtHireDate">Hire Date:</label>
                <asp:TextBox ID="txtHireDate" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvHireDate" runat="server" ControlToValidate="txtHireDate" 
                    ErrorMessage="Hire Date is required." CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revHireDate" runat="server" ControlToValidate="txtHireDate" 
                    ErrorMessage="Enter a valid date (MM/DD/YYYY)." CssClass="error" Display="Dynamic" 
                    ValidationExpression="^(0[1-9]|1[0-2])/(0[1-9]|[12][0-9]|3[01])/\d{4}$"></asp:RegularExpressionValidator>
               
            </div>
            <div>
                <label for="ddlMembershipLevel">Membership Level:</label>
                <asp:DropDownList ID="ddlMembershipLevel" runat="server">
                    <asp:ListItem Text="Select..." Value=""></asp:ListItem>
                    <asp:ListItem Text="Gold" Value="Gold"></asp:ListItem>
                    <asp:ListItem Text="Silver" Value="Silver"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvMembershipLevel" runat="server" ControlToValidate="ddlMembershipLevel" 
                    InitialValue="" ErrorMessage="Membership Level is required." CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
            </div>
            <div>
                <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
                <p> &copy; Utkarsh Singh</p>
            </div>
        </div>
    </form>
</body>
</html>
