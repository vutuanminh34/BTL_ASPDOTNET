<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="BTL_ASPDOTNET.TrangChu1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
    <table>
        <tr>
            <td valign="top" style="padding-right: 8px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td class="border_banner"><LINK rel=stylesheet type=text/css href="banner_java_move_hinh_text/files/slider.css" media=screen>
<DIV class=anythingSlider>
<DIV class=wrapper>
<UL>
<SCRIPT type=text/javascript src="banner_java_move_hinh_text/files/jquerymin.js"></SCRIPT>
<SCRIPT type=text/javascript src="banner_java_move_hinh_text/files/easy.js"></SCRIPT>
<SCRIPT type=text/javascript charset=utf-8 src="banner_java_move_hinh_text/files/slider.js"></SCRIPT>
<SCRIPT type=text/javascript>
    function formatText(index, panel) {
        return index + "";
    }

    $(function () {

        $('.anythingSlider').anythingSlider({
            easing: "easeInOutExpo",        // Anything other than "linear" or "swing" requires the easing plugin
            autoPlay: true,                 // This turns off the entire FUNCTIONALY, not just if it starts running or not.
            delay: 4000,                    // How long between slide transitions in AutoPlay mode
            startStopped: false,            // If autoPlay is on, this can force it to start stopped
            animationTime: 900,             // How long the slide transition takes
            hashTags: true,                 // Should links change the hashtag in the URL?
            buildNavigation: true,          // If true, builds and list of anchor links to link to each slide
            pauseOnHover: true,             // If true, and autoPlay is enabled, the show will pause on hover
            startText: "Start",             // Start text
            stopText: "Stop",               // Stop text
            navigationFormatter: formatText       // Details at the top of the file on this use (advanced use)
        });

        $("#slide-jump").click(function () {
            $('.anythingSlider').anythingSlider(6);
        });

    });
    </SCRIPT>
  <LI>
  <DIV id=textSlide>
  <DIV 
  style="BACKGROUND-IMAGE: url(images/photo/news/433_vn.gif); WIDTH: 614px; HEIGHT: 350px; BACKGROUND-REPEAT: no-repeat; ">
  <DIV style="WIDTH: 614px; HEIGHT: 190px; CLEAR: both"></DIV>
  </DIV></DIV></LI>
	 </UL></DIV></DIV>
</td>
          </tr>
        </table>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
		<td ><img height=8 alt="" src="images/spacer.gif"></td>
		</tr>
		</table>
		
		
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td class="border_page">
 <script language="javascript">
     function add_cart(cat, id, lg, start, i) {
         document.shopping[i].action = "index96e4.html?Bcat=" + cat + "&id=" + id + "&lg=" + lg + "&start=" + start + "";
         document.shopping[i].submit();

     }
</script>
 <table width="100%" border="0" cellpadding="0" cellspacing="0">
			            <tr>
              <td height="31" align="left" valign="top" class="title_page">Sản Phẩm Sẵn Hàng</td>
            </tr>
            <tr>
              <td valign="top" style="padding-top: 5px; padding-bottom: 5px;">
		  
                
              <asp:DataList ID="DataList1" runat="server" DataKeyField="Product_id" Height="174px" RepeatColumns="4" RepeatDirection="Horizontal" Width="596px" OnItemCommand="DataList1_ItemCommand">
                  <ItemTemplate>
                      <table style="width: 100%">
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
                              <td style="text-align: center">
                                  <asp:Label ID="Label1" runat="server" style="color: #FF0000" Text="Giá: "></asp:Label>
                                  <asp:Label ID="Label2" runat="server" style="color: #FF0000" Text='<%# string.Format("{0:0000,0 đ}",Eval("Product_price")) %>'></asp:Label>
                              </td>
                          </tr>
                          <tr>
                              <td style="text-align: center">
                                  <asp:Label ID="Label3" runat="server" style="color: #FF0000" Text="MSP: "></asp:Label>
                                  <asp:Label ID="Label4" runat="server" style="color: #FF0000" Text='<%# Eval("Product_code") %>'></asp:Label>
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
              <br />
              
                
     
        
                  
                
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
	<td ><img height=8 alt="" src="images/spacer.gif"></td>
  </tr>
</table></td>
          </tr>
        </table>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
		<td ><img height=8 alt="" src="images/spacer.gif"></td>
		</tr>
		</table>
		</td>
        </tr>
    </table>
</asp:Content>
