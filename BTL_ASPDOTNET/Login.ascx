<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login.ascx.cs" Inherits="BTL_ASPDOTNET.Login" %>
<table width="200px">
    <tr>
        <td align="center" style="background-color:hotpink; color:white;font-weight:bold">Đăng nhập</td>
    </tr>
    <tr>
        <td>
            Username: <br />
            <asp:TextBox runat="server" ID="txtUserName" Width="92%"></asp:TextBox><br />
            Password: <br />
            <asp:TextBox runat="server" ID="txtPassword" Width="92%" TextMode="Password"></asp:TextBox><br />
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:Button runat="server" ID="cmdLogin" Text="Đăng nhập" OnClick="cmdLogin_Click" />
        </td>
    </tr>
</table>