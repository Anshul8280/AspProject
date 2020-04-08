<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Online_Bus_Reservation_System.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
        <asp:Panel ID="Panel1" runat="server" Height="331px">
            <div><table class="auto-style2">
                <tr>
                    <td class="auto-style3">Email</td>
                    <td>
                        <asp:TextBox ID="txtAdminEmail" runat="server" Height="16px" Width="532px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Password</td>
                    <td class="auto-style5">
                        &nbsp;<asp:TextBox ID="pwdAdminPassword" runat="server" Width="526px"></asp:TextBox>
                    </td>
                </tr>
            </table>
                </div>
            <div>

                <table class="auto-style2">
                    <tr>
                        <td>
                            <asp:Button ID="btnAdminLogin" runat="server" Text="Login" Width="355px" OnClick="btnAdminLogin_Click" />
                        </td>
                        <td>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [admin]"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>

            </div>
        </asp:Panel>
        
    </form>
</body>
</html>
