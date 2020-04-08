<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Online_Bus_Reservation_System.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style1 {
            font-weight: bold;
            font-size: xx-large;
        }
        .auto-style4 {
            width: 410px;
        }
    </style>
</head>
<body style="height: 321px">
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="317px">
                <table class="auto-style2">
                    <tr >
                        <td class="auto-style4" colspan="2">
                            <asp:Label ID="Label1" runat="server" BorderColor="Black" CssClass="auto-style1" Text="Registration Form"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server" Width="308px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" Width="309px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPassword" runat="server" Width="308px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr >
                        <td class="auto-style4" colspan="2" style="align-items:center">
                            <asp:Button ID="btnRegistration" runat="server" Text="Submit" OnClick="btnRegistration_Click" />
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectDatabase %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
                        </td>
                        
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
