<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CancelTicket.aspx.cs" Inherits="Online_Bus_Reservation_System.CancelTicket" %>

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
        .auto-style5 {
            width: 914px;
        }
        .auto-style6 {
            width: 244px;
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
            
            <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
            
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList1" runat="server" >
                            <asp:ListItem Selected="True" Value="-1">Dashboard</asp:ListItem>
                            <asp:ListItem Value="1">Update Profile</asp:ListItem>
                            <asp:ListItem Value="2">Change Password</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style5">
                        <asp:LinkButton ID="btnAbout" runat="server" ForeColor="Black" OnClick="btnAbout_Click">Check Avaliable Bus</asp:LinkButton>
                    </td>
                    <td class="auto-style5">
                        <asp:LinkButton ID="btnTourPackages" runat="server" ForeColor="Black">Book Tickets</asp:LinkButton>
                    </td>
                   
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem Selected="True">Ticket Details</asp:ListItem>
                            <asp:ListItem Value="1">View Tickets</asp:ListItem>
                            <asp:ListItem Value="2">Cancel Tickets</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style5">
                        <asp:LinkButton ID="btnContactUs" runat="server" ForeColor="Black">Contact Us</asp:LinkButton>
                    </td>
                    <td class="auto-style5">
                        <asp:LinkButton ID="btnEnquiry" runat="server" ForeColor="Black">Enquiry</asp:LinkButton>
                    </td>
                </tr>
            </table>

            

        </div>
        <div>

            <table class="auto-style4">
                <tr>
                    <td colspan="2">Cancel Ticket</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Ticket Number:-</td>
                    <td>
                        <asp:TextBox ID="txtBusNumber" runat="server" Width="270px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Number of Seats to Book :-</td>
                    <td>
                        <asp:TextBox ID="txtSeatNumber" runat="server" Height="16px" Width="270px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnBook" runat="server" OnClick="btnBook_Click" Text="Book Ticket" Width="288px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>

    </form>
</body>
</html>
