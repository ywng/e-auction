<%@ Page Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="_Default" %>



<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div align="center" style="height: 302px; width: 509px">
    <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" 
        BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
        CreateUserText="Register " CreateUserUrl="~/MemReg.aspx" 
        DestinationPageUrl="~/default.aspx" Font-Names="Verdana" Font-Size="0.8em" 
        ForeColor="#333333" RememberMeSet="True" Height="213px" Width="359px">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
            ForeColor="White" />
    </asp:Login>
    </div>
</asp:Content>