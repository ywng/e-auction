<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Sell.aspx.vb" Inherits="Sell" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
        .style3
        {
            width: 104px;
            height: 21px;
        }
        .style4
        {
            height: 21px;
        }
        .style5
        {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style5" colspan="2">
                Product Information</td>
        </tr>
        <tr>
            <td class="style2">
                Title</td>
            <td>
                <asp:TextBox ID="txtTitle" runat="server" Width="414px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Description</td>
            <td class="style4">
                <asp:TextBox ID="txtDescription" runat="server" Height="107px" Width="414px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Category</td>
            <td class="style4">
                <asp:DropDownList ID="DDLCategory" runat="server" 
                    DataSourceID="AccessDataSource1" DataTextField="Category_type" 
                    DataValueField="Category_type" Height="28px" Width="414px">
                </asp:DropDownList>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/App_Data/EauctionDb.accdb" 
                    SelectCommand="SELECT [Category_type] FROM [Category]">
                </asp:AccessDataSource>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Picture</td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                Auction Information</td>
        </tr>
        <tr>
            <td class="style2">
                Start Date</td>
            <td>
                //Calendar</td>
        </tr>
        <tr>
            <td class="style2">
                Start Time</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Duration</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Quantity</td>
            <td>
                <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Starting Price</td>
            <td>
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Posting Type</td>
            <td>
                //DDL</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                Payment Information</td>
        </tr>
        <tr>
            <td class="style2">
&nbsp;Payment Method</td>
            <td>
                //DDL</td>
        </tr>
        <tr>
            <td class="style2">
                Shipping Payment</td>
            <td>
                //DDL</td>
        </tr>
    </table>
    <br />
    <asp:Button ID="btnSubmit" runat="server" style="text-align: center" 
        Text="Submit" />
    <br />
</asp:Content>

