Imports Microsoft.VisualBasic

Imports System
Imports System.Data
Imports System.Configuration
Imports System.Linq
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Xml.Linq
Imports System.Data.OleDb
Imports System.Collections.Generic
Imports System.Security.Cryptography
Imports System.Text
Imports eAuctionLib

Partial Class _Default
    Inherits System.Web.UI.Page


    Protected Sub UserIdLengthValidation(ByVal source As Object, ByVal args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles UsrIdLengValidator.ServerValidate
        ' args.IsValid = (UsrId.Text.Length >= 6) And (UsrId.Text.Length <= 10)
    End Sub

    Protected Sub PasswordLengthValidation(ByVal source As Object, ByVal args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles PasswdLengValidator.ServerValidate
        ' args.IsValid = (UsrId.Text.Length >= 8) And (UsrId.Text.Length <= 15)
    End Sub



    Protected Sub TelFillValidator_ServerValidate(ByVal source As Object, ByVal args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles TelFillValidator.ServerValidate
        args.IsValid = Not ((MobileTel.Text = "") And (HomeTel.Text = "") And (OfficeTel.Text = ""))
    End Sub

 
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub OfficeTel_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles OfficeTel.TextChanged

    End Sub

    Protected Sub UserIdCheck(ByVal sender As Object, ByVal e As System.EventArgs) Handles UserIdCheckBtn.Click
        UsrIdDuplicateValidator.Validate()
    End Sub

    Protected Sub UsrId_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles UsrId.TextChanged
    
    End Sub

    Protected Sub UserIdDuplicateValidator_ServerValidate(ByVal source As Object, ByVal args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles UsrIdDuplicateValidator.ServerValidate
        Dim tempUser As User = New User()
        args.IsValid = Not tempUser.hasUser(UsrId.Text)
    End Sub

    Protected Sub DoneButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Submitbtn.Click
        If Page.IsValid Then
            Dim tempUser As User = New User()
            hasEmailValidator.Validate()
            If tempUser.addUser(UsrId.Text, Passwd.Text, Title.Text, FirstName.Text, LastName.Text, MobileTel.Text,
                                HomeTel.Text, OfficeTel.Text, Email.Text, Fax.Text, Flat.Text, Floor.Text, Tower.Text,
                                Building.Text, Street.Text, StreetNo.Text, District.Text, City.Text, Country.Text) = True Then
                Response.Redirect("default.aspx")
            End If
        End If
    End Sub

    Protected Sub Passwd_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Passwd.TextChanged

    End Sub

    Protected Sub hasEmailValidator_ServerValidate(ByVal source As Object, ByVal args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles hasEmailValidator.ServerValidate
        Dim tempUser As User = New User()
        args.IsValid = Not tempUser.hasEmail(Email.Text)
    End Sub
End Class
