<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="TypeProduct.aspx.cs" Inherits="BTL_ASPDOTNET.TypeProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
    <table border="0" cellpadding="0" cellspacing="5" align="center" width="100%">
                <tr>
            
			    <td width="20%" valign="top" align="center" class="tab_2_2_2_2 border_table">
                
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Product_id" RepeatColumns="4" Width="602px" OnItemCommand="DataList1_ItemCommand">
    <ItemTemplate>
        <table width="100%" border="0" cellpadding="0" cellspacing="0" >
                  <tr>
                    <td style="text-align: center">
                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("Product_id") %>' CommandName="viewdetails" Height="160px" ImageUrl='<%# Eval("Product_image") %>' Width="135px" ToolTip='<%# Eval("Product_name") %>' />
                    </td>
                  </tr>
                  <tr>
                    <td style="text-align: center">
                         <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Product_id") %>' CommandName="viewdetails" style="color: #721261" Text='<%# Eval("Product_name") %>' ToolTip='<%# Eval("Product_name") %>'></asp:LinkButton>
                    </td>
                  </tr>
                  <tr>
                    <td height="17" align="center" valign="bottom" class="gia">Giá: 
                        <asp:Literal ID="Literal1" runat="server" Text='<%# string.Format("{0:0000,0 đ}",Eval("Product_price")) %>' />
                    </td>
                  </tr>
                  <tr>
                    <td align="center" valign="middle" style="padding-bottom: 5px; color:#FF0000">
                        <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("Product_code") %>' />
                    </td>
                  </tr>
                 
                  <tr>
                    <td style="text-align: center">
                        <asp:TextBox ID="txtSL" runat="server" Height="16px" Width="40px">1</asp:TextBox>
                        &nbsp;<asp:Button ID="btnDatHang" runat="server" BackColor="#666666" CommandName="AddToCart" Height="21px" style="color: #FFCC00" Text="Đặt hàng" Width="61px" CommandArgument='<%# Eval("Product_id") %>' />
                    </td>
                  </tr>
	    </table>
    </ItemTemplate>
</asp:DataList> 
				  </table>
</asp:Content>
