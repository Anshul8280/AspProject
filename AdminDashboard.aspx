﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Online_Bus_Reservation_System.AdminDashboard" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 997px;
        }
        .auto-style2 {
            width: 889px;
        }
        .auto-style3 {
            font-weight: bold;
            font-size: xx-large;
        }
        .auto-style4 {
            width: 100%;
        }
    </style>
</head>
<body style="width: 1005px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblCustomerId" runat="server"></asp:Label>
                    </td>
                    <td>
                 
                        <asp:LinkButton ID="btnLogout" runat="server" OnClick="btnSignup_Click">Logout</asp:LinkButton>
                 
                    </td>
                </tr>
                </table>
        </div>

        <div>
            <asp:Label ID="Label1" runat="server" Text="Welcome " CssClass="auto-style3"></asp:Label>
            
            Admin<table class="auto-style4">
                <tr>
                    <td>
                        <asp:LinkButton ID="btnUpdate" runat="server" OnClick="LinkButton1_Click">Update Profile</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="btnaddBus" runat="server" OnClick="LinkButton2_Click">Add Bus Details</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="btnAddRoute" runat="server">Add Route Details</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="btnViewCustomer" runat="server">View Customer Details</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="btnDeleteBus" runat="server">Delete Bus Details</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="btnViewTicket" runat="server">View Tickets</asp:LinkButton>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="btnChangePassword" runat="server">Change Password</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="btnViewBus" runat="server">View Bus Details</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="btnViewRoute" runat="server">View Route Details</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="btnDeleteCustomer" runat="server">Delete Customer Details</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="btnDeleteRoute" runat="server">Delete Route</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="btnViewEnquery" runat="server">View Enquery</asp:LinkButton>
                    </td>
                    
                </tr>
            </table>

        </div>
        <div>

        </div>

    </form>
    <p>
        &nbsp;</p>
</body>
</html>
