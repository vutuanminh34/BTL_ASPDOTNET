<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageNews.aspx.cs" Inherits="BTL_ASPDOTNET.ManageNews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table>
        <tr>
            <td class="title_page" valign="middle">Quản Lý Tin Tức</td>
        </tr>
    </table><br />
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Quản Lý Sản Phẩm</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
     <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click" /><br />
        </div>
    </form>
</body>
</html>
