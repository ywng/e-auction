<%@ Control Language="VB" AutoEventWireup="false" CodeFile="DateTextbox.ascx.vb" Inherits="WebUserControl" %>
<asp:TextBox ID="tbDate" runat="server"></asp:TextBox>
<asp:Button ID="btToggleCalendar" runat="server" Text="Show Calendar" 
    UseSubmitBehavior="False" />
<asp:Calendar ID="calendar" runat="server" Visible="False"></asp:Calendar>
<p>
    &nbsp;</p>

