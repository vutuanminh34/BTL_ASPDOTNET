<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="BTL_ASPDOTNET.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
   
    <table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="title_page" valign="middle">Tin tức</td>
</tr>
</table>
    <asp:DataList ID="DataList1" runat="server" Width="563px">
        <ItemTemplate>
            <table style="width: 100%; height: 99px;">
                <tr>
                    <td rowspan="2" style="width: 114px">
                        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl='<%# Eval("News_image") %>' NavigateUrl='<%# "DetailNews.aspx?id=" + Eval("News_id").ToString() %>'>HyperLink</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "DetailNews.aspx?id=" + Eval("News_id").ToString() %>' Text='<%# Eval("News_title") %>'></asp:HyperLink>
                        <br />
                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("News_date") %>'></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td ><asp:Literal ID="Literal2" runat="server" Text='<%# Eval("News_summary") %>'/></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    

</asp:Content>
