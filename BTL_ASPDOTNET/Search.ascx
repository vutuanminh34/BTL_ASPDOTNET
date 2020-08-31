<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Search.ascx.cs" Inherits="BTL_ASPDOTNET.Search" %>
<table width="200px">
    <tr>
        <td align="center" style="background-color:hotpink; color:white; font-weight:bold">
            Tìm kiếm 
        </td>
    </tr>
    <tr>
        <td>
           Sản phẩm đang kiếm tìm: <br />
            <asp:TextBox runat="server" ID="txtten" Width="92%"></asp:TextBox> <br />
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:Button runat="server" ID="cmdSearch" Text="Tìm kiếm" OnClick="cmdSearch_Click" />
        </td>
    </tr>
</table>
