<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image: url('img/background-pattern.png')">
    <form id="login_form" runat="server">
        <img src="img/mojo-logo-triangle.svg" />
        <div align="center" style="margin-top: 10%;">
            <table style="padding-top: 10px; padding-bottom: 50px; padding-left:10px; padding-right:10px; background-color: #3e5ab7;">
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <h1>Inloggen</h1>
                    </td>
                </tr>
                <tr>
                    <td>Gebruikersnaam:
                    </td>
                    <td>
                        <asp:TextBox ID="Txt_Usernamen" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Wachtwoord:
                    </td>
                    <td>
                        <asp:TextBox ID="Txt_Password" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <asp:Button ID="Btn_login" runat="server" Text="Login" Width="100%" OnClick="Btn_login_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <asp:Label ID="Lbl_ErrorLogin" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
