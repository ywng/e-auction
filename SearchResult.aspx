<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SearchResult.aspx.vb" Inherits="SearchResult" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Sorted by:
        <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="236px">
            <asp:ListItem>Time: Ending time (ascending)</asp:ListItem>
            <asp:ListItem>Time: Ending time (decending)</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
            DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None" 
            AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
            ShowHeaderWhenEmpty="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                
                <asp:ImageField DataImageUrlField="picture" DataImageUrlFormatString="~/Pic/{0}.jpg" 
                    HeaderText="photo" NullImageUrl="Pic/NoPic.jpg" HeaderStyle-Wrap="False" ControlStyle-Width="50" ItemStyle-Width="50"  HeaderStyle-HorizontalAlign="Left" >
                </asp:ImageField>
                
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" HeaderStyle-HorizontalAlign="Left" />
                
                <asp:BoundField DataField="description" HeaderText="description" 
                    SortExpression="description"  HeaderStyle-HorizontalAlign="Left" />
                <asp:BoundField DataField="currentQuantity" HeaderText="currentQuantity" 
                    SortExpression="currentQuantity"  HeaderStyle-HorizontalAlign="Left" />
                <asp:BoundField DataField="endTime" HeaderText="endTime" 
                    SortExpression="endTime" HeaderStyle-HorizontalAlign="Left"  />
                <asp:BoundField DataField="category" HeaderText="category" 
                    SortExpression="category" HeaderStyle-HorizontalAlign="Left"  />
                <asp:BoundField DataField="numOfBidsMade" HeaderText="numOfBidsMade" 
                    SortExpression="numOfBidsMade" HeaderStyle-HorizontalAlign="Left"  />
                <asp:BoundField DataField="currentBidPrice" HeaderText="currentBidPrice" 
                    SortExpression="currentBidPrice" HeaderStyle-HorizontalAlign="Left"  />
                <asp:BoundField DataField="sellerId" HeaderText="sellerId" 
                    SortExpression="sellerId" HeaderStyle-HorizontalAlign="Left"  />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <!--how to modify this so that ...-->
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/EauctionDb.accdb" 
            SelectCommand="SELECT [title], [picture], [description], [currentQuantity], [endTime], [category], [numOfBidsMade], [currentBidPrice], [sellerId] FROM [Item] WHERE ([title] = ?) ORDER BY [endTime]">
            <SelectParameters>
                <asp:FormParameter FormField="KeywordText" Name="title" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <asp:HiddenField ID="KeywordText" runat="server" Value="null" 
            ViewStateMode="Enabled" />
        <asp:HiddenField ID="KeywordText_isexist" runat="server" Value="false" 
            ViewStateMode="Enabled" />
        <asp:HiddenField ID="keyword_radiolist" runat="server" Value="null" />
        <asp:HiddenField ID="CategoryDropDownList" runat="server" Value="null" />
        <br />
        <asp:HiddenField ID="sellerid" runat="server" Value="null" />
        <asp:HiddenField ID="seller_RadioButton" runat="server" Value="null" />
        <br />
        <asp:HiddenField ID="PostingType_radiobuttonlist" runat="server" Value="null" />
        <br />
    </div>
    </form>
</body>
</html>
