<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageProduct.aspx.cs" Inherits="BTL_ASPDOTNET.ManageProduct" %>

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
            <td class="title_page" valign="middle">Quản Lý Sản Phẩm</td>
        </tr>
    </table><br />
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Quản Lý Tin Tức</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
     <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click" />
     <br />
     <table style="width: 100%" border="1" cellspacing="0">
         <tr>
             <td style="width: 189px">Mã sản phẩm:</td>
             <td>
                 <asp:TextBox ID="txtMaSP" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td style="width: 189px">Mã nhận diện sản phẩm:</td>
             <td>
                 <asp:TextBox ID="txtCodeSP" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td style="width: 189px">Tên sản phẩm:</td>
             <td>
                 <asp:TextBox ID="txtTenSP" runat="server" Width="494px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td style="width: 189px">Giá:</td>
             <td>
                 <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td style="width: 189px">Số lượng nhập:</td>
             <td>
                 <asp:TextBox ID="txtSL" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td style="width: 189px">Chất liệu:</td>
             <td>
                 <asp:TextBox ID="txtChatLieu" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td style="width: 189px">Xuất xứ:</td>
             <td>
                 <asp:TextBox ID="txtXuatXu" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td style="width: 189px">Ảnh sản phẩm:</td>
             <td>
                 <asp:FileUpload ID="FileUploadAnh" runat="server" />
             </td>
         </tr>
         <tr>
             <td style="width: 189px">Tên loại sản phẩm:</td>
             <td>
                 <asp:DropDownList ID="ddlTenLoaiSP" runat="server" Width="128px">
                 </asp:DropDownList>
             </td>
         </tr>
         <tr>
             <td style="width: 189px">Tình trạng:</td>
             <td>
                 <asp:TextBox ID="txtTinhTrang" runat="server"></asp:TextBox>
             </td>
         </tr>
     </table>
    <div style="text-align:center">
        <asp:Button ID="btnNhaplai" runat="server" Text="Nhập lại" OnClick="btnNhaplai_Click" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSua" runat="server" Text="Sửa" OnClick="btnSua_Click" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnXoa" runat="server" Text="Xóa" OnClick="btnXoa_Click" />
     </div>
     <asp:GridView ID="dtgSanPham" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
         <Columns>
             <asp:BoundField DataField="Product_id" HeaderText="Mã SP" />
             <asp:BoundField DataField="Product_code" HeaderText="Code" />
             <asp:BoundField DataField="Product_name" HeaderText="Tên SP" />
             <asp:BoundField DataField="Product_price" HeaderText="Giá" />
             <asp:BoundField DataField="Product_quantity" HeaderText="Số lượng" />
             <asp:BoundField DataField="Product_material" HeaderText="Chất liệu" />
             <asp:BoundField DataField="Product_madein" HeaderText="Xuất xứ" />
             <asp:ImageField DataImageUrlField="Product_image" HeaderText="Ảnh">
             </asp:ImageField>
             <asp:BoundField DataField="Product_category_id" HeaderText="Loại" />
             <asp:BoundField DataField="Product_status" HeaderText="Tình trạng" />
             <asp:CommandField ShowSelectButton="True" SelectText="Chọn" />
         </Columns>
     </asp:GridView>
     <br />
        </div>
    </form>
</body>
</html>
