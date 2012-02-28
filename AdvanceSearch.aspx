<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdvanceSearch.aspx.vb" Inherits="AdvanceSearch" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div>
            <h2>
        Advanced Search - items</h2>

        <table border="1px"><tr><td class="style2">
            <asp:RadioButtonList id="keyword_radiolist" runat="server">
               <asp:ListItem selected="true">Title only</asp:ListItem>
               <asp:ListItem>Description only</asp:ListItem>
               <asp:ListItem>Either the title or description</asp:ListItem>
               <asp:ListItem>Both the title or description</asp:ListItem>
            </asp:RadioButtonList>

            </td><td class="style1">
                <asp:TextBox ID="KeywordText" runat="server" Width="202px"></asp:TextBox>
                <!--different algorithm to check, e.g. use space to seperate keywords
                abc cde => search two keywords
                search keyword in description or title or both?
                -->
                <br />
                </td></tr
                        <tr><td class="style2">Category</td><td class="style1">
            <asp:DropDownList ID="CategoryDropDownList" runat="server" Height="20px" 
                Width="211px">
                <asp:ListItem Selected="True">All Categories</asp:ListItem>
                <asp:ListItem>Art and Antiques</asp:ListItem>
                <asp:ListItem>Books</asp:ListItem>
                <asp:ListItem>Clothing, Shoes and Accessories</asp:ListItem>
                <asp:ListItem>Musical Instruments</asp:ListItem>
                <asp:ListItem>Computers and Electronics</asp:ListItem>
                <asp:ListItem>Toys and Hobbies</asp:ListItem>
                <asp:ListItem>DVDs and Movies</asp:ListItem>
                <asp:ListItem>Everything Else</asp:ListItem>
            </asp:DropDownList><!--connect to a datasource? dropdown list for a field?-->
            <br />
            </td></tr>

                    <tr><td class="style2">Seller</td><td class="style1">

                &nbsp;<input id="Radio1" checked="checked" name="seller_RadioButton" type="radio" 
                            value="seller_RadioButton_nopref" />No preference<br />
                        <input id="Radio2" name="seller_RadioButton" type="radio" 
                            value="seller_RadioButton_uid" />Seller&#39;s user id:
            <asp:TextBox ID="sellerid" runat="server" Width="119px"></asp:TextBox>
            <br />
            </td></tr>

                    <tr><td class="style2">Posting type</td><td class="style1">
            <asp:RadioButtonList ID="PostingType_radiobuttonlist" runat="server">
                <asp:ListItem selected="true">All types</asp:ListItem>
                <asp:ListItem>Regular Auction</asp:ListItem>
                <asp:ListItem>Dutch Auction</asp:ListItem>
                <asp:ListItem>Reserve Price Auction</asp:ListItem>
            </asp:RadioButtonList>
            </td></tr>

                    <tr><td class="style2" colspan="2"><em>(Below is ignored)</em></td></tr>

                    <tr><td class="style2">Time Remaing in the auction</td><td class="style1">
                        Listings
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem>Ending within</asp:ListItem>
                            <asp:ListItem>Ending in more than</asp:ListItem>
                            <asp:ListItem>Started within</asp:ListItem>
                        </asp:DropDownList>
&nbsp;<asp:DropDownList ID="DropDownList4" runat="server">
                            <asp:ListItem>1 hour</asp:ListItem>
                            <asp:ListItem>6 hour</asp:ListItem>
                            <asp:ListItem>12 hour</asp:ListItem>
                            <asp:ListItem>1 day</asp:ListItem>
                            <asp:ListItem>1 week</asp:ListItem>
                            <asp:ListItem>1 month</asp:ListItem>
                        </asp:DropDownList>
            </td></tr>

        <tr><td class="style2">
            Price* (except Dutch)</td>
            
            <td class="style1">
            
            <!--<asp:RadioButtonList id="RadioButtonList1" runat="server">
               <asp:ListItem selected="true">Any price</asp:ListItem>
               <asp:ListItem >
</asp:ListItem>
            </asp:RadioButtonList>-->

                <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" 
                    GroupName="RegularPrice_RadioButtonGroup" />Any price<br />
                <asp:RadioButton ID="RadioButton2" runat="server" 
                    GroupName="RegularPrice_RadioButtonGroup" />From $  
            <asp:TextBox ID="TextBox2" runat="server" Width="61px"></asp:TextBox>
&nbsp;to $<asp:TextBox ID="TextBox3" runat="server" Width="69px"></asp:TextBox>

            
            </td></tr>







        <tr><td class="style2">Sort by*</td><td class="style1">
            <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="215px">
            </asp:DropDownList>
            </td></tr>







        <tr><td class="style2">Quantity* (Dutch only)</td><td class="style1">
            &nbsp;</td></tr>
        </table>
    <p>
        &nbsp;
        <!--<input type="submit" value="Use Post" /> -->
        <asp:Button ID="Button1" runat="server" Text="Search" 
            PostBackUrl="~/SearchResult.aspx" />
    </p>
            <p>
                <asp:HiddenField ID="HiddenField1" runat="server" Value="true" />
    </p>
    </div>
    </form>
</body>
</html>
