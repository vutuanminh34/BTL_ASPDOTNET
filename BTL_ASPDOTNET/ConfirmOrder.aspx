<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="ConfirmOrder.aspx.cs" Inherits="BTL_ASPDOTNET.DeliveryInfor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
    <table>
        <tr>
            <td class="title_page" valign="middle">Thông tin đơn hàng</td>
        </tr>
    </table><br />

    <table style="width: 63%; height: 112px">
        <tr>
            <td style="width: 193px">Mã đơn hàng</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 193px">Ngày đặt</td>
            <td>
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 193px">Tên khách hàng</td>
            <td>
                <asp:TextBox ID="txtTenKH" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 193px">Địa chỉ</td>
            <td>
                <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 193px">Điện thoại</td>
            <td>
                <asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 193px">Chú thích thêm</td>
            <td>
                <asp:TextBox ID="txtChuThich" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table><br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="134px" ShowFooter="True" Width="585px">
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
        </Columns>
    </asp:GridView><div style="text-align:center"><asp:Button ID="btnXacNhan" runat="server" Text="Xác nhận" OnClick="btnXacNhan_Click" /></div>
    
    


</asp:Content>
