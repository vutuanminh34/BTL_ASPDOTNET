<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="ShowOrder.aspx.cs" Inherits="BTL_ASPDOTNET.ShowOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
    <table>
        <tr>
            <td class="title_page" valign="middle">Thêm vào giỏ hàng</td>
        </tr>
    </table>
    <asp:Button ID="btnMuathem" runat="server" Text="Mua thêm sản phẩm khác" OnClick="btnMuathem_Click" />
    <br />
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" ShowFooter="True" Height="134px" Width="585px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="STT">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Product_id" HeaderText="Mã SP" />
            <asp:BoundField DataField="Product_code" HeaderText="Mã số">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Product_name" HeaderText="Tên">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Product_price" HeaderText="Giá">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="quantity" HeaderText="Số lượng">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="totalprice" HeaderText="Tổng cộng">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:CommandField SelectText="Thay đổi" ShowSelectButton="True" />
            <asp:CommandField ShowDeleteButton="True" DeleteText="Xóa" />
        </Columns>
    </asp:GridView><div style="text-align:right"><asp:Button ID="btnMuahang" runat="server" Text="Mua hàng" OnClick="btnMuahang_Click" /></div>
    
    <br />

</asp:Content>
