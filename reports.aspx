<%@ Page Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="reports.aspx.vb" Inherits="reports" %>

<%@ Register Src="DateTextbox.ascx" TagName="DateTextbox" TagPrefix="uc1" %>


<asp:Content ID="HeadContent" runat="server" ContentPlaceHolderID=HeadContent>
<style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            font-size: small;
        }
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 322px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">


<body>
   
    <div>
        <asp:Label ID="lbDebugMsg" runat="server"></asp:Label>
        <asp:SqlDataSource ID="dsCustomerProfile" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            
            SelectCommand="SELECT * FROM [report10a]" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
             <SelectParameters>
               <asp:Parameter DefaultValue="0" Name="hasTimeRange" />
                <asp:ControlParameter ControlID="ucDateFrom" DefaultValue="1/1/1990" 
                    Name="dateFrom" PropertyName="UcDate" />
                <asp:ControlParameter ControlID="ucDateTo" DefaultValue="1/1/1990" 
                    Name="dateTo" PropertyName="UcDate" />
                <asp:ControlParameter ControlID="tbCustomerId" DefaultValue="" 
                    Name="cIdPattern" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="style1">
            <h2>
                Report 10a - Customer Details</h2>
            <p style="text-align: left">
                Customer Id:
                <asp:TextBox ID="tbCustomerId" runat="server"></asp:TextBox>
                &nbsp;<br />
                <span class="style2">(leave blank to show all customers)</span></p>
            <p style="text-align: left">
                <table class="style3" style="vertical-align: top; text-align: left">
                    <tbody align="left" valign="top">
                        <tr>
                            <td>
                                From:<br />
                            </td>
                            <td class="style4" style="border-collapse: collapse">
                                <uc1:DateTextbox ID="ucDateFrom" runat="server" />
                            </td>
                            <td>
                                To:
                            </td>
                            <td>
                                <uc1:DateTextbox ID="ucDateTo" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style2" colspan="4">
                                [dd/mm/yyyy hh:mm:ss] (assume 00:00:00 if time is not specified)
                            </td>
                        </tr>
                </table>
            </p>
            <p style="text-align: left">
                <asp:Button ID="btGo" runat="server" Text="Go" />
            </p>
        </div>
        <asp:GridView ID="gvCusomerProfile" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" DataKeyNames="customerId" DataSourceID="dsCustomerProfile"
            ShowHeaderWhenEmpty="True" Style="margin-right: 1px">
            <Columns>
                <asp:BoundField DataField="customerId" HeaderText="customerId" ReadOnly="True" SortExpression="customerId" />
                <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
                <asp:BoundField DataField="homePhone" HeaderText="homePhone" SortExpression="homePhone" />
                <asp:BoundField DataField="officePhone" HeaderText="officePhone" SortExpression="officePhone" />
                <asp:BoundField DataField="mobilePhone" HeaderText="mobilePhone" SortExpression="mobilePhone" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="buildingFlat" HeaderText="buildingFlat" SortExpression="buildingFlat" />
                <asp:BoundField DataField="buildingFloor" HeaderText="buildingFloor" SortExpression="buildingFloor" />
                <asp:BoundField DataField="buildingBlock" HeaderText="buildingBlock" SortExpression="buildingBlock" />
                <asp:BoundField DataField="buildingName" HeaderText="buildingName" SortExpression="buildingName" />
                <asp:BoundField DataField="streetNumber" HeaderText="streetNumber" SortExpression="streetNumber" />
                <asp:BoundField DataField="streetName" HeaderText="streetName" SortExpression="streetName" />
                <asp:BoundField DataField="district" HeaderText="district" SortExpression="district" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="amountSold" HeaderText="amountSold" SortExpression="amountSold" />
                <asp:BoundField DataField="itemsSold" HeaderText="itemsSold" SortExpression="itemsSold" />
                <asp:BoundField DataField="amountBought" HeaderText="amountBought" SortExpression="amountBought" />
                <asp:BoundField DataField="itemsBought" HeaderText="itemsBought" SortExpression="itemsBought" />
            </Columns>
        </asp:GridView>
    </div>
   
</body>
</html>

</asp:Content>
