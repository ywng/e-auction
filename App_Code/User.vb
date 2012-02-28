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

Namespace eAuctionLib
    '
    ' Coding for user related operation
    '
    Public Class User

        Public Shared _dbConn As OleDbConnection


        Private _userName As String
        Private _password As String
        Private _title As String
        Private _firstName As String
        Private _lastName As String
        '  Private _contactNo As String
        Private _email As String
        '  private string _fax;

        Public Sub New()
            _userName = ""
            _password = ""
            _title = ""
            _firstName = ""
            _lastName = ""

        End Sub


        Public Function addUser(ByVal userId As String, ByVal passwd As String, ByVal title As String, ByVal firstName As String,
                                ByVal lastName As String, ByVal mobilePhone As String, ByVal homePhone As String, ByVal officePhone As String,
                                ByVal email As String, ByVal fax As String, ByVal flat As String, ByVal floor As String, ByVal tower As String,
                                ByVal building As String, ByVal street As String, ByVal streetNo As String, ByVal district As String, ByVal city As String, ByVal country As String) As Boolean
        
            _dbConn = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath(".\\App_Data\\EauctionDb.accdb") + ";Persist Security Info=True")
            Dim commString1 As String = "INSERT INTO [CustomerAuthentication] ([customerId], [password],[isSuspended]) VALUES ('" +
                               userId + "','" + passwd + "','0')"
            Dim dbCommand1 As OleDbCommand = New OleDbCommand(commString1, _dbConn)

            Dim commString2 As String = "INSERT INTO [CustomerProfile] ([customerId], [firstName],[lastName], [homePhone], [officePhone], [mobilePhone],[email],[buildingFlat],[buildingFloor],[buildingBlock],[buildingName]" +
                ",[streetNumber],[streetName],[district],[city],[title]) VALUES ('" + userId + "','" + firstName + "','" + lastName + "','" + homePhone + "','" + officePhone + "','" + mobilePhone +
                "','" + email + "','" + flat + "','" + floor + "','" + tower + "','" + building + "','" + streetNo + "','" + street + "','" + district + "','" + city + "','" + title + "')"
            Dim dbCommand2 As OleDbCommand = New OleDbCommand(commString2, _dbConn)

            _dbConn.Open()
            dbCommand1.ExecuteNonQuery()
            dbCommand2.ExecuteNonQuery()
            _dbConn.Close()



            Return True
        End Function



        Public Function hasUser(ByVal usr As String) As Boolean
            _dbConn = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath(".\\App_Data\\EauctionDb.accdb") + ";Persist Security Info=True")
            Dim commString As String = "SELECT * FROM [CustomerAuthentication] WHERE [customerId] = '" & usr & "'"
            Dim dbCommand As OleDbCommand = New OleDbCommand(commString, _dbConn)

            _dbConn.Open()

            If (dbCommand.ExecuteScalar() Is Nothing) Then
                _dbConn.Close()
                Return False
            Else
                _dbConn.Close()
                Return True
            End If
        End Function


        Public Function hasEmail(ByVal email As String) As Boolean
            _dbConn = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath(".\\App_Data\\EauctionDb.accdb") + ";Persist Security Info=True")
            Dim commString As String = "SELECT * FROM [CustomerProfile] WHERE [email] = '" & email & "'"
            Dim dbCommand As OleDbCommand = New OleDbCommand(commString, _dbConn)

            _dbConn.Open()

            If (dbCommand.ExecuteScalar() Is Nothing) Then
                _dbConn.Close()
                Return False
            Else
                _dbConn.Close()
                Return True
            End If
        End Function


        Public Function checkPasswd(ByVal userId As String, ByVal passwd As String) As Boolean
            _dbConn = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath(".\\App_Data\\EauctionDb.accdb") + ";Persist Security Info=True")
            'passwd need to be encrptyed before passing
            Dim commString As String = "SELECT * FROM [CustomerAuthentication] WHERE [customerId] = '" + userId + "' AND [password] = '" + passwd + "'"
            Dim dbCommand As OleDbCommand = New OleDbCommand(commString, _dbConn)

            _dbConn.Open()
            If Not (dbCommand.ExecuteScalar() Is Nothing) Then
                _dbConn.Close()
                Return True
            Else
                _dbConn.Close()
                Return False
            End If

        End Function

        Public Function addItem(ByVal sellerId As String, ByVal title As String, ByVal category As String, ByVal description As String) As Boolean
            _dbConn = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath(".\\App_Data\\EauctionDb.accdb") + ";Persist Security Info=True")
            Dim commString1 As String = "INSERT INTO [Item] ([sellerId],[title],[category],[description]) VALUES ('" +
                               sellerId + "','" +
                               title + "','" +
                               category + "','" +
                               description +
                               "')"
            Dim dbCommand1 As OleDbCommand = New OleDbCommand(commString1, _dbConn)

            _dbConn.Open()
            dbCommand1.ExecuteNonQuery()
            _dbConn.Close()
            Return True
        End Function




    End Class

End Namespace


