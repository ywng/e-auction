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

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Login1_Authenticate(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.AuthenticateEventArgs) Handles Login1.Authenticate
        Dim tempUser As User = New User()
        If tempUser.checkPasswd(Login1.UserName, Login1.Password) Then
            FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet)
        End If
    End Sub
End Class
