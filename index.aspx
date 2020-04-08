<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Online_Bus_Reservation_System.index" %>

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
    </style>
</head>
<body style="width: 1005px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnAdminLogin" runat="server" Text="Admin LogIn " OnClick="btnAdminLogin_Click" />
                    </td>
                    <td>
                 
                        <asp:LinkButton ID="btnSignup" runat="server" OnClick="btnSignup_Click">SignUp</asp:LinkButton>
                        /<asp:LinkButton ID="btnSignIn" runat="server" OnClick="btnSignIn_Click">SignIn</asp:LinkButton>
                 
                    </td>
                </tr>
                </table>
        </div>

        <div>
            <asp:Label ID="Label1" runat="server" Text="Bus Reservation System" CssClass="auto-style3"></asp:Label>
            
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <asp:LinkButton ID="btnHome" runat="server" ForeColor="Black">Home</asp:LinkButton>
                    </td>
                    <td class="auto-style5">
                        <asp:LinkButton ID="btnAbout" runat="server" ForeColor="Black">About</asp:LinkButton>
                    </td>
                    <td class="auto-style5">
                        <asp:LinkButton ID="btnTourPackages" runat="server" ForeColor="Black">Tour Packages</asp:LinkButton>
                    </td>
                    <td class="auto-style5">
                        <asp:LinkButton ID="btnPolicy" runat="server" ForeColor="Black">Policy</asp:LinkButton>
                    </td>
                    <td class="auto-style5">
                        <asp:LinkButton ID="btnTermsandCondition" runat="server" ForeColor="Black">Terms and Conditions</asp:LinkButton>
                    </td>
                    <td class="auto-style5">
                        <asp:LinkButton ID="btnContactUs" runat="server" ForeColor="Black">Contact Us</asp:LinkButton>
                    </td>
                    <td class="auto-style5">
                        <asp:LinkButton ID="btnEnquiry" runat="server" ForeColor="Black">Enquiry</asp:LinkButton>
                    </td>
                </tr>
            </table>

            <asp:Image ID="Image1" runat="server" Height="398px" ImageUrl="~/image/c1.jpg" Width="1001px" />

        </div>
        <div>

        </div>

    </form>
</body>
</html>
