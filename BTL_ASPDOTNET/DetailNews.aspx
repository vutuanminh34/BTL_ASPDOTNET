<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="DetailNews.aspx.cs" Inherits="BTL_ASPDOTNET.DetailNews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
    <table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="title_page" valign="middle">Tin tức</td>
</tr>
</table><br />
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <table>
        <tr>
            <td><asp:Literal ID="Literal1" runat="server" Text='<%# Eval("News_title") %>' /></td>
        </tr>
                <tr>
            <td><asp:Literal ID="Literal3" runat="server" Text='<%# Eval("News_summary") %>' /></td>
        </tr>
        <tr>
            <td><asp:Literal ID="Literal2" runat="server" Text='<%# Eval("News_detail") %>' /></td>
        </tr>
        <tr>
            <td><asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("News_imagefull") %>' /></td>
        </tr>
    </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    
</asp:Content>
