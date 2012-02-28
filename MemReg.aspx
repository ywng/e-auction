<%@ Page Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeFile="MemReg.aspx.vb" Inherits="_Default" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

   <script type="text/javascript">
       function ClientUsrIdLengthValidation(source, arg) {
           var userId = document.getElementById("MainContent_UsrId").value;
           var length = userId.length; 
           arg.IsValid = (length >= 6 && length <= 10);
       }
 </script>
 <script type="text/javascript">
     function PasswordLengthValidation(source, arg) {
         var Passwd = document.getElementById("MainContent_Passwd").value;
         var length = Passwd.length;
         arg.IsValid = (length >= 8 && length <= 15);
     }
 </script>
  
      

  
    <div>
        <span class="style4">
        <strong>User Account</strong><br />
        </span><br />
    
    </div>
    <table class="style1">
        <tr>
            <td class="style6">
                User ID:</td>
            <td class="style7">
                <asp:TextBox ID="UsrId" runat="server" Width="219px" ></asp:TextBox>
                <asp:Button ID="UserIdCheckBtn" runat="server" 
                    Text="validation" OnClick="UserIdCheck" CausesValidation="False" 
                    Height="18px" Width="63px"/>
                <br />
            </td>
            <td class="style8">
                <asp:RequiredFieldValidator ID="UsrIdValidator" runat="server" 
                    ControlToValidate="UsrId" ErrorMessage="Please enter a User ID. " 
                    Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="UsrIdFormatValidator" runat="server" 
                    ControlToValidate="UsrId" 
                    ErrorMessage="User ID should contains only letters and numbers." 
                    ValidationExpression="[a-zA-Z0-9]+" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:CustomValidator ID="UsrIdLengValidator" runat="server" 
                     Display="Dynamic" 
                    ErrorMessage="User ID should be between 6 and 10 characters. " 
                    onservervalidate="UserIdLengthValidation" ControlToValidate="UsrId" 
                    ClientValidationFunction="ClientUsrIdLengthValidation"
                    ForeColor="Red" ></asp:CustomValidator>
                <asp:CustomValidator ID="UsrIdDuplicateValidator" runat="server" 
                    ControlToValidate="UsrId" ErrorMessage="The user ID has been used by others." 
                    ForeColor="Red"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Password:  </td>
            <td class="style9"><asp:TextBox ID="Passwd" runat="server" Width="219px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="PasswordFillValidator" runat="server" 
                    ControlToValidate="Passwd" ErrorMessage="Password setting is required." 
                    Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="PasswdFormatValidator" runat="server" 
                    ControlToValidate="Passwd" Display="Dynamic" 
                    ErrorMessage="The password should contain at least one number, one upper case letter and no punctuation marks. " 
                    ValidationExpression="(\w*[A-Z]+\w*[0-9]+\w*)|(\w*[0-9]+\w*[A-Z]+\w*)" 
                    ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:CustomValidator ID="PasswdLengValidator" runat="server" 
                    ControlToValidate="Passwd" Display="Dynamic" 
                    ErrorMessage="The password should be between 8 and 15 characters." 
                    onservervalidate="PasswordLengthValidation" ForeColor="Red" 
                    ClientValidationFunction="PasswordLengthValidation"
                    ></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Confirm Password:</td>
            <td class="style9">
                <asp:TextBox ID="ConfirmPasswd" runat="server" Width="218px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;<asp:RequiredFieldValidator 
                    ID="ConfirmPasswordFillValidator" runat="server" 
                    ControlToValidate="ConfirmPasswd" ErrorMessage="Please confirm your password. " 
                    Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="ConfirmPasswordConsistentValidator" runat="server" 
                    ControlToCompare="Passwd" ControlToValidate="ConfirmPasswd" 
                    ErrorMessage="The confirm password is different." Display="Dynamic" 
                    ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <div class="style4">
    
        <strong>Profile Details</strong><br />
    </div>
    <table class="style1">
        <tr>
            <td class="style2">
                Name:&nbsp;&nbsp;
            </td>
            <td class="style5">
&nbsp; <asp:DropDownList ID="Title" runat="server">
                    <asp:ListItem>Miss</asp:ListItem>
                    <asp:ListItem>Mr</asp:ListItem>
                    <asp:ListItem>Mrs</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;<asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
&nbsp;&nbsp;(First name)&nbsp;<asp:TextBox ID="LastName" runat="server"></asp:TextBox>
&nbsp;(Last name)</td>
            <td>
                <asp:RequiredFieldValidator ID="FirstNameFillValidator" runat="server" 
                    ControlToValidate="FirstName" ErrorMessage="Please enter your First Name." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="LastNameFillValidator" runat="server" 
                    ControlToValidate="LastName" ErrorMessage="Please enter your Last Name." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Tel:&nbsp;&nbsp;
            </td>
            <td class="style11">
                &nbsp;
                <asp:TextBox ID="MobileTel" runat="server" style="height: 22px; width: 128px"></asp:TextBox>
                <asp:Label ID="MobileTelLbl" runat="server" Text="(Mobile)"></asp:Label>
                &nbsp;<asp:TextBox ID="HomeTel" runat="server"></asp:TextBox>
                <asp:Label ID="HomeTelLbl" runat="server" Text="(Home)"></asp:Label>
                <br />
&nbsp;
                <asp:TextBox ID="OfficeTel" runat="server"></asp:TextBox>
                <asp:Label ID="OfficeTelLbl" runat="server" Text="(Office)"></asp:Label>
            </td>
            <td class="style12">
                <asp:CustomValidator ID="TelFillValidator" runat="server" Display="Dynamic" 
                    
                    ErrorMessage="At least one of the three types of phone numbers should be provided." 
                    ForeColor="Red"></asp:CustomValidator>
                <asp:RegularExpressionValidator ID="MobileTelFormatValidator" runat="server" 
                    ControlToValidate="MobileTel" ErrorMessage="Invalid mobile phone number." 
                    ValidationExpression="\d{8}" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="HomeTelFormatValidator" runat="server" 
                    ControlToValidate="HomeTel" ErrorMessage="Invalid home phone number." 
                    ValidationExpression="\d{8}" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="OfficeTelFormatValidator" runat="server" 
                    ControlToValidate="OfficeTel" ErrorMessage="Invalid office phone number." 
                    ValidationExpression="\d{8}" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Email:&nbsp;&nbsp;
            </td>
            <td class="style5">
                &nbsp;
                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="EmailFillValidator" runat="server" 
                    ControlToValidate="Email" ErrorMessage="Please enter an email address." 
                    Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="EmailFormatValidator" runat="server" 
                    ControlToValidate="Email" ErrorMessage="Invalid email address." 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:CustomValidator ID="hasEmailValidator" runat="server" Display="Dynamic" 
                    ErrorMessage="The email address has been registered by others" ForeColor="Red"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Fax:&nbsp;&nbsp;
            </td>
            <td class="style5">
                &nbsp;
                <asp:TextBox ID="Fax" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="FaxFormatValidator" runat="server" 
                    ErrorMessage="Please enter a valid fax number." 
                    ValidationExpression="\d{8}" ControlToValidate="Fax" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p class="style4">
        <strong>Mailing
        Address
    </strong>
    </p>
    <table>
        <tr>
            <td class="style2">
                Flat/Suite
            </td>
            <td class="style3">
                &nbsp;
                <asp:TextBox ID="Flat" runat="server" Width="48px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Floor
            </td>
            <td class="style3">
                &nbsp;
                <asp:TextBox ID="Floor" runat="server" Width="48px"></asp:TextBox>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Tower
            </td>
            <td class="style3">
                &nbsp;
                <asp:TextBox ID="Tower" runat="server" Width="45px"></asp:TextBox>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Building
                Name</td>
            <td class="style3">
                &nbsp;
                <asp:TextBox ID="Building" runat="server" Width="280px"></asp:TextBox>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Street
            </td>
            <td class="style3">
                &nbsp;
                <asp:TextBox ID="Street" runat="server" Width="280px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="StreetFillValidator" runat="server" 
                    ControlToValidate="Street" ErrorMessage="Please enter the street name." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Street No.
            </td>
            <td class="style3">
                &nbsp;
                <asp:TextBox ID="StreetNo" runat="server" Width="45px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="StreetNoFillValidator" runat="server" 
                    ControlToValidate="StreetNo" 
                    ErrorMessage="Please enter the street number." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                District
            </td>
            <td class="style3">
                &nbsp;
                <asp:TextBox ID="District" runat="server" Width="220px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="DistrictFillValidator" runat="server" 
                    ControlToValidate="District" 
                    ErrorMessage="Please enter the district." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                City
            </td>
            <td class="style3">
                &nbsp;
                <asp:TextBox ID="City" runat="server" Width="220px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Country
            </td>
            <td class="style3">
                &nbsp;
                <asp:TextBox ID="Country" runat="server" Width="220px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <asp:Panel ID="CreditCardPanel" runat="server">
    </asp:Panel>
    <p style="text-align: center">
&nbsp;
        <asp:Button ID="Submitbtn" runat="server" Text="Submit" 
            onclick="DoneButton_Click" />
    </p>
  

</asp:Content>