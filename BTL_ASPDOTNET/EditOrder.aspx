<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="EditOrder.aspx.cs" Inherits="BTL_ASPDOTNET.OrderInfor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
    <table>
        <tr>
            <td class="title_page" valign="middle">Cập nhật</td>
        </tr>
    </table><br />

    <table style="width: 62%; height: 96px;" border="1" cellspacing="0">
        <tr>
            <td style="width: 245px">STT</td>
            <td style="width: 282px">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 245px">Mã SP</td>
            <td style="width: 282px">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 245px">Mã số</td>
            <td style="width: 282px">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 245px">Tên</td>
            <td style="width: 282px">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 245px">Giá</td>
            <td style="width: 282px">
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 245px">Số lượng</td>
            <td style="width: 282px">
                <asp:TextBox ID="txtsl" runat="server" AutoPostBack="True" Height="16px" OnTextChanged="txtsl_TextChanged" Width="49px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 245px">Tổng cộng</td>
            <td style="width: 282px">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 245px">&nbsp;</td>
            <td style="width: 282px">
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" style="height: 26px" Text="Save" />
            </td>
        </tr>
    </table>

</asp:Content>
