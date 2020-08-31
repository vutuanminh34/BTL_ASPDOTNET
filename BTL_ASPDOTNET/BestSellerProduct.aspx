<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="BestSellerProduct.aspx.cs" Inherits="BTL_ASPDOTNET.BestSellerProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
    <asp:DataList ID="DataList1" runat="server" Width="600px" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
			<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="title_page" valign="middle">
    
</td>
</tr>
</table>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="20" colspan="2" align="center" valign="top" class="product_detail">&nbsp;</td>
         				  
                  
  </tr>
      <tr>
        <td align="center" width="220" valign="top" class="border_table" style="padding-right: 5px; padding-left: 5px; padding-top: 5px;"><table width="220" border="0" >
          <tr>
            <td align="center" valign="middle" class="makers_detail">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Product_image") %>' />
				 </td>
          </tr>
        </table>
			 		
		
        <table width="100%" border="0">
          
          <tr>
            <td align="center" class="gia" height="17"></td>
          </tr>
          
           <tr>
                    <td height="17" align="center" valign="bottom" class="gia">
                        Giá: <asp:Literal ID="Literal2" runat="server" Text='<%# string.Format("{0:0000,0 đ}",Eval("Product_price")) %>' /><br />
                        <asp:TextBox ID="txtSL" runat="server" Height="16px" Width="40px">1</asp:TextBox>
                        &nbsp;
                        <input type="hidden" name="id" value="29919" />
                        <input type="hidden" name="query" value="lg=vn&id_pproductv=29919&start=0" />
                        <asp:Button ID="btnDatHang" runat="server" BackColor="#666666" CommandArgument='<%# Eval("OrderDetail_product_id") %>' CommandName="AddToCart" Height="21px" style="color: #FFCC00" Text="Đặt hàng" Width="72px" />
                    </td>
                  </tr>
          
            <tr>
                <td align="center" class="text_def" height="17">
                    <asp:Literal ID="Literal9" runat="server" Text='<%# Eval("TotalQuantity") %>'></asp:Literal>
                    người đã mua</td>
            </tr>
        </table>
        
        </td>
        
        <td width="80%" valign="top" style="padding-left: 8px;">
			
         

		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
		<td height="18" valign="middle" class="title_3" style="padding-bottom: 5px;">
            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("Product_name") %>' />
		</td>
		</tr>
        <tr>
		<td height="18" valign="middle" class="title_2" style="padding-bottom: 5px; color:#FF0000">
           MSP: <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("Product_code") %>' />
		</td>
        
		</tr>
		</table>
        
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
						    <tr>
              <td valign="middle" class="border_b block_4_title"><img src="/images/icon/heart2.gif" align="absmiddle" /><strong>Chất liệu:</strong></td>
              <td height="18" valign="middle" class="border_b">
                  <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("Product_material") %>' />
              </td>
            </tr>
				   				    <tr>
              <td valign="middle" class="border_b block_4_title"><img src="/images/icon/heart2.gif" align="absmiddle" /><strong>Sản xuất: </strong></td>
              <td height="18" valign="middle" class="border_b">
                  <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("Product_madein") %>' />
              </td>
            </tr>
								        
		        
												
            <tr>
              <td width="35%" valign="middle" class="block_4_title border_b"><img src="/images/icon/heart2.gif" align="absmiddle" /><strong>Tình trạng:</strong></td>
              <td height="18" valign="middle" class="border_b gia">
                  <asp:Literal ID="Literal6" runat="server" Text='<%# Eval("Product_status") %>' />
              </td>
            </tr>
			             
            <tr>
              <td valign="middle" class="block_4_title border_b"><img src="/images/icon/heart2.gif" align="absmiddle"><strong>Số lượt xem:</strong></td>
              <td height="18" valign="middle" class="border_b"><span class="gia"><asp:Literal ID="Literal7" runat="server" Text='<%# Eval("Product_viewed") %>' /></span></td>
            </tr>
            
           
			     
          </table>
		        </td>
        
        
        
      </tr>
      
</table>
  
</ItemTemplate>
    </asp:DataList><br />


<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
	<td ><img height=8 alt="" src="/images/spacer.gif"></td>
  </tr>
</table>
</asp:Content>
